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
import {IsNotEmpty, IsEmail, MinLength, IsAlphanumeric} from 'class-validator';
export class CreateCustomer {

    @IsNotEmpty()
    public customerGroupId: number;

    @IsNotEmpty()
    public username: string;

    @IsEmail()
    public email: string;

    @IsNotEmpty()
    public mobileNumber: number;

    @IsNotEmpty()
    @IsAlphanumeric()
    @MinLength(5, {
        message: 'password is minimum 5 character',
    })
    public password: string;

    @IsNotEmpty()
    public confirmPassword: string;

    public avatar: string;

    public newsletter: number;

    @IsNotEmpty()
    public mailStatus: number;

    @IsNotEmpty()
    public status: number;

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
