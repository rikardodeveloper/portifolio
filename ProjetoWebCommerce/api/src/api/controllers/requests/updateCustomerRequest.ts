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
import {IsNotEmpty, IsEmail} from 'class-validator';
export class UpdateCustomer {

    @IsNotEmpty()
    public customerGroupId: number;

    @IsNotEmpty()
    public username: string;

    @IsEmail()
    public email: string;

    @IsNotEmpty()
    public mobileNumber: number;

    public password: string;

    public confirmPassword: string;

    public avatar: string;

    public newsletter: number;

    @IsNotEmpty()
    public mailStatus: number;

    public status: number;
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
}
