/*
 * SpurtCommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 PICCOSOFT
 * Author piccosoft <support@spurtcommerce.com>
 * Licensed under the MIT license.
 */
export class CustomerFormResponseModel {
    public customerGroupId: number;
    public username: string;
    public email: string;
    public mobileNumber: string;
    public password: string;
    public confirmPassword: string;
    public avatar: string;
    public newsletter: number;
    public mailStatus: number;
    public status: number;
    public customerId: number;
    public avatarPath: string;
    public createdDate: string;
    public deleteFlag: number;
    public firstName: string;
    public isActive: number;

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
   

    constructor(customerresponsemodel: any) {
        this.customerGroupId = customerresponsemodel.customerGroupId || 0;
        this.username = customerresponsemodel.username || '';
        this.email = customerresponsemodel.email || '';
        this.mobileNumber = customerresponsemodel.mobileNumber || 0;
        this.password = customerresponsemodel.password || '';
        this.confirmPassword = customerresponsemodel.confirmPassword || '';
        this.avatar = customerresponsemodel.avatar || '';
        this.newsletter = customerresponsemodel.newsletter || 0;
        this.mailStatus = customerresponsemodel.mailStatus || 0;
        this.status = customerresponsemodel.status || 0;
        this.customerId = customerresponsemodel.id || 0;
        this.avatarPath = customerresponsemodel.avatarPath || '';
        this.createdDate = customerresponsemodel.createdDate || '';
        this.deleteFlag = customerresponsemodel.deleteFlag || 0;        
        this.isActive = customerresponsemodel.isActive || 0;
        this.firstName = customerresponsemodel.firstName || '';
        this.phone = customerresponsemodel.phone || '';
        this.address = customerresponsemodel.address || '';
        this.address_numero = customerresponsemodel.address_numero || '';
        this.zoneId = customerresponsemodel.zoneId || '';
        this.local = customerresponsemodel.local || '';
        this.tipo_cadastro = customerresponsemodel.tipo_cadastro || '';
        this.cnpj_cpf = customerresponsemodel.cnpj_cpf || '';
        this.inscr_estad_rg = customerresponsemodel.inscr_estad_rg || '';
        this.address_complem = customerresponsemodel.address_complem || '';
        this.contato_resp = customerresponsemodel.contato_resp || '';
        this.email_pre_impres = customerresponsemodel.email_pre_impres || '';
        this.email_financeiro = customerresponsemodel.email_financeiro || '';
        this.website = customerresponsemodel.website || '';
        this.bairro = customerresponsemodel.bairro || '';
    }
}
