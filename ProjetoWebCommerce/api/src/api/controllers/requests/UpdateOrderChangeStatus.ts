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
import { IsNotEmpty } from 'class-validator';

export class UpdateOrderChangeStatus {

    @IsNotEmpty()
    public orderId: number;

    @IsNotEmpty()
    public orderStatusId: number;

    public titulo: string;
    public quantity: string;
    public tamanho: string;
    public midia: string;
    public tipo_pagto: string;
    public tipo_entrega: string;
    public ajuste_cor: boolean;
    public super_a3: boolean;
    public fecham_arquivo: boolean;
    public frente_verso: boolean;
    public observacao: string;

    public reenviado: boolean;
    public pago: boolean;
    public faturado: boolean;

    public valor: number;
    public total: number;

    public previsao: string;

    public cliente_email: string;
    public cliente_nome: string;

    public enviar_email: string;
    public alterou_status: string;

    public orderStatusText: string;
    public orderPrefixIdText: string;

}
