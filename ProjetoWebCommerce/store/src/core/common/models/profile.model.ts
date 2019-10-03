/*
 * spurtcommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */
export class ProfileModel {
    public address: string;
    public avatar: string;
    public avatarPath: string;
    public zoneId: number;
    public countryId: number;
    public createdDate: string;
    public email: string;
    public firstName: string;
    public lastName: string;
    public pincode: string;
    public mobileNumber: string;
    public id: string;
    public lastLogin: string;
    public username: string;

    public tipo_cadastro: string;
    public cnpj_cpf: string;
    public inscr_estad_rg: string;    
    public address_numero: number;
    public complemento: string;   
    public bairro: string;
    public cidade: string; 
    public city:string;   
    public mobile: number;
    public contato_resp: string;
    public website: string;
    public email_pre_impres: string;
    public email_financeiro: string;
    public country: number;

    constructor(bannerRequest: any) {
        this.address = bannerRequest.address || '';
        this.avatar = bannerRequest.avatar || '';
        this.avatarPath = bannerRequest.avatarPath || '';
        this.zoneId = bannerRequest.zoneId || '';
        this.countryId = bannerRequest.countryId || '';
        this.createdDate = bannerRequest.createdDate || '';
        this.email = bannerRequest.email || '';
        this.firstName = bannerRequest.firstName || '';
        this.lastName = bannerRequest.lastName || '';
        this.pincode = bannerRequest.pincode || '';
        this.mobileNumber = bannerRequest.phone || '';
        this.id = bannerRequest.id || '';
        this.lastLogin = bannerRequest.lastLogin || '';
        this.username = bannerRequest.username || '';

        this.tipo_cadastro = bannerRequest.tipo_cadastro || '';
        this.cnpj_cpf = bannerRequest.cnpj_cpf || '';
        this.inscr_estad_rg = bannerRequest.inscr_estad_rg || '';
        this.address_numero = bannerRequest.address_numero || '';
        this.complemento = bannerRequest.address_complem || '';
        this.bairro = bannerRequest.bairro || '';
        this.city = bannerRequest.city || '';
        this.mobile = bannerRequest.mobileNumber || '';
        this.contato_resp = bannerRequest.contato_resp || '';
        this.website = bannerRequest.website || '';
        this.email_pre_impres = bannerRequest.email_pre_impres || '';
        this.email_financeiro = bannerRequest.email_financeiro || '';
        this.country = bannerRequest.country || '';
    }
}
