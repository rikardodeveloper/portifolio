/*
 * spurtcommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */
export class RegisterModel {
    public name: any;
    public password: any;
    public confirmPassword: any;
    public emailId: any;
    public phoneNumber: any;

    public tipo_cadastro: any;
    public cnpj_cpf: any;
    public inscr_estad_rg: any;
    public address: any;
    public address_numero: any;
    public complemento: any;
    public pincode: any;
    public bairro: any;
    public cidade: any;
    public zoneId: any;
    public mobile: any;
    public contato_resp: any;
    public website: any;
    public email_preimpressao: any;
    public email_financeiro: any;
    public country: any;
    
    constructor(registerRequest: any) {
        this.name = registerRequest.name || '';
        this.password = registerRequest.password || '';
        this.confirmPassword = registerRequest.confirmPassword || '';
        this.emailId = registerRequest.email || '';
        this.phoneNumber = registerRequest.phoneNumber || '';
        this.tipo_cadastro = registerRequest.tipo_cadastro || '';
        this.cnpj_cpf = registerRequest.cnpj_cpf || '';
        this.inscr_estad_rg = registerRequest.inscr_estad_rg || '';
        this.address = registerRequest.address || '';
        this.address_numero = registerRequest.address_numero || '';
        this.complemento = registerRequest.complemento || '';
        this.pincode = registerRequest.pincode || '';
        this.bairro = registerRequest.bairro || '';
        this.cidade = registerRequest.cidade || '';
        this.zoneId = registerRequest.zoneId || '';
        this.mobile = registerRequest.mobile || '';
        this.contato_resp = registerRequest.contato_resp || '';
        this.website = registerRequest.website || '';
        this.email_preimpressao = registerRequest.email_preimpressao || '';
        this.email_financeiro = registerRequest.email_financeiro || '';
        this.country = registerRequest.country || '';
    }
}
