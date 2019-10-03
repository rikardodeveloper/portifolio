/*
 * spurtcommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */
import { CheckoutOptionsArrayModel } from './checkoutOptionsArray.model';

export class CheckoutProductModel {
    public product: any = [];
    public productOptions: CheckoutOptionsArrayModel;
    public image: any;
    constructor(productRequest: any) {
        //console.log(productRequest);
        //console.log(productRequest[0].arquivo_anexo)
        for (let i = 0; i < productRequest.length; i++) {
            const details: any = {};
            details.productId = productRequest[i].productId || '';
            details.quantity = productRequest[i].productCount || '';
            details.titulo = productRequest[i].titulo || '';
            details.tamanho = productRequest[i].tamanho || '';
            details.midia = productRequest[i].midia || '';
            details.frente_verso = productRequest[i].frente_verso || '';
            details.super_a3 = productRequest[i].super_a3 || '';
            details.fecham_arquivo = productRequest[i].fecham_arquivo || '';
            details.ajuste_cor = productRequest[i].ajuste_cor || '';
            details.nome_arquivo = productRequest[i].nome_arquivo || '';
            details.tipo_entrega = productRequest[i].tipo_entrega || '';
            details.tipo_pagto = productRequest[i].tipo_pagto || '';
            details.arquivo_anexo = productRequest[i].arquivo_anexo || '';
            details.observacao = productRequest[i].observacao || '';
          
            let auxPric: any = productRequest[i].totalAux;
            let auxPricCFloat = parseFloat(auxPric);
            
            //details.price = productRequest[i].price;
            details.price = auxPricCFloat;
            //console.log(details.price)
            details.model = productRequest[i].metaTagTitle || '';
            details.name = productRequest[i].name || '';
            details.total = productRequest[i].total || '';
            this.product.push(details);
            
        }
    }
}

export class CheckoutModel {
    public productDetails: any;
    public shippingFirstName: any;
    public shippingLastName: any;
    public shippingCompany: any;
    public shippingAddress_1: any;
    public shippingAddress_2: any;
    public shippingCity: any;
    public shippingPostCode: any;
    public shippingCountry: any;
    public shippingZone: any;
    public shippingAddressFormat: any;
    public phoneNumber: any;
    public emailId: any;
    public mobile: any;
    public contato: any;

    constructor(checkoutRequest: any) {
        this.shippingFirstName = checkoutRequest.firstName || '';
        this.shippingLastName = 'default' || '';
        this.shippingCompany = 'default' || '';
        this.shippingAddress_1 = checkoutRequest.address || '';
        this.shippingAddress_2 = checkoutRequest.addressLine || '';
        this.shippingCity = checkoutRequest.city || '';
        this.shippingPostCode = checkoutRequest.zip || '';
        this.shippingCountry = checkoutRequest.country || '';
        this.shippingZone = checkoutRequest.state || '';
        this.phoneNumber = checkoutRequest.phone || '';
        this.shippingAddressFormat = '';
        this.emailId = checkoutRequest.email || '';
        this.mobile = checkoutRequest.mobile || '';
        this.contato = checkoutRequest.contato || '';
        this.productDetails = new CheckoutProductModel(checkoutRequest.productDetail);

    }
}


