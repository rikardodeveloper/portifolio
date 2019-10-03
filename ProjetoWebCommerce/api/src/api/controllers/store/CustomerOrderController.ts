/*
 * spurtcommerce API
 * version 2.2
 * http://api.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */

import 'reflect-metadata';
import { Post, JsonController, Req, Res, Get, QueryParam, Body, Authorized, UploadedFiles } from 'routing-controllers';
import { classToPlain } from 'class-transformer';
import { CustomerCheckoutRequest } from './requests/customerCheckoutRequest';
import { OrderService } from '../../services/OrderService';
import { OrderProductService } from '../../services/OrderProductService';
import { OrderTotalService } from '../../services/OrderTotalService';
import { Order } from '../../models/Order';
import { OrderProduct } from '../../models/OrderProduct';
import { OrderTotal } from '../../models/OrderTotal';
import { CustomerService } from '../../services/CustomerService';
import { MAILService } from '../../../auth/mail.services';
import { ProductService } from '../../services/ProductService';
import { ProductImageService } from '../../services/ProductImageService';
import { SettingService } from '../../services/SettingService';
import { EmailTemplateService } from '../../services/emailTemplateService';
import { ProductDiscountService } from '../../services/ProductDiscountService';
import { ProductSpecialService } from '../../services/ProductSpecialService';
import { OrderStatusService } from '../../services/orderStatusService';
import { CountryService } from '../../services/countryService';
import * as fs from 'fs';
import * as path from 'path';

@JsonController('/orders')
export class CustomerOrderController {
    constructor(
        private orderService: OrderService,
        private orderProductService: OrderProductService,
        private orderTotalService: OrderTotalService,
        private customerService: CustomerService,
        private productService: ProductService,
        private productImageService: ProductImageService,
        private settingService: SettingService,
        private emailTemplateService: EmailTemplateService,
        private productDiscountService: ProductDiscountService,
        private productSpecialService: ProductSpecialService,
        private orderStatusService: OrderStatusService,
        private countryService: CountryService
    ) {
    }

    @Post('/upload-arquivo')
    @Authorized('customer')
    public async saveFile(@UploadedFiles('file') file: any[], @Res() response: any, @Req() request: any): Promise<any> {
        const directoryPath = path.join(process.cwd(), 'uploads/servicos/');
        let auxId = 0;
        const whereConditions = 0;
        const select = ['orderId', 'customerId', 'currencyId', 'orderStatus', 'total', 'createdDate', 'orderPrefixId'];
        const relation = ['orderStatus'];
        const OrderData = await this.orderService.list(1000000, 0, select, undefined, whereConditions, relation, false);
        OrderData.forEach(element => {
            if (element.orderId > auxId) {
                auxId = element.orderId;
            }
        });
        auxId = auxId + 1;
        await new Promise((resolve, reject) => {
            fs.mkdir(directoryPath + auxId, { recursive: true }, err => err ? reject(err) : resolve());
        });

        file.forEach(files => {
            fs.writeFile(directoryPath + auxId + '/' + files.originalname, files.buffer, (err) => {
                console.log('Update Arquivo ok');
            });
        });

        return response.status(200).send('OK');
    }
    // @Post('/upload-arquivo')
    // @Authorized('customer')
    // public async saveFile(@UploadedFiles('file') file: any[], @Res() response: any, @Req() request: any): Promise<any> {
    //     const directoryPath = path.join(process.cwd(), 'uploads/servicos/');
    //     let auxId = 0;
    //     let auxIdUsuario;
    //     let auxIdUsuario2;
    //     file.forEach(files => {
    //         console.log('FILEESASSAA');
    //         console.log(files.originalname);
    //         auxIdUsuario = files.originalname;
    //         auxIdUsuario2 = auxIdUsuario.split('_')[0];
    //         //console.log(auxIdUsuario2);
    //     });
    //     const search = [
    //         {
    //             name: 'customerId',
    //             op: 'where',
    //             value: parseInt(auxIdUsuario2),
    //         },
    //     ];
    //     const whereConditions = 0;
    //     const select = ['orderId', 'customerId', 'currencyId', 'orderStatus', 'total', 'createdDate', 'orderPrefixId'];
    //     const relation = ['orderStatus'];
    //     const OrderData = await this.orderService.list(1000000, 0, select, search, whereConditions, relation, false);
    //     OrderData.forEach(element => {
    //         if(element.orderId > auxId){
    //             auxId = element.orderId;
    //         }
    //     });
    //     auxId = auxId + 1;

