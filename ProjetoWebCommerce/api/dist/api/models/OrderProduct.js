"use strict";
/*
 * spurtcommerce API
 * version 2.1
 * http://api.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */
Object.defineProperty(exports, "__esModule", { value: true });
const tslib_1 = require("tslib");
const typeorm_1 = require("typeorm");
const index_1 = require("typeorm/index");
const BaseModel_1 = require("./BaseModel");
const Order_1 = require("../models/Order");
const moment_1 = tslib_1.__importDefault(require("moment"));
const ProductModel_1 = require("./ProductModel");
let OrderProduct = class OrderProduct extends BaseModel_1.BaseModel {
    createDetails() {
        return tslib_1.__awaiter(this, void 0, void 0, function* () {
            this.createdDate = moment_1.default().format('YYYY-MM-DD HH:mm:ss');
        });
    }
    updateDetails() {
        return tslib_1.__awaiter(this, void 0, void 0, function* () {
            this.modifiedDate = moment_1.default().format('YYYY-MM-DD HH:mm:ss');
        });
    }
};
tslib_1.__decorate([
    index_1.PrimaryGeneratedColumn({ name: 'order_product_id' }),
    tslib_1.__metadata("design:type", Number)
], OrderProduct.prototype, "orderProductId", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'product_id' }),
    tslib_1.__metadata("design:type", Number)
], OrderProduct.prototype, "productId", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'order_id' }),
    tslib_1.__metadata("design:type", Number)
], OrderProduct.prototype, "orderId", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'name' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "name", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'model' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "model", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'quantity' }),
    tslib_1.__metadata("design:type", Number)
], OrderProduct.prototype, "quantity", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'product_price' }),
    tslib_1.__metadata("design:type", Number)
], OrderProduct.prototype, "productPrice", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'total' }),
    tslib_1.__metadata("design:type", Number)
], OrderProduct.prototype, "total", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'titulo' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "titulo", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'tamanho' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "tamanho", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'midia' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "midia", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'frente_verso' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "frente_verso", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'super_a3' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "super_a3", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'fecham_arquivo' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "fecham_arquivo", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'ajuste_cor' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "ajuste_cor", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'nome_arquivo' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "nome_arquivo", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'tipo_entrega' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "tipo_entrega", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'tipo_pagto' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "tipo_pagto", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'image_arquivo' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "image_arquivo", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'arquivo_anexo' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "arquivo_anexo", void 0);
tslib_1.__decorate([
    typeorm_1.Column({ name: 'observacao' }),
    tslib_1.__metadata("design:type", String)
], OrderProduct.prototype, "observacao", void 0);
tslib_1.__decorate([
    typeorm_1.ManyToOne(type => ProductModel_1.Product, product => product.orderProduct),
    typeorm_1.JoinColumn({ name: 'product_id' }),
    tslib_1.__metadata("design:type", ProductModel_1.Product)
], OrderProduct.prototype, "productInformationDetail", void 0);
tslib_1.__decorate([
    typeorm_1.ManyToOne(type => Order_1.Order, order => order.productlist),
    typeorm_1.JoinColumn({ name: 'order_id' }),
    tslib_1.__metadata("design:type", Order_1.Order)
], OrderProduct.prototype, "product", void 0);
tslib_1.__decorate([
    typeorm_1.BeforeInsert(),
    tslib_1.__metadata("design:type", Function),
    tslib_1.__metadata("design:paramtypes", []),
    tslib_1.__metadata("design:returntype", Promise)
], OrderProduct.prototype, "createDetails", null);
tslib_1.__decorate([
    typeorm_1.BeforeUpdate(),
    tslib_1.__metadata("design:type", Function),
    tslib_1.__metadata("design:paramtypes", []),
    tslib_1.__metadata("design:returntype", Promise)
], OrderProduct.prototype, "updateDetails", null);
OrderProduct = tslib_1.__decorate([
    typeorm_1.Entity('order_product')
], OrderProduct);
exports.OrderProduct = OrderProduct;
//# sourceMappingURL=OrderProduct.js.map