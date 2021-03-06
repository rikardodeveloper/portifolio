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
import {IsNotEmpty, IsEmail, IsOptional, MinLength} from 'class-validator';

export class CustomerEditProfileRequest {
    // @IsString()
    @IsNotEmpty({
        message: 'First name is required',
    })
    public firstName: string;

    public lastName: string;

    @IsOptional()
    @MinLength(5, {
        message: 'Old Password is minimum 5 character',
    })
    @IsNotEmpty()
    public password: string;

    @IsEmail({}, {
        message: 'Please provide username as emailId',
    })
    @IsNotEmpty({
        message: 'Email Id is required',
    })
    public emailId: string;

    @IsOptional()
    @IsNotEmpty()
    public address: string;

    @IsNotEmpty()
    public countryId: number;

    @IsOptional()
    @IsNotEmpty()
    public zoneId: number;

    @IsOptional()
    public pincode: string;

    @IsOptional()
    @IsNotEmpty()
    public phoneNumber: number;

    public image: string;

    public mobile: number;
    public tipo_cadastro: string;
    public cnpj_cpf: string;
    public inscr_estad_rg: string;
    public address_numero: number;
    public complemento: string;
    public bairro: string;
    public city: string;
    public contato_resp: string;
    public website: string;
    public email_pre_impres: string;
    public email_financeiro: string;
    public country_id: number;
    public country: number;
}