    //     await new Promise((resolve, reject) => {
    //         fs.mkdir(directoryPath + auxId, { recursive: true }, err => err ? reject(err) : resolve())
    //     })

    //     file.forEach(files => {
    //         fs.writeFile(directoryPath + auxId + '/' + files.originalname, files.buffer, (err) => {
    //             console.log('Update Arquivo ok');
    //         });
    //     });
    //     // for (let index = 0; index < file.length; index++) {
    //     //     fs.writeFile(directoryPath + file[index].originalname, file[index].buffer, (err) => {
    //     //         console.log('Update Arquivo ok');
    //     //     });
    //     // }
    //     return response.status(200).send('OK');
    // }

    // @Post('/download-arquivo')
    // @Authorized('customer')
    // public async downloadFile(@Res() res: Response, @Req() req: any)  {
    //     console.log('CHEGOUU');
    //     const directoryPath = path.join(process.cwd(), 'uploads/servicos');
    //     const fullPath = path.join(directoryPath,req.body.filename);

    //     console.log('File: ', fullPath);

    //     try {
    //         await new Promise((resolve, reject) => {
    //             res.sendFile(fullPath, (err: any) => {
    //                 if (err) reject(err);
    //                 resolve();
    //             });
    //         });
    //     } catch (error) {
    //         console.log(error);
    //         throw new Error(error);
    //     }

    //     return;

    // }

