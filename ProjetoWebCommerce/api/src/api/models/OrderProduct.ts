/*
 * spurtcommerce API
 * version 2.1
 * http://api.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */

import {BeforeInsert, BeforeUpdate, Column, Entity, ManyToOne, JoinColumn} from 'typeorm';
import {PrimaryGeneratedColumn} from 'typeorm/index';
import {BaseModel} from './BaseModel';
import {Order} from '../models/Order';
import moment from 'moment';
import {Product} from './ProductModel';

@Entity('order_product')
export class OrderProduct extends BaseModel {

    @PrimaryGeneratedColumn({name: 'order_product_id'})
    public orderProductId: number;

    @Column({name: 'product_id'})
    public productId: number;

    @Column({name: 'order_id'})
    public orderId: number;

    @Column({name: 'name'})
    public name: string;

    @Column({name: 'model'})
    public model: string;

    @Column({name: 'quantity'})
    public quantity: number;

    @Column({name: 'product_price'})
    public productPrice: number;

    @Column({name: 'total'})
    public total: number;

    @Column({name: 'titulo'})
    public titulo: string;

    @Column({name: 'tamanho'})
    public tamanho: string;

    @Column({name: 'midia'})
    public midia: string;

    @Column({name: 'frente_verso'})
    public frente_verso: string;

    @Column({name: 'super_a3'})
    public super_a3: string;

    @Column({name: 'fecham_arquivo'})
    public fecham_arquivo: string;

    @Column({name: 'ajuste_cor'})
    public ajuste_cor: string;

    @Column({name: 'nome_arquivo'})
    public nome_arquivo: string;

    @Column({name: 'tipo_entrega'})
    public tipo_entrega: string;

    @Column({name: 'tipo_pagto'})
    public tipo_pagto: string;

    @Column({name: 'image_arquivo'})
    public image_arquivo: string;

    @Column({name: 'arquivo_anexo'})
    public arquivo_anexo: string;

    @Column({name: 'observacao'})
    public observacao: string;

    @ManyToOne(type => Product, product => product.orderProduct)
    @JoinColumn({name: 'product_id'})
    public productInformationDetail: Product;

    @ManyToOne(type => Order, order => order.productlist)
    @JoinColumn({name: 'order_id'})
    public product: Order;

    @BeforeInsert()
    public async createDetails(): Promise<void> {
        this.createdDate = moment().format('YYYY-MM-DD HH:mm:ss');
    }

    @BeforeUpdate()
    public async updateDetails(): Promise<void> {
        this.modifiedDate = moment().format('YYYY-MM-DD HH:mm:ss');
    }

}
