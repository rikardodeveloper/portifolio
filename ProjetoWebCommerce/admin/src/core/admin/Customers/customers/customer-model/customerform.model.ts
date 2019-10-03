/*
 * SpurtCommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 PICCOSOFT
 * Author piccosoft <support@spurtcommerce.com>
 * Licensed under the MIT license.
 */
export class CustomerForm {

    public customerGroupId: number;
    public username: string;
    public email: string;
    public mobileNumber: number;
    public password: string;
    public confirmPassword: string;
    public avatar: string;
    public newsletter: number;
    public mailStatus: number;
    public status: number;
    public customerId: string;

    public phone: number;
    public address: string;
    public address_numero: number;            
    public zoneId: number;        
    public local: string;    
    public tipo_cadastro: string;    
    public cnpj_cpf: string;    
    public inscr_estad_rg: string;    
    public address_complem: string;    
    public contato_resp: string;    
    public email_pre_impres: string;    
    public email_financeiro: string;    
    public website: string;    
    public bairro: string;


    constructor(customerform: any) {
        this.customerGroupId = customerform.customerGroupId || '';
        this.username = customerform.username || '';
        this.email = customerform.email || '';
        this.mobileNumber = customerform.mobileNumber || 0;
        this.password = customerform.password || '';
        this.confirmPassword = customerform.confirmPassword || '';
        this.avatar = customerform.avatar || '';
        this.newsletter = customerform.newsletter || '';
        this.mailStatus = customerform.mailStatus || 0;
        this.status = customerform.status || 0;
        if (customerform.id) {
            this.customerId = customerform.id || 0;
        }

        this.phone = customerform.phone || '';
        this.address = customerform.address || '';
        this.address_numero = customerform.address_numero || '';
        this.zoneId = customerform.zoneId || '';
        this.local = customerform.local || '';
        this.tipo_cadastro = customerform.tipo_cadastro || '';
        this.cnpj_cpf = customerform.cnpj_cpf || '';
        this.inscr_estad_rg = customerform.inscr_estad_rg || '';
        this.address_complem = customerform.address_complem || '';
        this.contato_resp = customerform.contato_resp || '';
        this.email_pre_impres = customerform.email_pre_impres || '';
        this.email_financeiro = customerform.email_financeiro || '';
        this.website = customerform.website || '';
        this.bairro = customerform.bairro || '';
    }
}