    // customer checkout RICARDO
    /**
     * @api {post} /api/orders/customer-checkout Checkout
     * @apiGroup Store order
     * @apiHeader {String} Authorization
     * @apiParam (Request body) {String} productDetail Product Details
     * @apiParam (Request body) {String} shippingFirstName Shipping First name
     * @apiParam (Request body) {String} shippingLastName Shipping Last Name
     * @apiParam (Request body) {String} shippingCompany Shipping Company
     * @apiParam (Request body) {String} shippingAddress_1 Shipping Address 1
     * @apiParam (Request body) {String} shippingAddress_2 Shipping Address 2
     * @apiParam (Request body) {String} shippingCity Shipping City
     * @apiParam (Request body) {Number} shippingPostCode Shipping PostCode
     * @apiParam (Request body) {String} shippingCountry Shipping Country
     * @apiParam (Request body) {String} shippingZone Shipping Zone
     * @apiParam (Request body) {String} shippingAddressFormat Shipping Address Format
     * @apiparam (Request body) {Number} phoneNumber Customer Phone Number
     * @apiparam (Request body) {String} emailId Customer Email Id
     * @apiParamExample {json} Input
     * {
     *      "productDetail" :[
     *      {
     *      "productId" : "",
     *      "quantity" : "",
     *      "price" : "",
     *      "model" : "",
     *      "name" : "",
     *      "shippingFirstName" : "",
     *      "shippingLastName" : "",
     *      "shippingCompany" : "",
     *      "shippingAddress_1" : "",
     *      "shippingAddress_2" : "",
     *      "shippingCity" : "",
     *      "shippingPostCode" : "",
     *      "shippingCountry" : "",
     *      "shippingZone" : "",
     *      "shippingAddressFormat" : "",
     *      "phoneNumber" : "",
     *      "emailId" : "",
     * }
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Check Out the product successfully And Send order detail in your mail ..!!",
     *      "status": "1"
     * }
     * @apiSampleRequest /api/orders/customer-checkout
     * @apiErrorExample {json} Checkout error
     * HTTP/1.1 500 Internal Server Error
     */
    // Customer Checkout Function
    @Post('/customer-checkout')
    @Authorized('customer')
    public async customerCheckout(@Body({ validate: true }) checkoutParam: CustomerCheckoutRequest, @Res() response: any, @Req() request: any): Promise<any> {
        console.log('TETETETET');
        console.log(checkoutParam);
        const newOrder: any = new Order();
        const newOrderTotal = new OrderTotal();
        let orderProduct = [];
        let i;
        let n;
        let totalProductAmount;
        let totalAmount = 0;
        const productDetailData = [];
        newOrder.customerId = request.user.id;
        newOrder.email = checkoutParam.emailId;
        newOrder.telephone = checkoutParam.phoneNumber;
        newOrder.shippingFirstname = checkoutParam.shippingFirstName;
        newOrder.shippingLastname = checkoutParam.shippingLastName;
        newOrder.shippingAddress1 = checkoutParam.shippingAddress_1;
        newOrder.shippingAddress2 = checkoutParam.shippingAddress_2;
        newOrder.shippingCompany = checkoutParam.shippingCompany;
        newOrder.shippingCity = checkoutParam.shippingCity;
        newOrder.shippingCountry = checkoutParam.shippingCountry;
        newOrder.shippingZone = checkoutParam.shippingZone;
        newOrder.shippingPostcode = checkoutParam.shippingPostCode;
        newOrder.shippingAddressFormat = checkoutParam.shippingAddressFormat;
        newOrder.paymentFirstname = checkoutParam.shippingFirstName;
        newOrder.paymentLastname = checkoutParam.shippingLastName;
        newOrder.paymentAddress1 = checkoutParam.shippingAddress_1;
        newOrder.paymentAddress2 = checkoutParam.shippingAddress_2;
        newOrder.paymentCompany = checkoutParam.shippingCompany;
        newOrder.paymentCity = checkoutParam.shippingCity;
        newOrder.paymentCountry = checkoutParam.shippingCountry;
        newOrder.paymentZone = checkoutParam.shippingZone;
        newOrder.paymentPostcode = checkoutParam.shippingPostCode;
        newOrder.contato = checkoutParam.contato;
        newOrder.mobile = checkoutParam.mobile;
        newOrder.faturado = 'Não';
        newOrder.pago = 'Não';
        newOrder.reenviado = 'Não';
        newOrder.isActive = 1;
        const setting = await this.settingService.findOne();
        newOrder.orderStatusId = setting.orderStatus;
        newOrder.invoicePrefix = setting.invoicePrefix;
        newOrder.paymentAddressFormat = checkoutParam.shippingAddressFormat;
        const orderData = await this.orderService.create(newOrder);
        const countryName = await this.countryService.findOne(orderData.shippingCountry);
        orderData.shippingCountry = countryName.name;
        orderProduct = checkoutParam.productDetails;
        console.log('PRECOOOOOO');
        console.log(orderProduct);
        for (i = 0; i < orderProduct.length; i++) {
            const productDetails = new OrderProduct();
            productDetails.productId = orderProduct[i].productId;
            productDetails.name = orderProduct[i].name;
            productDetails.orderId = orderData.orderId;
            productDetails.productPrice = orderProduct[i].price;
            // productDetails.productPrice = orderProduct[i].precoini;
            productDetails.quantity = orderProduct[i].quantity;
            productDetails.titulo = orderProduct[i].titulo;
            productDetails.tamanho = orderProduct[i].tamanho;
            productDetails.midia = orderProduct[i].midia;
            productDetails.frente_verso = orderProduct[i].frente_verso;
            productDetails.super_a3 = orderProduct[i].super_a3;
            productDetails.fecham_arquivo = orderProduct[i].fecham_arquivo;
            productDetails.ajuste_cor = orderProduct[i].ajuste_cor;
            productDetails.tipo_entrega = orderProduct[i].tipo_entrega;
            productDetails.tipo_pagto = orderProduct[i].tipo_pagto;
            productDetails.nome_arquivo = orderProduct[i].nome_arquivo;
            productDetails.observacao = orderProduct[i].observacao;
            productDetails.total = orderProduct[i].total;
            productDetails.model = orderProduct[i].model;
            const productInformatiom = await this.orderProductService.createData(productDetails);
            const productImageData = await this.productService.findOne(productInformatiom.productId);
            const productImageDetail = await this.productImageService.findOne({ where: { productId: productInformatiom.productId } });
            productImageData.productInformatiomData = productInformatiom;
            productImageData.productImage = productImageDetail;
            totalProductAmount = await this.orderProductService.findData(orderProduct[i].productId, orderData.orderId, productInformatiom.orderProductId);
            for (n = 0; n < totalProductAmount.length; n++) {
                totalAmount += +totalProductAmount[n].total;
            }
            productImageData.productOption = [];
            productDetailData.push(productImageData);
        }

        newOrder.total = totalAmount;
        newOrder.invoiceNo = orderData.orderId;
        const nowDate = new Date();
        const orderDate = nowDate.getFullYear() + ('0' + (nowDate.getMonth() + 1)).slice(-2) + ('0' + nowDate.getDate()).slice(-2);
        newOrder.orderPrefixId = setting.invoicePrefix.concat('-' + orderDate + orderData.orderId);
        const resultData = await this.orderService.update(orderData.orderId, newOrder);
        newOrderTotal.orderId = orderData.orderId;
        newOrderTotal.value = totalAmount;
        await this.orderTotalService.createOrderTotalData(newOrderTotal);
        const emailContent = await this.emailTemplateService.findOne(5);
        const adminEmailContent = await this.emailTemplateService.findOne(6);
        const today = ('0' + nowDate.getDate()).slice(-2) + '.' + ('0' + (nowDate.getMonth() + 1)).slice(-2) + '.' + nowDate.getFullYear();
        const customerFirstName = orderData.shippingFirstname;
       // const customerLastName = orderData.shippingLastname;
        const customerName = customerFirstName;
        const adminMessage = adminEmailContent.content.replace('{name}', customerName).replace('{orderId}', orderData.orderId);
        const customerMessage = emailContent.content.replace('{name}', customerName);
        MAILService.adminOrderMail(adminMessage, orderData, adminEmailContent.subject, productDetailData, today);
        const sendMailRes = MAILService.customerOrderMail(customerMessage, orderData, emailContent.subject, productDetailData, today);
        if (sendMailRes) {
            const successResponse: any = {
                status: 1,
                message: 'Você efetuou o check-out com sucesso do produto e os detalhes do pedido são enviados para seu e-mail',
                data: resultData,
            };
            return response.status(200).send(successResponse);
        } else {
            const errorResponse: any = {
                status: 0,
                message: 'O correio do cliente não envia, mas faz o pedido com sucesso',
            };
            return response.status(400).send(errorResponse);
        }
    }

