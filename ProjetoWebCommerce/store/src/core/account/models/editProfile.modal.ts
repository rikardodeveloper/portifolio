/*
 * spurtcommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */
export class EditProfileModal {
    public firstName: any;
    public lastName: any;
    public password: any;
    public emailId: any;
    public address: any;
    public countryId: any;
    public zoneId: any;
    public pincode: any;
    public phoneNumber: any;
    public image: any;

    public tipo_cadastro: string;
    public cnpj_cpf: string;
    public inscr_estad_rg: string;    
    public address_numero: number;
    public complemento: string;   
    public bairro: string;
    public city: string;    
    public mobile: number;
    public contato_resp: string;
    public website: string;
    public email_pre_impres: string;
    public email_financeiro: string;
    public country: number;

    constructor(editRequest: any) {
        this.firstName = editRequest.firstName || '';
        this.lastName = editRequest.lastName || '';
        this.password = editRequest.password || '';
        this.emailId = editRequest.email || '';
        this.address = editRequest.address || '';
        this.countryId = editRequest.country || '';
        this.zoneId = editRequest.zoneId || '';
        this.pincode = editRequest.pincode || '';
        this.phoneNumber = editRequest.phoneNumber || '';
        this.image = editRequest.image || '';

        this.tipo_cadastro = editRequest.tipo_cadastro || '';
        this.cnpj_cpf = editRequest.cnpj_cpf || '';
        this.inscr_estad_rg = editRequest.inscr_estad_rg || '';
        this.address_numero = editRequest.address_numero || '';
        this.complemento = editRequest.complemento || '';
        this.bairro = editRequest.bairro || '';
        this.city = editRequest.city || '';
        this.mobile = editRequest.mobile || '';
        this.contato_resp = editRequest.contato_resp || '';
        this.website = editRequest.website || '';
        this.email_pre_impres = editRequest.email_pre_impres || '';
        this.email_financeiro = editRequest.email_financeiro || '';
        this.country = editRequest.country || '';
    }
}
