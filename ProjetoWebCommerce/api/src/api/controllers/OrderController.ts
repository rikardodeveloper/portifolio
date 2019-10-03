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
import { Get, JsonController, Authorized, QueryParam, Res, Req, Post, Body } from 'routing-controllers';
import { OrderService } from '../services/OrderService';
import { CustomerService } from '../services/CustomerService';
import { UpdateOrderChangeStatus } from './requests/UpdateOrderChangeStatus';
import { OrderLogService } from '../services/OrderLogService';
import { OrderProductService } from '../services/OrderProductService';
import { ProductService } from '../services/ProductService';
import { OrderStatusService } from '../services/orderStatusService';
import { ProductSpecialService } from '../services/ProductSpecialService';
import { ProductDiscountService } from '../services/ProductDiscountService';
import { ProductImageService } from '../services/ProductImageService';
import * as path from 'path';
import { Response } from 'express';
import { EmailTemplateService } from '../services/emailTemplateService';
import { MAILService } from '../../auth/mail.services';
import moment from 'moment';

@JsonController('/order')
export class OrderController {
    constructor(
        private orderService: OrderService,
        private customerService: CustomerService,
        private productService: ProductService,
        private orderLogService: OrderLogService,
        private orderProductService: OrderProductService,
        private productDiscountService: ProductDiscountService,
        private orderStatusService: OrderStatusService,
        private productSpecialService: ProductSpecialService,
        private emailTemplateService: EmailTemplateService,
        private productImageService: ProductImageService) {
    }

    // order List API
    /**
     * @api {get} /api/order/orderlist Order List API
     * @apiGroup Order
     * @apiHeader {String} Authorization
     * @apiParam (Request body) {Number} limit limit
     * @apiParam (Request body) {Number} offset offset
     * @apiParam (Request body) {Number} orderId search by orderId
     * @apiParam (Request body) {String} orderStatusId search by orderStatusId
     * @apiParam (Request body) {String} customerName search by customerName
     * @apiParam (Request body) {Number} totalAmount search by totalAmount
     * @apiParam (Request body) {Number} dateAdded search by dateAdded
     * @apiParam (Request body) {Number} count count should be number or boolean
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Successfully get order list",
     *      "data":{
     *      "orderId" : "",
     *      "orderStatusId" : "",
     *      "customerName" : "",
     *      "totalAmount" : "",
     *      "dateAdded" : "",
     *      "dateModified" : "",
     *      "status" : "",
     *      }
     *      "status": "1"
     * }
     * @apiSampleRequest /api/order/orderlist
     * @apiErrorExample {json} order error
     * HTTP/1.1 500 Internal Server Error
     */
    @Get('/orderlist')
    @Authorized()
    public async orderList(
        @QueryParam('limit') limit: number,
        @QueryParam('offset') offset: number,
        @QueryParam('orderId') orderId: string,
        @QueryParam('orderStatusId') orderStatusId: string,
        @QueryParam('customerName') customerName: string,
        @QueryParam('totalAmount') totalAmount: string,
        @QueryParam('dateAdded') dateAdded: string,
        @QueryParam('pago') pago: string,
        @QueryParam('count') count: number | boolean,
        @Res() response: any): Promise<any> {
        const search = [
            {
                name: 'orderPrefixId',
                op: 'like',
                value: orderId,
            },
            {
                name: 'orderStatusId',
                op: 'like',
                value: orderStatusId,
            },
            {
                name: 'shippingFirstname',
                op: 'like',
                value: customerName,
            },
            {
                name: 'total',
                op: 'like',
                value: totalAmount,
            },
            {
                name: 'createdDate',
                op: 'like',
                value: dateAdded,
            },
            // {
            //     name: 'pago',
            //     op: 'like',
            //     value: pago,
            // },

        ];
        const WhereConditions = [];
        const orderList = await this.orderService.list(limit, offset, 0, search, WhereConditions, 0, count);
        if (count) {
            const Response1: any = {
                status: 1,
                message: 'Successfully got count.',
                data: orderList,
            };

            return response.status(200).send(Response1);
        }
        const orderStatus = orderList.map(async (value: any) => {
            // OrderList API

            const status = await this.orderStatusService.findOne({
                where: { orderStatusId: value.orderStatusId },
                select: ['orderStatusId', 'name', 'colorCode'],
            });
            const temp: any = value;
            temp.orderStatus = status;
            return temp;

        });
        const results = await Promise.all(orderStatus);

        const successResponse: any = {
            status: 1,
            message: 'Successfully got the complete order list.',
            data: results,
        };
        return response.status(200).send(successResponse);

    }