    // Customer Order List API
    /**
     * @api {get} /api/orders/order-list My Order List
     * @apiGroup Store order
     * @apiHeader {String} Authorization
     * @apiParam (Request body) {Number} limit limit
     * @apiParam (Request body) {Number} offset offset
     * @apiParam (Request body) {Number} count count in number or boolean
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Successfully show the Order List..!!",
     *      "status": "1",
     *      "data": {},
     * }
     * @apiSampleRequest /api/orders/order-list
     * @apiErrorExample {json} Order List error
     * HTTP/1.1 500 Internal Server Error
     */
    // Order List Function
    @Get('/order-list')
    @Authorized('customer')
    public async orderList(@QueryParam('limit') limit: number, @QueryParam('offset') offset: number, @QueryParam('count') count: number | boolean, @Req() request: any, @Res() response: any): Promise<any> {
        const search = [
            {
                name: 'customerId',
                op: 'where',
                value: request.user.id,
            },
        ];
        const whereConditions = 0;
        const select = ['orderId', 'customerId', 'currencyId', 'orderStatus', 'total', 'createdDate', 'orderPrefixId'];
        const relation = ['orderStatus'];
        const OrderData = await this.orderService.list(limit, offset, select, search, whereConditions, relation, count);
        if (count) {
            const Response: any = {
                status: 1,
                message: 'Successfully get Count. ',
                data: OrderData,
            };
            return response.status(200).send(Response);
        }
        const promises = OrderData.map(async (results: any) => {
            const Id = results.orderId;
            const countValue = await this.orderProductService.findAndCount({ where: { orderId: Id } });
            results.items = countValue[1];
            return results;
        });
        const result = await Promise.all(promises);
        const successResponse: any = {
            status: 1,
            message: 'Successfully shown the order list. ',
            data: classToPlain(result),
        };
        return response.status(200).send(successResponse);
    }