    //  Order Detail API
    /**
     * @api {get} /api/order/order-detail  Order Detail API
     * @apiGroup Order
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
     * @apiSampleRequest /api/order/order-detail
     * @apiErrorExample {json} Order Detail error
     * HTTP/1.1 500 Internal Server Error
     */
    // Order Detail Function
    @Get('/order-detail')
    @Authorized()
    public async orderDetail(@QueryParam('orderId') orderid: number, @Req() request: any, @Res() response: any): Promise<any> {
        const orderData = await this.orderService.find({
            where: { orderId: orderid }, select: [
                'orderId',
                'orderStatusId',
                'telephone',
                'invoiceNo',
                'invoicePrefix',
                'orderPrefixId',
                'shippingFirstname',
                'shippingLastname',
                'shippingCompany',
                'shippingAddress1',
                'shippingAddress2',
                'shippingCity',
                'shippingZone',
                'shippingPostcode',
                'shippingCountry',
                'shippingAddressFormat',
                'paymentFirstname',
                'paymentLastname',
                'paymentCompany',
                'paymentAddress1',
                'paymentAddress2',
                'paymentCity',
                'paymentPostcode',
                'paymentCountry',
                'paymentZone',
                'paymentAddressFormat',
                'total',
                'customerId',
                'createdDate',
                'faturado',
                'pago',
                'reenviado',
                'mobile',
                'contato',
                'previsao',
            ],
        });
        const promises = orderData.map(async (result: any) => {
            const product = await this.orderProductService.find({
                where: { orderId: orderid }, select: [
                    'orderProductId',
                    'orderId',
                    'productId',
                    'name',
                    'model',
                    'quantity',
                    'total',
                    'productPrice',
                    'titulo',
                    'tamanho',
                    'midia',
                    'frente_verso',
                    'tipo_pagto',
                    'tipo_entrega',
                    'nome_arquivo',
                    'observacao',
                    'super_a3',
                    'fecham_arquivo',
                    'ajuste_cor',
                ],
            }).then((val) => {
                console.log(val);
                const productVal = val.map(async (value: any) => {
                    const productDetail = await this.productService.findOne({
                        where: { productId: value.productId },
                        select: [
                            'name',
                            'quantity',
                            'minimumQuantity',
                            'image',
                            'imagePath',
                            'shipping',
                            'price',
                            'dateAvailable',
                            'amount',
                            'rating',
                            'discount',
                            'isActive',
                        ],
                    });
                    const image = await this.productImageService.findOne({
                        select: ['image', 'containerName'],
                        where: { productId: value.productId, defaultImage: 1 },
                    });
                    // const orderOption = await this.orderOptionService.find({where: {orderProductId: value.orderProductId},
                    //     select: ['name', 'value', 'type', 'orderOptionId', 'orderProductId']});
                    // const rating = await this.productRatingService.findOne({select: ['rating', 'review'], where: {customerId : result.customerId, orderProductId : value.orderProductId, productId: value.productId}});
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
                    // tempVal.orderOptions = orderOption;
                    // if (rating !== undefined) {
                    //     tempVal.rating = rating.rating;
                    //     tempVal.review = rating.review;
                    // } else {
                    //     tempVal.rating = 0;
                    //     tempVal.review = '';
                    // }
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
            const customer = await this.customerService.findOne({ where: { id: result.customerId }, select: ['firstName', 'lastName', 'username', 'mobileNumber', 'email', 'city', 'address', 'pincode', 'countryId', 'zoneId'] });
            console.log(customer);
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

    // sales List API
    /**
     * @api {get} /api/order/saleslist Sales List API
     * @apiGroup Order
     * @apiHeader {String} Authorization
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "status": "1"
     *      "message": "Successfully get sales count list",
     *      "data":{
     *      }
     * }
     * @apiSampleRequest /api/order/saleslist
     * @apiErrorExample {json} sales error
     * HTTP/1.1 500 Internal Server Error
     */
    @Get('/saleslist')
    @Authorized()
    public async salesList(@Res() response: any): Promise<any> {

        const orderList = await this.orderService.salesList();
        console.log(orderList);
        const promises = orderList.map(async (result: any) => {
            const monthNames = ['', 'January', 'February', 'March', 'April', 'May', 'June',
                'July', 'August', 'September', 'October', 'November', 'December',
            ];
            const temp: any = result;
            temp.monthYear = monthNames[result.month] + '-' + result.year;
            return temp;
        });
        const finalResult = await Promise.all(promises);
        const successResponse: any = {
            status: 1,
            message: 'Successfully get sales count List',
            data: finalResult,
        };
        return response.status(200).send(successResponse);

    }

    // total order amount API
    /**
     * @api {get} /api/order/total-order-amount total Order Amount API
     * @apiGroup Order
     * @apiHeader {String} Authorization
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "status": "1"
     *      "message": "Successfully get total order amount",
     *      "data":{
     *      "count" : "",
     *      }
     * }
     * @apiSampleRequest /api/order/total-order-amount
     * @apiErrorExample {json} order error
     * HTTP/1.1 500 Internal Server Error
     */
    @Get('/total-order-amount')
    @Authorized()
    public async totalOrderAmount(@Res() response: any): Promise<any> {
        let total = 0;
        const order = await this.orderService.findAll();
        let n = 0;
        for (n; n < order.length; n++) {
            total += +order[n].total;
        }
        if (order) {
            const successResponse: any = {
                status: 1,
                message: 'Successfully get total order Amount',
                data: total,
            };

            return response.status(200).send(successResponse);
        } else {
            const errorResponse: any = {
                status: 0,
                message: 'unable to get total order amount',
            };
            return response.status(400).send(errorResponse);
        }
    }

    // today order amount API
    /**
     * @api {get} /api/order/today-order-amount today Order Amount API
     * @apiGroup Order
     * @apiHeader {String} Authorization
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "status": "1"
     *      "message": "Successfully get today order amount",
     *      "data":{
     *      }
     * }
     * @apiSampleRequest /api/order/today-order-amount
     * @apiErrorExample {json} order error
     * HTTP/1.1 500 Internal Server Error
     */
    @Get('/today-order-amount')
    @Authorized()
    public async todayOrderAmount(@Res() response: any): Promise<any> {
        const nowDate = new Date();
        const todaydate = nowDate.getFullYear() + '-' + (nowDate.getMonth() + 1) + '-' + nowDate.getDate();
        console.log(todaydate);
        let total = 0;
        const order = await this.orderService.findAlltodayOrder(todaydate);
        let n = 0;
        for (n; n < order.length; n++) {
            total += +order[n].total;
        }
        if (order) {
            const successResponse: any = {
                status: 1,
                message: 'Successfully get today order Amount',
                data: total,
            };

            return response.status(200).send(successResponse);
        } else {
            const errorResponse: any = {
                status: 0,
                message: 'unable to get today order amount',
            };
            return response.status(400).send(errorResponse);
        }
    }

    // Today order count API
    /**
     * @api {get} /api/order/today-order-count Today OrderCount API
     * @apiGroup Order
     * @apiHeader {String} Authorization
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Successfully get Today order count",
     *      "data":{
     *      }
     *      "status": "1"
     * }
     * @apiSampleRequest /api/order/today-order-count
     * @apiErrorExample {json} order error
     * HTTP/1.1 500 Internal Server Error
     */
    @Get('/today-order-count')
    @Authorized()
    public async orderCount(@Res() response: any): Promise<any> {

        const nowDate = new Date();
        const todaydate = nowDate.getFullYear() + '-' + (nowDate.getMonth() + 1) + '-' + nowDate.getDate();

        const orderCount = await this.orderService.findAllTodayOrderCount(todaydate);
        const successResponse: any = {
            status: 1,
            message: 'Successfully get Today order count',
            data: orderCount,
        };
        return response.status(200).send(successResponse);

    }

    @Post('/download-arquivo')
    @Authorized()
    public async downloadFile(@Res() res: Response, @Req() req: any): Promise<any> {
        console.log('CHEGOUU');

        const directoryPath = path.join(process.cwd(), 'uploads/servicos/' + req.body.idOrder);
        const fullPath = path.join(directoryPath, req.body.filename);

        console.log('File: ', fullPath);

        try {
            await new Promise((resolve, reject) => {
                res.sendFile(fullPath, (err: any) => {
                    if (err) {
                        reject(err);
                    }
                    resolve();
                });
            });
        } catch (error) {
            console.log(error);
            throw new Error(error);
        }

        return;
    }
    // Change order Status API
    /**
     * @api {post} /api/order/order-change-status   Change Order Status API
     * @apiGroup Order
     * @apiHeader {String} Authorization
     * @apiParam (Request body) {Number} orderId Order Id
     * @apiParam (Request body) {Number} orderStatusId order Status Id
     * @apiParamExample {json} Input
     * {
     *   "orderDetails" : "",
     * }
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Successfully updated order change status.",
     *      "status": "1"
     * }
     * @apiSampleRequest /api/order/order-change-status
     * @apiErrorExample {json} order error
     * HTTP/1.1 500 Internal Server Error
     */
    @Post('/order-change-status')
    @Authorized()
    public async orderChangeStatus(@Body({ validate: true }) orderChangeStatus: UpdateOrderChangeStatus, @Res() response: any): Promise<any> {
        console.log('CHAANGEE');
        console.log(orderChangeStatus);
        const updateOrder = await this.orderService.findOrder(orderChangeStatus.orderId);
        if (!updateOrder) {
            const errorResponse: any = {
                status: 0,
                message: 'Id do pedido é inválido',
            };
            return response.status(400).send(errorResponse);
        }

        await this.orderLogService.create(updateOrder);
        console.log(updateOrder);

        let aux_reenviado;
        if (orderChangeStatus.reenviado === true) {
            aux_reenviado = 'Sim';
        } else {
            aux_reenviado = 'Não';
        }

        let aux_faturado;
        if (orderChangeStatus.faturado === true) {
            aux_faturado = 'Sim';
        } else {
            aux_faturado = 'Não';
        }

        let aux_pago;
        if (orderChangeStatus.pago === true) {
            aux_pago = 'Sim';
        } else {
            aux_pago = 'Não';
        }

        updateOrder.orderStatusId = orderChangeStatus.orderStatusId;
        updateOrder.reenviado = aux_reenviado;
        updateOrder.faturado = aux_faturado;
        updateOrder.pago = aux_pago;
        updateOrder.total = orderChangeStatus.total;
        updateOrder.previsao = orderChangeStatus.previsao;

        const OrderProduct = await this.orderProductService.find({
            where: { orderId: orderChangeStatus.orderId },
        });

        const qtdInt = parseInt(orderChangeStatus.quantity, 10);

        let aux_ajuste_cor = '';
        if (orderChangeStatus.ajuste_cor === true) {
            aux_ajuste_cor = 'Sim';
        } else {
            aux_ajuste_cor = 'Não';
        }

        let aux_super_a3 = '';
        if (orderChangeStatus.super_a3 === true) {
            aux_super_a3 = 'Sim';
        } else {
            aux_super_a3 = 'Não';
        }

        let aux_fecham_arquivo = '';
        if (orderChangeStatus.fecham_arquivo === true) {
            aux_fecham_arquivo = 'Sim';
        } else {
            aux_fecham_arquivo = 'Não';
        }

        let aux_frente_verso = '';
        if (orderChangeStatus.frente_verso === true) {
            aux_frente_verso = 'Sim';
        } else {
            aux_frente_verso = 'Não';
        }

        OrderProduct[0].titulo = orderChangeStatus.titulo;
        OrderProduct[0].quantity = qtdInt;
        OrderProduct[0].tamanho = orderChangeStatus.tamanho;
        OrderProduct[0].midia = orderChangeStatus.midia;
        OrderProduct[0].tipo_pagto = orderChangeStatus.tipo_pagto;
        OrderProduct[0].tipo_entrega = orderChangeStatus.tipo_entrega;
        OrderProduct[0].ajuste_cor = aux_ajuste_cor;
        OrderProduct[0].super_a3 = aux_super_a3;
        OrderProduct[0].fecham_arquivo = aux_fecham_arquivo;
        OrderProduct[0].frente_verso = aux_frente_verso;
        OrderProduct[0].observacao = orderChangeStatus.observacao;
        OrderProduct[0].productPrice = orderChangeStatus.valor;

        const productSave = await this.orderProductService.createData(OrderProduct);
        const orderSave = await this.orderService.create(updateOrder);
        const prefixIdPedido = orderChangeStatus.orderPrefixIdText;
        if (orderChangeStatus.enviar_email === 'Sim') {
            const emailContent = await this.emailTemplateService.findOne(7);
            const aux: any = orderChangeStatus.previsao;
            const aux2 = moment(aux).format('DD/MM/YYYY HH:mm');
            const message = emailContent.content.replace('{name}', orderChangeStatus.cliente_nome).replace('{dataentrega}', aux2).replace('{idpedido}', prefixIdPedido);
            MAILService.customerLoginMail(message, orderChangeStatus.cliente_email, emailContent.subject);
        }

        if (orderChangeStatus.alterou_status === 'Sim') {
            const emailContent = await this.emailTemplateService.findOne(8);
            const message = emailContent.content.replace('{name}', orderChangeStatus.cliente_nome).replace('{status}', orderChangeStatus.orderStatusText).replace('{idpedido}', prefixIdPedido);
            MAILService.customerLoginMail(message, orderChangeStatus.cliente_email, emailContent.subject);
        }

        if (productSave && orderSave) {
            const successResponse: any = {
                status: 1,
                message: 'Pedido atualizado com sucesso',
                data: orderSave,
            };
            return response.status(200).send(successResponse);
        } else {
            const errorResponse: any = {
                status: 0,
                message: 'desbloqueie para poder atualizar',
            };
            return response.status(400).send(errorResponse);
        }
    }
}