    // Customer Order Detail API RICARDO
    /**
     * @api {get} /api/orders/order-detail My OrderDetail
     * @apiGroup Store order
     * @apiHeader {String} Authorization
     * @apiParam (Request body) {Number} orderId Order Id
     * @apiParamExample {json} Input
     * {
     *      "orderId" : "",
     * }
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Successfully show the Order Detail..!!",
     *      "status": "1",
     *      "data": {},
     * }
     * @apiSampleRequest /api/orders/order-detail
     * @apiErrorExample {json} Order Detail error
     * HTTP/1.1 500 Internal Server Error
     */
    // Order Detail Function
    @Get('/order-detail')
    @Authorized('customer')
    public async orderDetail(@QueryParam('orderId') orderid: number, @Req() request: any, @Res() response: any): Promise<any> {
        const orderData = await this.orderService.find({
            where: { orderId: orderid, customerId: request.user.id },
            select: ['orderId', 'orderStatusId', 'orderPrefixId', 'telephone', 'shippingFirstname', 'shippingLastname', 'shippingCompany', 'shippingAddress1',
                'shippingAddress2', 'shippingCity', 'shippingZone', 'shippingPostcode', 'shippingCountry', 'shippingAddressFormat',
                'paymentFirstname', 'paymentLastname', 'paymentCompany', 'paymentAddress1', 'paymentAddress2', 'paymentCity',
                'paymentPostcode', 'paymentCountry', 'paymentZone', 'paymentAddressFormat', 'total', 'createdDate'],
        });
        const promises = orderData.map(async (result: any) => {
            const product = await this.orderProductService.find({
                where: { orderId: orderid },
                select: ['orderProductId', 'orderId', 'productId', 'name', 'model', 'quantity', 'total', 'productPrice', 'titulo',
                    'tamanho', 'midia', 'frente_verso', 'super_a3', 'fecham_arquivo', 'ajuste_cor', 'nome_arquivo', 'tipo_entrega', 'tipo_pagto', 'observacao'],
            }).then((val) => {
                console.log(val);
                const productVal = val.map(async (value: any) => {
                    const productDetail = await this.productService.findOne({
                        where: { productId: value.productId },
                        select: ['name', 'quantity', 'minimumQuantity', 'image',
                            'imagePath', 'shipping', 'price', 'dateAvailable', 'amount', 'rating', 'discount', 'isActive'],
                    });
                    const image = await this.productImageService.findOne({
                        select: ['image', 'containerName'],
                        where: { productId: value.productId, defaultImage: 1 },
                    });
                    const tempVal: any = value;
                    const nowDate = new Date();
                    const todaydate = nowDate.getFullYear() + '-' + (nowDate.getMonth() + 1) + '-' + nowDate.getDate();
                    const productSpecial = await this.productSpecialService.findSpecialPrice(value.productId, todaydate);
                    const productDiscount = await this.productDiscountService.findDiscountPrice(value.productId, todaydate);
                    if (productSpecial !== undefined) {
                        tempVal.pricerefer = productSpecial.price;
                        tempVal.flag = 1;
                    } else if (productDiscount !== undefined) {
                        tempVal.pricerefer = productDiscount.price;
                        tempVal.flag = 0;
                    } else {
                        tempVal.pricerefer = '';
                        tempVal.flag = '';
                    }
                    tempVal.productDetail = productDetail;
                    tempVal.productDetail.productImage = image;
                    return tempVal;
                });
                const results = Promise.all(productVal);
                return results;
            });
            const orderStatusData = await this.orderStatusService.findOne({
                where: { orderStatusId: result.orderStatusId },
                select: ['name', 'colorCode'],
            });
            let str = JSON.stringify(orderStatusData);
            str = str.replace(/name/g, 'orderStatusName');
            str = str.replace(/colorCode/g, 'statusColorCode');
            const orderStatus = JSON.parse(str);
            const data: any = result;
            const temp: any = Object.assign({}, data, orderStatus);
            temp.productList = product;
            const customer = await this.customerService.findOne({
                where: { id: request.user.id },
                select: ['firstName', 'lastName', 'username', 'mobileNumber', 'email', 'city', 'address', 'pincode', 'countryId', 'zoneId'],
            });
            temp.customerDetail = customer;
            return temp;
        });
        const resultData = await Promise.all(promises);
        const successResponse: any = {
            status: 1,
            message: 'Successfully shown the order Detail. ',
            data: resultData,
        };
        return response.status(200).send(successResponse);
    }
}
