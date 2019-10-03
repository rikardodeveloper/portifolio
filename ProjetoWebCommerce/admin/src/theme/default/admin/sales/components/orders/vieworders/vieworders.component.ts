/*
 * SpurtCommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 PICCOSOFT
 * Author piccosoft <support@spurtcommerce.com>
 * Licensed under the MIT license.
 */
import { Component, OnInit, ViewEncapsulation } from '@angular/core';

import { ModalDismissReasons, NgbModal, NgbPanelChangeEvent } from '@ng-bootstrap/ng-bootstrap';
import { ActivatedRoute } from '@angular/router';
import { OrdersSandbox } from '../../../../../../../core/admin/sales/orders/orders-sandbox';
import { OrderstatusSandbox } from '../../../../../../../core/admin/settings/localizations/orderstatus/orderstatus.sandbox';
import * as pdfMake from 'pdfmake/build/pdfmake.js';
import * as moment from 'moment';
import { DatePipe } from '@angular/common';
import { ConfigService } from '../../../../../../../core/admin/service/config.service';
import { FormControl, NgModel } from '@angular/forms';
import * as pdfFonts from 'pdfmake/build/vfs_fonts.js';
import { Router } from '@angular/router';
import { OrdersService } from '../../../../../../../core/admin/sales/orders/orders.service';
import { MatSnackBar, MatStepper } from '@angular/material';
//import var moment = require('moment');

@Component({
    selector: 'app-sales-order-vieworders',
    templateUrl: 'vieworders.component.html',
    encapsulation: ViewEncapsulation.None,
    styles: [
        `
            .dark-modal .modal-content {
                background-color: #009efb;
                color: white;
            }

            .dark-modal .close {
                color: white;
            }

            .light-blue-backdrop {
                background-color: #5cb3fd;
            }

            .image-manager .modal-dialog {
                max-width: 70%;
            }
        `
    ],
    providers: [DatePipe]
})
export class ViewOrdersComponent implements OnInit {
    public orderId: any = '';
    private closeResult: string;
    private invoiceDetail: any;
    private dynamicBody: any = {};
    private docDefinition: any = {};
    private pdf: any;
    private invoice: any;
    private imageUrl: string;
    public orderStatus: any;
    public orderDetails: any = [];
    public orderStatusId: number;
    public isDisabled: boolean;

    dtHrPrevisao: NgModel;

    diasPrevisao: NgModel;
    horasPrevisao: NgModel;

    produtoNome: NgModel;
    titulo: NgModel;
    valor: NgModel;
    faturado: NgModel;
    pago: NgModel;
    quantidade: NgModel;
    tamanho: NgModel;
    midia: NgModel;
    frente_verso: NgModel;
    reenviado: NgModel;
    formaPagto: NgModel;
    formaEntrega: NgModel;
    nomeArquivo: NgModel;
    observacao: NgModel;
    ajuste_cor: NgModel;
    fecham_arquivo: NgModel;
    super_a3: NgModel;
    total: NgModel;
    orderStatusIdModel: NgModel;

    public precoAdicional = 0;
    public precoInicial = 0;

    btnDownloadText: string = 'Download';

    listaArquivos: string[] = [];

    auxDataPrev: any;

    editouRegistro: boolean = false;

    emailUsuarioCompra: string = '';
    nomeUsuarioCompra: string = '';

    statusAux: string = '';
    orderStatusText: string = '';
    orderPrefixIdText: String = '';

    constructor(private modalService: NgbModal,
        private modalService2: NgbModal,
        private route: ActivatedRoute,
        private router: Router,
        public orderSandbox: OrdersSandbox,
        public orderStatusSandbox: OrderstatusSandbox,
        public datePipe: DatePipe,
        public service: OrdersService,
        public snackBar: MatSnackBar,
        private configService: ConfigService) {
        pdfMake.vfs = pdfFonts.pdfMake.vfs;


    }

    beforeChange($event: NgbPanelChangeEvent) {
        if ($event.panelId === 'preventchange-2') {
            $event.preventDefault();
        }

        if ($event.panelId === 'preventchange-3' && $event.nextState === false) {
            $event.preventDefault();
        }
    }

    ngOnInit() {
        this.imageUrl = this.configService.getImageUrl();
        this.isDisabled = false;
        this.getorderstatuslist();
        this.orderId = this.route.snapshot.paramMap.get('orderId');
        this.subscribe();
        this.orderSandbox.getSettings();
        this.initCampos();

    }

    public initCampos() {

        this.orderSandbox.getvieworderData$.forEach(element => {
            if (element) {
                if (element.orderId === parseInt(this.orderId)) {
                    console.log(element);
                    this.orderPrefixIdText = element.orderPrefixId;
                    this.precoInicial = element.productList[0].total;
                    this.produtoNome = element.productList[0].name;
                    this.titulo = element.productList[0].titulo;
                    this.valor = element.productList[0].productPrice;
                    this.quantidade = element.productList[0].quantity;
                    this.tamanho = element.productList[0].tamanho;
                    this.midia = element.productList[0].midia;

                    if (element.productList[0].frente_verso === 'Não') {
                        element.productList[0].frente_verso = 0;
                    } else if (element.productList[0].frente_verso === 'Sim') {
                        element.productList[0].frente_verso = 1;
                    }

                    if (element.productList[0].ajuste_cor === 'Não') {
                        element.productList[0].ajuste_cor = 0;
                    } else if (element.productList[0].ajuste_cor === 'Sim') {
                        element.productList[0].ajuste_cor = 1;
                        this.precoAdicional = this.precoAdicional + 10.00;
                    }

                    if (element.productList[0].fecham_arquivo === 'Não') {
                        element.productList[0].fecham_arquivo = 0;
                    } else if (element.productList[0].fecham_arquivo === 'Sim') {
                        element.productList[0].fecham_arquivo = 1;
                        this.precoAdicional = this.precoAdicional + 70.00;
                    }

                    if (element.productList[0].super_a3 === 'Não') {
                        element.productList[0].super_a3 = 0;
                    } else if (element.productList[0].super_a3 === 'Sim') {
                        element.productList[0].super_a3 = 1;
                        this.precoAdicional = this.precoAdicional + 5.00;
                    }

                    if (element.reenviado === 'Não' || element.reenviado === '0') {
                        element.reenviado = 0;
                    } else if (element.reenviado === 'Sim') {
                        element.reenviado = 1;
                    }

                    if (element.faturado === 'Não' || element.faturado === '0') {
                        element.faturado = 0;
                    } else if (element.faturado === 'Sim') {
                        element.faturado = 1;
                    }

                    if (element.pago === 'Não' || element.pago === '0') {
                        element.pago = 0;
                    } else if (element.pago === 'Sim') {
                        element.pago = 1;
                    }

                    this.emailUsuarioCompra = element.customerDetail.email;
                    this.nomeUsuarioCompra = element.customerDetail.firstName;
                    this.faturado = element.faturado;
                    this.pago = element.pago;
                    this.reenviado = element.reenviado;
                    this.frente_verso = element.productList[0].frente_verso;
                    this.formaPagto = element.productList[0].tipo_pagto;
                    this.formaEntrega = element.productList[0].tipo_entrega;
                    this.nomeArquivo = element.productList[0].nome_arquivo;
                    this.observacao = element.productList[0].observacao;
                    this.ajuste_cor = element.productList[0].ajuste_cor;
                    this.fecham_arquivo = element.productList[0].fecham_arquivo;
                    this.super_a3 = element.productList[0].super_a3;
                    this.total = element.total;
                    this.auxDataPrev = moment(element.previsao).format('YYYY-MM-DDTHH:mm');
                    //this.dtHrPrevisao = element.previsao;
                    this.dtHrPrevisao = this.auxDataPrev;
                    this.orderStatusIdModel = element.orderStatusId;
                    this.orderStatusText = element.orderStatusName;
                    this.statusAux = element.orderStatusId;

                    // console.log(this.auxDataPrev);
                    //  console.log(this.dtHrPrevisao);
                    var aux: any = this.nomeArquivo;
                    var strItens = this.retornarOcorrencias(aux);
                    // console.log(strItens['|']);
                    var auxQtd = strItens['|'];
                    if (auxQtd > 1) {
                        this.btnDownloadText = auxQtd.toString() + ' arquivos para download';
                    } else {
                        this.btnDownloadText = auxQtd.toString() + ' arquivo para download';
                    }

                    console.log(this.auxDataPrev);
                    var arquivosLisNome = [];

                    let auxList: any = this.nomeArquivo.toString();
                    let aux2;

                    for (let index = 0; index < auxList.length; index++) {
                        aux2 = auxList.split('|')[0];
                        arquivosLisNome.push(aux2);
                        auxList = auxList.replace(aux2 + '|', '');
                    }

                    //this.typesOfShoes = ['Boots', 'Clogs', 'Loafers', 'Moccasins', 'Sneakers'];
                    this.listaArquivos = arquivosLisNome;

                    if (this.auxDataPrev === 'Invalid date') {
                        this.editouRegistro = true;
                    }

                }
            }
        });
    }

    retornarOcorrencias(str) {
        console.log(str);
        var ocorrencias = {};
        for (var i = 0; i < str.length; i++) {
            var n = str[i];
            ocorrencias[n] = ocorrencias[n] ? ocorrencias[n] + 1 : 1;
        }
        return ocorrencias;
    }

    public downArquivo(operation) {
        console.log(operation);
        this.service.downloadFile(operation, this.orderId).subscribe(
            (res: any) => {
                this.service.handleFile(res, operation);
            },
            err => {
                this.snackBar.open('Ops.. problemas ao efetuar o download, tente novamente' + err.toString(), '×', {
                    panelClass: 'error',
                    verticalPosition: 'top',
                    horizontalPosition: 'right',
                    duration: 4000
                });
            }
        );

    }

    verCliente() {
        //this.router.navigate(['/edit']);
        //this.router.navigate(['/customers/customer/edit', 20]);
    }

    getorderstatuslist() {
        const params: any = {};
        params.limit = '';
        params.offset = '';
        params.keyword = '';
        this.orderStatusSandbox.getorderstatuslist(params);
    }

    open2(content) {
        this.modalService.open(content, { windowClass: 'image-manager' }).result.then(
            result => {
                this.closeResult = `Closed with: ${result}`;
            },
            reason => {
                this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
            }
        );
    }

    open(content) {
        this.modalService2.open(content, { windowClass: 'dark-modal,image-manager' });
    }

    subscribe() {
        this.route.params.subscribe(data => {
            if (data) {
                const param: any = {};
                param.orderId = this.orderId;
                this.orderSandbox.viewOrderdetails(param);
                this.orderSandbox.getvieworderData$.subscribe(value => {
                    if (value && value.orderStatusId) {
                        this.orderDetails = value.productList[0].orderOptions;
                        this.orderStatusId = value.orderStatusId;
                        if (this.orderStatusId === 2) {
                            this.isDisabled = true;
                        }
                    }
                });
            }
        });


    }

    salvar() {
        const aux: any = this.dtHrPrevisao;
        console.log(this.dtHrPrevisao);
        if (aux === 'Invalid date') {
            this.snackBar.open('A data, ou a hora da Previsão de Entrega, não foi informada.', '×', {
                panelClass: 'error',
                verticalPosition: 'top',
                horizontalPosition: 'right',
                duration: 4000
            });
        } else {
            const params: any = {};
            params.orderId = this.orderId;
            //params.orderStatusId = data;
            params.orderStatusId = this.orderStatusIdModel;
            params.titulo = this.titulo;
            params.quantity = this.quantidade;
            params.tamanho = this.tamanho;
            params.midia = this.midia;
            params.tipo_pagto = this.formaPagto;
            params.tipo_entrega = this.formaEntrega;
            params.ajuste_cor = this.ajuste_cor;
            params.super_a3 = this.super_a3;
            params.fecham_arquivo = this.fecham_arquivo;
            params.frente_verso = this.frente_verso;
            params.observacao = this.observacao;
            params.reenviado = this.reenviado;
            params.faturado = this.faturado;
            params.pago = this.pago;
            params.valor = this.valor;
            params.total = this.total;
            params.cliente_email = this.emailUsuarioCompra;
            params.cliente_nome = this.nomeUsuarioCompra;

            if (this.auxDataPrev !== this.dtHrPrevisao) {
                params.enviar_email = 'Sim';
            } else {
                params.enviar_email = 'Não';
            }

            let auxStatus: any = this.orderStatusIdModel;
            if (auxStatus !== this.statusAux) {
                params.alterou_status = 'Sim';
                this.orderStatusSandbox.getOrderstatuslist$.forEach(element => {
                    for (let index = 0; index < element.length; index++) {
                        const element2 = element[index].orderStatusId;
                        if (element[index].orderStatusId === parseInt(auxStatus)) {
                            params.orderStatusText = element[index].name;
                        }
                    }
                });
            } else {
                params.alterou_status = 'Não';
            }

            let aux: any = this.dtHrPrevisao;
            let aux2 = moment(aux).format('YYYY-MM-DD HH:mm:ss');
            params.previsao = aux2;
            params.orderStatusId = parseInt(params.orderStatusId);
            params.orderPrefixIdText = this.orderPrefixIdText;
            if (params.ajuste_cor === 1) {
                params.ajuste_cor = true;
            } else if (params.ajuste_cor === 0) {
                params.ajuste_cor = false;
            }

            if (params.super_a3 === 1) {
                params.super_a3 = true;
            } else if (params.super_a3 === 0) {
                params.super_a3 = false;
            }

            if (params.fecham_arquivo === 1) {
                params.fecham_arquivo = true;
            } else if (params.fecham_arquivo === 0) {
                params.fecham_arquivo = false;
            }

            if (params.frente_verso === 1) {
                params.frente_verso = true;
            } else if (params.frente_verso === 0) {
                params.frente_verso = false;
            }

            if (params.reenviado === 1) {
                params.reenviado = true;
            } else if (params.reenviado === 0) {
                params.reenviado = false;
            }

            if (params.faturado === 1) {
                params.faturado = true;
            } else if (params.faturado === 0) {
                params.faturado = false;
            }

            if (params.pago === 1) {
                params.pago = true;
            } else if (params.pago === 0) {
                params.pago = false;
            }

            //console.log(params);

            this.orderSandbox.changeOrderStatus(params);

            this.editouRegistro = false;
        }


    }

    public onClickCheckBox(operation) {


        let auxAjusteCor: any = this.ajuste_cor;
        if (auxAjusteCor === 0 || auxAjusteCor === false) {
            auxAjusteCor = true;
        } else {
            auxAjusteCor = false;
        }

        let auxFechArqu: any = this.fecham_arquivo;
        if (auxFechArqu === 0 || auxFechArqu === false) {
            auxFechArqu = true;
        } else {
            auxFechArqu = false;
        }

        let auxFrentVerso: any = this.frente_verso;
        if (auxFrentVerso === 0 || auxFrentVerso === false) {
            auxFrentVerso = true;
        } else {
            auxFrentVerso = false;
        }

        let auxSuperA3: any = this.super_a3;
        if (auxSuperA3 === 0 || auxSuperA3 === false) {
            auxSuperA3 = true;
        } else {
            auxSuperA3 = false;
        }

        if (operation === 'ajuste_cor_click') {
            if (auxAjusteCor === true) {
                this.precoAdicional = this.precoAdicional + 10.00;
            } else if (auxAjusteCor === false) {
                this.precoAdicional = this.precoAdicional - 10.00;
            }
        }

        if (operation === 'fecham_arquivo_click') {
            if (auxFechArqu === true) {
                this.precoAdicional = this.precoAdicional + 70.00;
            } else if (auxFechArqu === false) {
                this.precoAdicional = this.precoAdicional - 70.00;
            }
        }

        if (operation === 'frente_verso_click') {
            if (auxFrentVerso === true) {
                this.precoInicial = this.precoInicial * 2.00;
            } else if (auxFrentVerso === false) {
                this.precoInicial = this.precoInicial / 2.00;
            }
        }

        if (operation === 'super_a3_click') {
            if (auxSuperA3 === true) {
                this.precoAdicional = this.precoAdicional + 5.00;
            } else if (auxSuperA3 === false) {
                this.precoAdicional = this.precoAdicional - 5.00;
            }
        }

        this.changeCount();

    }

    public changeCount() {
        this.calcularTotal();
    }

    public calcularTotal() {
        console.log(this.precoAdicional);
        let auxQtd: any = this.quantidade;
        let aux;
        //let auxValor : any = this.valor;
        let aux2;
        if (this.precoAdicional > 0) {
            console.log('MAISSS');
            aux = (this.precoInicial * auxQtd) + this.precoAdicional;
        } else {
            aux = (this.precoInicial * auxQtd);//  - this.precoAdicional;
            this.precoAdicional = 0;
        }

        aux2 = this.precoInicial * auxQtd;
        this.valor = aux2.toFixed(2);
        this.total = aux.toFixed(2);

        this.editouRegistro = true;
    }

    onItemChange(data) {
        // const params: any = {};
        // params.orderId = this.orderId;
        // //params.orderStatusId = data;
        // params.orderStatusId = this.orderStatusIdModel;        
        // params.titulo = this.titulo;
        // params.quantity = this.quantidade;
        // params.tamanho = this.tamanho;
        // params.midia = this.midia;
        // params.tipo_pagto = this.formaPagto;
        // params.tipo_entrega = this.formaEntrega;
        // params.ajuste_cor = this.ajuste_cor;
        // params.super_a3 = this.super_a3;
        // params.fecham_arquivo = this.fecham_arquivo;
        // params.frente_verso = this.frente_verso;
        // params.observacao = this.observacao;
        // params.reenviado = this.reenviado;
        // params.faturado = this.faturado;
        // params.pago = this.pago;

        // params.orderStatusId = parseInt(params.orderStatusId);

        // if(params.ajuste_cor === 1){
        //     params.ajuste_cor = true;
        // }else if(params.ajuste_cor === 0){
        //     params.ajuste_cor = false;
        // }

        // if(params.super_a3 === 1){
        //     params.super_a3 = true;
        // }else if(params.super_a3 === 0){
        //     params.super_a3 = false;
        // }

        // if(params.fecham_arquivo === 1){
        //     params.fecham_arquivo = true;
        // }else if(params.fecham_arquivo === 0){
        //     params.fecham_arquivo = false;
        // }

        // if(params.frente_verso === 1){
        //     params.frente_verso = true;
        // }else if(params.frente_verso === 0){
        //     params.frente_verso = false;
        // }

        // if(params.reenviado === 1){
        //     params.reenviado = true;
        // }else if(params.reenviado === 0){
        //     params.reenviado = false;
        // }

        // if(params.faturado === 1){
        //     params.faturado = true;
        // }else if(params.faturado === 0){
        //     params.faturado = false;
        // }

        // if(params.pago === 1){
        //     params.pago = true;
        // }else if(params.pago === 0){
        //     params.pago = false;
        // }

        // console.log(params);

        // this.orderSandbox.changeOrderStatus(params);
    }

    onClickAtualizar() {
        //var moment = require('moment');
        // var aux: any = this.dtHrPrevisao;
        // console.log(aux);
        // if (!this.dtHrPrevisao) {
        //     console.log('erooo');
        //     return;
        // }


        // var dataHoraAtual = Date.now();
        // let dataHoraAtualString = moment(dataHoraAtual).format('DD/MM/YYYY HH:mm');
        // let dataHoraPrevisaoString = moment(this.dtHrPrevisao).format('DD/MM/YYYY hh:mm');
        // var data1 = moment(dataHoraAtualString, "DD/MM/YYYY hh:mm");
        // var data2 = moment(dataHoraPrevisaoString, "DD/MM/YYYY hh:mm");
        // var diferenca = data2.diff(data1, 'days');
        // var diferenca2 = data2.diff(data1, 'hours');
        // //this.diasPrevisao = diferenca;
        // //this.horasPrevisao = diferenca2;        

        // console.log(dataHoraPrevisaoString);
        // console.log(dataHoraAtualString);
        // console.log('DIAS= ' + diferenca);
        // console.log('HORAS= ' + diferenca2);
    }

    download() {
        //console.log(this.nomeArquivo);
        var arquivosNome = [];

        let aux: any = this.nomeArquivo.toString();
        let aux2;

        for (let index = 0; index < aux.length; index++) {
            aux2 = aux.split('|')[0];
            arquivosNome.push(aux2);
            aux = aux.replace(aux2 + '|', '');
        }

        arquivosNome.forEach(async (element) => {
            await this.service.downloadFile(element, this.orderId).subscribe(
                (res: any) => {
                    this.service.handleFile(res, element);
                },
                err => {
                    this.snackBar.open('Ops.. problemas ao efetuar o download, tente novamente' + err.toString(), '×', {
                        panelClass: 'error',
                        verticalPosition: 'top',
                        horizontalPosition: 'right',
                        duration: 4000
                    });
                }
            );
        });
    }

    /**
     * download invoice for order
     *
     * @param dynamicBody creating dynamic body for the invoic detail
     */
    downloadInvoiceDetail(details, setting) {
        if (this.auxDataPrev === 'Invalid date') {
            this.snackBar.open('Previsão de Entrega não foi informada, para efetuar o "Download do PDF", informe a Previsão de Entrega e Salve o Registro.', '×', {
                panelClass: 'error',
                verticalPosition: 'top',
                horizontalPosition: 'right',
                duration: 6000
            });
        } else {

            this.invoice = setting;
            this.invoiceDetail = details;
            this.dynamicBody.widths = ['10%', '50%', '20%', '20%'];
            const item1 = this.invoiceDetail.productList.map((item, index) => {
                return [index + 1, item.name, item.quantity, item.total];
            });
            this.dynamicBody.body = [[
                { text: 'S.no', style: 'th' },
                { text: 'Produto', style: 'th' },
                { text: 'Qtd', style: 'th' },
                { text: 'Total', style: 'th' }
            ]].concat(item1);

            // console.log(details);
            // console.log(setting);

            let acabamentos = '';

            if (details.productList[0].ajuste_cor === 1) {
                acabamentos = 'Ajuste de Cor, ';
            }

            if (details.productList[0].super_a3 === 1) {
                acabamentos = acabamentos + 'Montar no Super A3, ';
            }

            if (details.productList[0].fecham_arquivo === 1) {
                acabamentos = acabamentos + 'Fechamento de Arquivo, ';
            }

            if (details.productList[0].frente_verso === 1) {
                acabamentos = acabamentos + 'Frente e Verso. ';
            }

            var dataHoraAtual = Date.now();
            let dataHoraAtualString = moment(dataHoraAtual).format('DD/MM/YYYY HH:mm');
            //console.log(acabamentos);

            this.generatePdf(acabamentos, dataHoraAtualString);


        }


    }

    // generate pdf dynamically

    generatePdf(acabamentosP, dataH) {
        this.docDefinition = {
            content: [
                {
                    margin: [0, 0, 0, 0],

                    columns: [
                        {
                            margin: [0, 20, 0, 0],
                            width: '70%',
                            stack: [
                                {
                                    width: 180,
                                    height: 60,
                                    image: 'data:image/png;base64,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',
                                }
                            ]
                        },
                        {
                            alignment: 'left',
                            width: '30%',
                            stack: [
                                { style: 'h1', text: 'Ordem de Serviço' },
                                { style: 'h2', text: '' },
                                { style: 'h2', text: this.invoice.storeAddress },
                                { style: 'h2', text: this.invoice.storeTelephone },
                                { style: 'h2', text: this.invoice.storeEmail },
                            ]
                        }
                    ],
                }, '\n', // optional space between columns

                {
                    canvas: [
                        { color: '#D3D3D3', type: 'line', x1: 0, y1: 5, x2: 595 - 2 * 40, y2: 5, lineWidth: 0.5 }
                    ]
                }, '\n',
                {
                    columns: [
                        {
                            width: '60%',
                            stack: [
                                { style: 'shipping', text: 'Dados Cliente' },
                                { style: 'h2', text: '' },
                                { style: 'h2', text: ' Cliente: ' + this.invoiceDetail.customerDetail.firstName },
                                { style: 'h2', text: '   Login: ' + this.invoiceDetail.customerDetail.username },
                                { style: 'h2', text: ' Contato: ' + this.invoiceDetail.contato },
                                { style: 'h2', text: '    Fone: ' + this.invoiceDetail.telephone },
                                { style: 'h2', text: ' Celular: ' + this.invoiceDetail.mobile },
                                { style: 'h2', text: '   Email: ' + this.invoiceDetail.customerDetail.email },
                                { style: 'h2', text: 'Endereço: ' + this.invoiceDetail.shippingAddress1 + ', ' + this.invoiceDetail.shippingAddress2 + ', ' + this.invoiceDetail.shippingCity },
                            ]
                        },
                        {
                            width: '20%',
                            margin: [40, 0, 0, 0],
                            stack: [
                                { style: 'detail', text: 'OS ID' },
                                { style: 'h2', text: '' },
                                { style: 'h2', text: 'Data Pedido' },
                                { style: 'h2', text: '' },
                                { style: 'h2', text: 'Previsão' },
                                { style: 'h2', text: '' },
                                { style: 'h2', text: 'Valor' },
                                { style: 'h2', text: '' }
                            ]
                        },
                        {
                            width: '20%',
                            stack: [
                                { style: 'invoice_d', text: this.invoiceDetail.orderPrefixId },
                                { style: 'h2', text: '' },
                                {
                                    style: 'invoice',
                                    text: this.datePipe.transform(this.invoiceDetail.createdDate, 'dd/MM/yyyy HH:mm')
                                },
                                { style: 'h2', text: '' },
                                {
                                    style: 'invoice',
                                    text: this.datePipe.transform(this.invoiceDetail.previsao, 'dd/MM/yyyy HH:mm')
                                },
                                { style: 'h2', text: '' },
                                {
                                    style: 'invoice_t',
                                    text: 'R$ ' + this.invoiceDetail.total
                                },
                                { style: 'h2', text: '' },
                            ]
                        },
                    ]
                }, '\n',
                {
                    canvas: [
                        { color: '#D3D3D3', type: 'line', x1: 0, y1: 5, x2: 595 - 2 * 40, y2: 5, lineWidth: 0.5 }
                    ]
                }, '\n',
                {
                    text: 'Informações Serviço', style: 'order'
                }, '\n',
                {
                    table: {
                        widths: [80, '*'],
                        body: [
                            ['Título', this.invoiceDetail.productList[0].titulo],
                            ['Serviço', this.invoiceDetail.productList[0].name],
                            ['Quantidade', this.invoiceDetail.productList[0].quantity],
                            ['Tamanho', this.invoiceDetail.productList[0].tamanho],
                            ['Mídia', this.invoiceDetail.productList[0].midia],
                            ['Acabamento', acabamentosP],
                            // ['Ajuste Cor', this.invoiceDetail.productList[0].ajuste_cor],
                            // ['Super A3', this.invoiceDetail.productList[0].super_a3],
                            // ['Fechamento de Arquivo', this.invoiceDetail.productList[0].fecham_arquivo],
                            ['Entrega', this.invoiceDetail.productList[0].tipo_entrega],
                        ]
                    }

                }, '\n',
            ],
            footer: [
                {
                    margin: [0, 0, 0, 10],
                    table: {
                        body: [
                            [
                                { border: [false, false, false, false], text: '', style: 'note' },
                            ],
                            [
                                {
                                    border: [false, false, false, false],
                                    text: this.invoice.storeName + ' ' + this.invoice.storeAddress,//+ ' ' + dataH,
                                    style: 'content',
                                    margin: [0, 0, 0, 0]
                                }
                            ]
                        ]
                    }
                }
            ],
            styles: {
                h1: { margin: [0, 10, 0, 0], fontSize: 16, bold: true },
                detail: { margin: [0, 10, 0, 0], fontSize: 10, bold: false },
                shipping: { margin: [0, 10, 0, 0], fontSize: 12, bold: true },
                billing: { margin: [0, 10, 0, 0], fontSize: 12, bold: true },
                h2: { margin: [0, 5, 0, 0], fontSize: 10, bold: false },
                invoice: { margin: [0, 5, 0, 0], fontSize: 10, bold: true },
                invoice_t: { margin: [0, 5, 0, 0], fontSize: 14, bold: true, color: '#008000' },
                invoice_d: { margin: [0, 10, 0, 0], fontSize: 10, bold: true },
                order: { margin: [0, 0, 0, 0], fontSize: 12, bold: true },
                total: { margin: [0, 5, 0, 0], fontSize: 10, bold: true },
                note: { margin: [0, 0, 0, 0], bold: true },
                content: { margin: [0, 0, 0, 0], bold: false, fontSize: 9 },
                th: { margin: [0, 10, 0, 0], bold: false, fontSize: 10 },
                td: { margin: [0, 10, 0, 0], bold: false, fontSize: 10 }
            }
        };

        this.pdf = pdfMake;
        this.pdf.createPdf(this.docDefinition).download('OS_' + this.invoiceDetail.orderPrefixId);
    }
    // generate pdf dynamically
    generatePdfOlds() {
        this.docDefinition = {
            content: [
                {
                    margin: [0, 0, 0, 0],

                    columns: [
                        {
                            margin: [0, 30, 0, 0],
                            width: '80%',
                            stack: [
                                {
                                    width: 180,
                                    height: 60,
                                    image: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAkYAAAC+CAYAAADQg8AxAAAABHNCSVQICAgIfAh' +
                                        'kiAAAIABJREFUeJzt3Xl8VNX5+PHPufdmQyGghE0rWpZQN9CKuHSxUq3aKuDSqrVft9ooqVBFY12quLai1pp2gnytSn+' +
                                        't27du' +
                                        'qF+1tVhtv9oCLqDWsipYRRYVkwDJLPc+vz9mMplJZiYzk5nMJHnerxevV+bOXc7czIv75JznnMegusW+xT6ZFu9e2d285w3y' +
                                        'fsB5v' +
                                        'FvoNimllFIqO6bQDei1bmGC02oedVtlPwNQChyIZ/zmOdfImZxFU4FbqJRSSqkMaWCUKR+72p+YP8hOOQmJv38y2mBGCIQIW' +
                                        'jv' +
                                        '4eeg8ritUM5VSSimVOQ2MMuDcwDVeKz8jRGnCHQwwCaLv+vnMtHCWez7P9VQblVJKKZU9DYzS4NzIseI3/88LyPAub9hQYEz' +
                                        '7SxE' +
                                        'wLWa5t1NOpYZ1eWymUkoppbpJA6NUbme002w97rZ4B2d0ow4ABsRvEhcxLdajXoV3Ft8lkMNWKqWUUipHNDBKZC7ltlj3Sc' +
                                        'D7Hi5W' +
                                        'xscPBL5E4rsbpJWdXOGdR313m6mUUkqp3NLAqAPrRi6ilV8Sp' +
                                        'LxbJ6o2MFiSv99iPvIC8l3O49VuXUcppZRSOaOBUYRzA0dK0Dzk+eULObkppcBESNXfJB5YLebvLnIq/8WWXFxWKaWUUtnT' +
                                        'wOhmRtp+80' +
                                        'fPL0eaFB08WRltYEQaJ3Vx2WH91jvHuwhDrluhlFJKqTT138BoLpZlrLtplfNwxc7LNQxwEFCS5v5+mkyAme45PJCX9iil' +
                                        'lFIqpX4ZGNk3cJ74uYsgu+b7WjICzOgM9hewW82aUKuczA95J38tU0oppVRH/SswupmD7RbzqBeQfXr0gx8IVGR2iHiItcM' +
                                        '86zpaXkQppZTqKf0jMPo5Q2y/ecRrkW8aKcBnrgQmZHlskKC1gztC53NlLpuklFJKqc76dmAkGOcG7vBauRgXp6Bt+RIwqB' +
                                        'vH+/nM7OAH7gU8m6smKaWUUipenw2M7Bv4rgRYQIDBhW4LAGWEp+93446LgL3DLA/tkFOYyXu5appSSimlwvpeYHQz+zt' +
                                        '+80e3VSYU3Yf7IlCVg/O4iNlhPeoGvO9TQzAHZ1RKKaUUfSkw+iUVdqN51GuV4wuSR5Q' +
                                        'Om/D0/VwtDhCghR1c6f2Qu3J0RqWUUqpfK84AIkPO9VzttfIzXMoK3ZauyCgwX8jh+QCrxWw0zfLd0EW8krszK6WUUv1' +
                                        'Prw6M7Jv5Ni1moQRkaKHbkpFJkOsQTjywdpr/c1vlu9TwcW7PrpRSSvUPvTMwmssXHc887rbKxN74AWQImPF5OnkI' +
                                        '1zRbC9wPvYuZi5enqyillFJ9Uu+KK+ZSamMekBY5hWLNI0rXvsDAPJ6/1TSZHfJj90f8Po9XUUoppfqUXhNcWNczG' +
                                        'z+/IER5oduSEzmYvt8VEbB2mLVuq3yPGt7I35WUUkqpvqHoAyPnRo6SgHnA88uoom9spvYBhuX/MuIh1nbzF3cXO' +
                                        'Znvsj3/V1RKKaV6p+' +
                                        'KNNW5jmNNsnnJbZUrxNrKbcj19vytBAtZ2fhE6n7kYpIeuqpRSSvUaxRdznIZtfcmaT8A7D6/HQoaCkZFg9urZa' +
                                        '5oW8xmt1jnuD92ne/bKSimlVHErqsDIvoHzpJV6QuxS6Lb0qDxM3++KCJgd1gqvxTuNC1nTs1dXSimlilNxBEY3M' +
                                        'NkOmEe8gOxTHA3qWXmdvt+VEGJ2mMfc7XIWs/AXqBVKKaVUUShsHPJzhth+85jXIt8w/TzjRfYDs2sBG+' +
                                        'CnxW7mqmANvypgK5RSSqmCKkxgJBjreut2/DILV5yCtKHYVAAHUNBQVQSsFvOxaZTTQz/mb4VriVJKKV' +
                                        'UYPf4Ytq/n+xKggSCDevraRW8ssHuhGwHigtVsv+oG3BlcxJZCt0cppZTqKT0XGF3HeMczz7h+Gdcf84jS4' +
                                        'hCevm8VuiERQVyz3VrgfujNZi6hQjdHKaWUyrf8xyi3sYu93TzgtchJptA5Tb2A' +
                                        '7Almj0K3ooNWs900ycXuRSwsdFOUUkqpfMproOJcx/VegJ/iUprP6/QphnCvUUmhGxJPBKzt5j3XL9Op4e1Ct0c' +
                                        'ppZTKh7wERvb1TJMA9xFkt3ycv6+ToWDGFLoVSbiI2W6ec7fLGcyiqdDNUUoppXIpt4HRNYxxLPOk2yr765h' +
                                        'ZNx0ADCh0I1LwE7S2c2toI9cxF6/QzVFKKaVyITfxy1xKLaw/yE7vVM0jypFdgf0K3YjUBLB2mG1st85zZ7' +
                                        'pP9uClrTFjxuxrWdZXRCTked6S9957751Ik5RSSqmsdTuIsa7ncvzcQIjyXDRIxagGBhe6EV0TD8x2621Pv' +
                                        'Omcx3v5us4+++wz3HGcBmPMt6BT2ZgdIvJcMBi8eP369Z' +
                                        'vy1QallFJ9W/aB0Q183Q6YRyQgw3PYHhWrFJhI8Uzf70oIzzRaD7jiXUgNO3N56nHjxp0BNAA7gNs8z3vbtu' +
                                        '23XNe1gP2NMRONMZcAA4Hz16xZ83gur6+UUqp/yDwwupmRtt887rXKYTpm1gNGAyMK3YjMmBbTarbL1aEa7s' +
                                        'R0f3hr3LhxNxpjrhGRx0Xk3LVr1yZM+v7iF79Y6TjOQmA6cMPq1auv6+61lVJK9S/pxzZzcSyx7sHv/Rder+' +
                                        'nD6P1swr1GRTZ9vyuR6f2bzHb5XnfKi4wZM+bLlmUtE5Ffrl279rJ0jhk/fvwdIvITY8xhq1evXpbttZVSSv' +
                                        'U/aQVG1nVcSIBf4lKR7' +
                                        'wapzop6+n4XouVFWt1TqCWj3J+99967vKSk5B1jzM7Vq1cfDOmtvr3ffvuVBgKB5UBpMBjcf/369a3ZtF0ppV' +
                                        'T/k7qA6w1MtgLmUWmRvXTYrHDMJ8BIinv6fhLGBhnsHmEF+NDcY/232+Jdwiz86RxbWlo6nfBg4gHEBEXj' +
                                        'x4/vODz3iud5961du/Y+gH/961+B8ePHnwG8VlpaOg14JDefRimlVF+XeEjsdoY615oXzXaWEtCgqCi8X+' +
                                        'gGdFMptuzmXWQ' +
                                        'PMZ+W+Ozz0zlERA4XkX+sXr16ZaL3Xdf9iuu6XwG2WpZ179ixY7/V9t7q1atXAP8UkcNy8wGUUkr1B/E9R' +
                                        'nOxLM+q5xPvQs8TWwOiIrId2AYMKXRDukcGyC6hCve39kLrGmuHNyNYy/Jk+xpjDheRd5O9v27d' +
                                        'ulcA9tlnn+aSkpLpQMcqc+8BGhgppZRKW7THyL6W06wAjbR6tXjYhWyUSmI99IU1po0BGejt7Vbxhn2veY' +
                                        '5fJi0dsy+wJdW5hg8fvktJScnZkZcfxb4nIpuNMfvnoMlKKaX6CYe57Ou45jG3VSZoD1GRCxAOE3rZ9P2k' +
                                        'bIwMluOscjZZd1u3hzZ51zK3PZdIRNYYY8YnOzw210hErl27du2fOuwyQUTW5KHlSiml+ijLtqw3PL8G' +
                                        'Rb3GR+GZXn1KOSVelXelvaf9Uod33hSRg5IdFgwGJ3qedz6AiHyUYJeDjTFv5LKpSiml+jbLqjBlzlAHU' +
                                        '6qhUa8QAj4odCPyIARmO5922LrcGLPXmDFjjk90yPvvv/9WZCbaK8aYq4YPHx4tEzJu3LhjjDF7eJ' +
                                        '6ngZFSSqm0WW7AwzgGZzcHe4iNZhcVP7MF6GMr89if2liuCcZu8/v9vwc+tixrwdixY8uSHSsifzL' +
                                        'GjBk4cOBXAPbcc88K4H5gUyAQeCivDVdKKdWnWCJCKBge' +
                                        'm7HKLEqqSrAG2Yh2IBU1WV/oFuSOabawWjuvHPHBBx9s8zzvDGPMFyzL+n' +
                                        '' +
                                        'my40XkQQDLsn4GUF5ePg8YJSLf++CDD7blq91KKaX6HgdAgh7iWBgTjobsARZ2uYW73cXd6XWj0qzKF9MI0' +
                                        'gxmYKFb0k1BsLclrzCzdu3al8ePH/8L4Kfjx4/fJxQKnbN69WrTYZ91gNl7770Hjxs37iljzIkictOaN' +
                                        'WuyLkWilFKqf4quY+QGXZzSmGWNLLAH2VgDLNxGFwl2uxaoyjHzPuE1oXtr5CrhITTTRffk6tWrrx' +
                                        'w/fvwKEZlv2/bbY8eO/aVlWW/v3LnzzbKyMgfY37btScDlIlLued60tWvXPtUjn0EppVSfEo2' +
                                        'EJCR4todlx//1bhyDs7uD5/dwmzxwNUAqGi0gn4CpKnRDsmM1WVj+9OoRr169+uG99977pZKSkl' +
                                        '9blnUTsMuAAXE1UnaIyPO' +
                                        'hUKj2/fff35yP9iqllOr74la+9oKdA6M2VpmFNdTC3enhbncxGh8VBfMBsBu9L2k+ANbn6QVFbdavX78' +
                                        'JOA2wxowZs68x5qtAQESWrFu37l+AfiuVUkp1S1xgJJ7ghjxsJ8kDy4C9i4VVYeE1ubitmn9UcCGQjW' +
                                        'C+UOiGZEDA+cTBZP/t8datW/cO8E4OW6WUUkp1LiLrBV1EUv/hbSywB9s4u9mYkq4fbgPLBjJm9zHZt1' +
                                        'KlZD4mvCp2L2E+tzBBDamVUkoVH6fT40nCQ2rBK3K/vLJ9hT4M80JAPgAzttAN6ZppNdhNmQ2hKaWUUj0' +
                                        'l4RPKC+WnUmlFSUVezqvAfArsKHQruuBFZqHpAKxSSqki1aN/uh84c' +
                                        'mJPXq7/KfJFH61tFiakQZFSSqni5SR7w77ZYJfZSWepdcULeLhNLg0n3k3NYTUAHLbXYSz54J/ZtVR1bXtk+' +
                                        'v7QQjekM9NisLf3tqlzSiml+puUUY8X9LpMxE564lKLkqElvLVtRXTblL0Oy+pcKn1mA5D79LAufXXoVxm/6' +
                                        '/jEb7rhITSllFKq2KUMjMQTPLd7+UZvf/5W9OdJoyZ161wqDZHp+z3tjgPu5N/HruK1o9/gwMoD496zP7Mxrg' +
                                        '6hKaWUKn5djpN5gex7jQDe2voWLaEWAMYNHUfFAE3Azreenr4/onwEBw8+GIBJlZPY4t/S3pZmC2unzkJTSin' +
                                        'VOyTNMYrlBT3s0uyGQlrdVt7+5G0OHXEolrE4Yt8jeGndS7hNbkGGfPqFHp6+P23k9GgB4r99+jc2tW4Kv9FF' +
                                        'gdg+rY5qXAZhc3in91z+gU0T81hVgJYppZRKIb3AK' +
                                        'ORhORbGym44ZMWWFRw64lAADh05hb99+DesKgt3h5YXyRfzKTAS2CX/15o2anr050f+83D4hzQLxPYpc5hsWXx' +
                                        'PDGcZGJ60TEtku9Sx2cAzHjwDLGYezT3VVKWUUoml/ee8G8y+e2fpx0uiP0+sap+yb+9iUVJVglVhaZGrfOiB6' +
                                        'fsDnYF8o+obAIgIiz5+EsisQGyvV0e1qeMxy2' +
                                        'YphjkGhqdzWGS/8y14wsAa5jA5zy1VSinVhbR6jADEDSdiZzN9f0lsYDQsfi0jY4FdaWMNsHCbXCSoIVLObAf' +
                                        '5DMxu+bvECSO+TalVCsDSbUvDw2hZFIjtteqoNvByusFQMgaGi01TrpqllFIqO2kHRgBuwMWUm2g+SbrWbFtN' +
                                        'S6iFCqeCsYPHMbRiKJ+0fBK3jykxOLs7eK0ebrMHrgZIuWA2AIPJ21Ke3/vC6dGfF218MhcFYnuPHAVFAAKbNe' +
                                        'eoCFzG0ZbF4thNnsuh3MGyQjVJKdWzMntcCllN3xeEtz95O3xBY3Hw8IOTN6jcomSog7WrTX9KT' +
                                        '8mbAMim/Jx6oDOQ44cfH3395MYn+1WBWAO3dBUUifCywOMd/m1OsOsreWqmyoBlOKHQbVBKFVZGPUYQnr5v2V' +
                                        'bGvUZLP14STcA+sGoif17/5+Q7G7B3tbAqDF6zh9vq8dOjfsp39j2RPQbtwYiBIyhzyqK7+0N+NjVvYlvLNv5n' +
                                        'xSPc+tIvMv1YfZrZCAwji992arHDaKu2r2L1J6uwm/rJQo7h3qKTU+xxrwfXchsJV5WSOqoRTjOGHxsYLvBynlqq' +
                                        '0lXHQIGz+kdYr5RKJqtHpRvwcMoyewAu+XgJPz7oYgCmjJyS1jHGNpz/lR9y5ZSrGD1odNL9ypwyRg8Zzegho/l0' +
                                        '56caGHXkgvwHzD65PW3sbLQnP3qyvxWI/VayN0R4WW7jhymPDg+b3SR13CVwLh7v5LqBKmNTczEsqpTq3bIKjMT1' +
                                        'EC+z6fsrtrSXBjk0zcD' +
                                        'ossmX87PDr6XM7tw7FKtjD5LqzGwBRgA5Wl+zxJTEDaM9vXJRvyoQa+Dryd4Tw/1pnyg8Rb8+F21S3WOEn' +
                                        '/SfuF4plUzWgyuhgEtJefqHxyZgDx8wnOEDhrN5Z6JUi7BjRh/D5ZProkHRlp1b+P27/4+r/3YV7nYXd4cX93' +
                                        '/YFZGhth2BHdl+pD7hiqN+ymGjD+ewvQ5j4WsLufK5K6LvyQYwE3JznaOHTWVQySAAPm75mNfeey03J+4LXN4tdB' +
                                        'NUhuqYnirYVUr1H9lnnXiZTd8XhGWblvG1Pb8GhKftp8ozqpl4IZVllQA0+hs5//lzeWHDC+H8o4Ft0/s9xB9OBr/' +
                                        '1pV/oEBpQc' +
                                        '9iFjB6SeNjRNII0gqns/nVih9GeWft090/Yl4RXu879LKY6ZllwV6K34mZOtS00CYcY0/6wF+EdY1iS7YKSpo7Hku' +
                                        'VVeTCbeSl6vuYw2bJZmuxtb14XfTWpPnvHY+uYbsF3BL7TNjQm8LjM45QO+w3EY7K' +
                                        'xqE2VL2bZLKUuSbt1xppSfU630nEznb6/9OMl0cDo0JFTUgZGB1S1FyJ97v1nw0FRDGMbnCE2XsDgNmp5kXSZDcAB0' +
                                        'N0hg5NGnBT9+em1T3XvZH2MES6QOu7v8ZWswwnht7Q95Dv+io1hf2B/C84X2CyXcSa382KPtjEf6hjIPJqZw2RjcZ+B/' +
                                        'aHrr7gFTflaxiJTCxYsmBAKhU4HTgD2MMaMin1fRJYBHxpjFs2cOfN3WZ77K8CXOpx7lYi8a4z528yZM3+Vabt9Pt+J' +
                                        'xpi4/wBmzpwZd+sbGhrOFpGjgP2MMXGLmEY+178cx7m1pqZmZaK2u657nIh8Ddizw/HNIrLUGPNMpm1vaGiIWw9GRE6q' +
                                        'ra2N/oU3f/78Iz3POw04whgzARgYs/sqEXk' +
                                        'XuD/2mDb19fVVjuOcEPOZ446PfOZnXdf1zZo1a2sm7e4o8ru9MEE7m0VkJfCs4zgPJ7q3yfh8vl8ZY2bHtre2tvbQtt' +
                                        'eR3+c0YErsd0lE7qqtrf1JBu3O5/e9W/eke/OUBNyQh1OSXiL2iq0xeUYj0sszAvho+0dJ37NKrXB5kZ0ebrOWF+lSC' +
                                        '8hWMMOyP8WU3Q5jZMVIAJr8Tfz1g7/mqHG9hwhvGpO4l8EY9kd4Wuo4saeCI8vie8CcdPc3MNxYLOZy7vBu47I8Ni3' +
                                        '/XCZQxx4WPFHopmQq8p/4La7rzkj1B2YkIJgMzPD5fLWxD6pk6uvrq2zbXtDFuauNMdXAjIaGhhuAa7MJkDqKfK4rjD' +
                                        'GnAAOTXb/tc7mue47P51tYW1t7LkBDQ8NPgAtd162O7Jfo8IHGmKnAVJ/Pd6brut/uTqARuV+1wAUiMiqde+bz+Za1' +
                                        'Xdfn850IzI60KWmHQd' +
                                        'tntm37gvnz53/3oosuynipjsj9/Y3rulNT3Ju2e3udz+dLO2hJ0N5BEA2IbgFS3Zt02p2X73su70m3/16SoIdIetHI' +
                                        '0hQrYKdSPaS6y33sARalVSVYA7S8SFfMf+hWD1vsMNqf1j9P0At2v1G9jfBqqreN4etGeLXHynyY9' +
                                        'IOiTsddzjU5bk3PsvhWbwyKGhoafuK67lJjzIwMD/1XVzvMnz//SMdx1mV47oHAnT6f7/EM2xPH5/M97rruv40x5xDf' +
                                        '05KSMeYcn893v8/n+wi4E+j6P/72Yyfbtv1QFs1tMztyv67r2HuRznV9Pt9SY8xTbUFRmseO8jzvf+rr66syaajP5zsx8r' +
                                        '3J5FqzGxoaVmZ6rYhqn893P7A' +
                                        'wk3vTUT6/77m+JzlZ2Sbd6fsbmjaweefmaPJ1qgTsjds3Rqfof3XPr3HM6GM6Dad1YoE9KJJ/1Ni5vIh7a/j1hm0b+O' +
                                        'Iv9gbgvMnnc+7k8xi7+1iG7RruRmlsbWRT8yYW/WtRXPJyIn++4C9MHRv+XS' +
                                        'xeu5hj7/lmTvZP1Nbfn/4A3/7St6ksr8Qf8nP9C3O59aVf8N5P1yfMK6o7qo66o9qTI6LnCoF8BGavlE1NanpMYPTUu' +
                                        'n46j' +
                                        'HY7L8rlvBMZnkrIGPY3Nku5nDs8wy+Zl3hNo0KzDDd6c/hTb82VsQw3FroNmYr0iNyZ5O1VIvIPoDHy+ghihhuMMSuS' +
                                        'HAeEgyIReY7OQUmziCyF6NIQ+xtjDu24nzFmhs/ne7y2tjbVOl1JJXrwRYZG2v6YSHjdyLHnJDh2I7AE+CCy6YiOQ3K' +
                                        'RY6f6fL4TEw1vpdHmRA/U' +
                                        '2N/DXnQYOuri2HTv9Sjbtq8G0urNifxuE/2n2/F6ie5RtW3bC0i9/lpCiX4vmeiB73tO70lOAiNxPTzXpJWIvWLLCo7d+' +
                                        '1ggnGf0dJIH6+/+tZDDRx0OQGVZJfced397AnYXjBMpL+L3cJuSlxf5/ekPcMoBp3Sa6l9ZXklleSV1R9Vx7Phj+fJdB' +
                                        '3V5zXx7ffabTBo1Kfq6zCljcMWQrM9nNgFVZDx9v3rXCVTvGv5DLuAGeP7957JuQ28nHueZFAnFUeHCsmdJHbdAfnOPRH' +
                                        'hHDLfHzYyz2dcIl6UM4izuk3D2Wb/huUS751MmhsM5SWca2qSdu9EmMuTS6SEhIosdx' +
                                        '/lxstyHSN7LnZZlJQ1g6+vrqxIFRSLyhOu6NR2HmtqG2zoGM8aYGQ0NDWdnmt/R4ZobjTG3hUKhB9K9bsc2O45zVbLco1Aot' +
                                        'DhBoHIu0J3ZIM0icp/jOHcnuq7P55trjLkuRZuXATcmyz2ybfuhBIHUaaQRGMX8bjte8y7XdW/ueI8j+VlPEtPzF' +
                                        'gl6swoeI9' +
                                        'faCNxjWdYLbUOAkZyq7xMuPtVJD33fO567W/ckZ2she8H0Zqi9tbU' +
                                        '9MJqSIjBa+M79fLf6exy919EADBswjEenPc4L6//MqU+dkvCYjqwyC2toJP9oe/zY0e9Pf4AzDzoTgFVbV/F' +
                                        'h44fR9w4YcUC0' +
                                        '92jSqEm8PvvNggZHDTPujguKOnpl/Sus/XQtAIfseQiV5eFpZ8s3Lu' +
                                        'fTnZ9G99vcHNM7J9lN358+or236KX/vERzoGfzi4vKHSzz6pidbLZULAPDDdwlcJXUcSHzeDKXTRHYLHAFt5HoQbZM6ngc4' +
                                        'enYWWpx7TPsL5dxdJ9Ixk5XbA9ZkllnQHj5hRz1pkW67e/uuD2dxNXIgyhlrkXkr99OQVGy3p/Ig+Nkn8/3eIIg5df19fXP' +
                                        'ZpO309XnmTVr1tb6+voax3G+maC9yxzH+a9UybE1NTUrGxoargIWxm43xuybaVtjrrvYdd0zUn3e2trauT6f74QESeQbg' +
                                        'QtTBRyRz3yG4zhbOrR5VH19fVVX9znR7xa4pLa2NmFOWE1Nzcr6+vqvOo6zrsNxPyOL4FFEFrquW9exnZHXCdtQiO87Obg' +
                                        'nOZuTIZ7ghrquo7YkJs/owKrUeUYnPHYcL37Q/v90mV3Gd8acyOaZW1l4fJp/yBiwd7EoqSqJbhpcMZhTDjiFLdu3cNVzV' +
                                        '7Lv7RM49p5vRv+NvHE4T73bHrBNGjWJhhmdfrc9Zsb+M/CH/Dz45oMcf+9x2FcYFvxzAZ+3bAPgBw9/P9r2z1s+jx7359' +
                                        'V/jvtcP3j4+3HnbZu+nzaB6cPbA6On1y3q1ufqE+ZR78HsrncMMzDcgidMHY9RR9bj9Qm8wryEQVHYPJrFcGaqE/SJOmHCH' +
                                        'Z7HVA8GefMw3jyMBxNEeLPQTQOwbbs2wQycxdkmxsZasGDBhI7BjYhsTGdIzHXdmsjDPdbASE9ARiKzmLr8PLNmzdo' +
                                        'aGero6NV0ZlEl6c1KOy+po9ra2m+mGQQ+m2DbR+n0wkQ+c6cg27btw1Idl+R3u6yrRPnI9R6L3WaMmbxgwYKM/iQWkYW1t' +
                                        'bXnZhokF+D7npN7' +
                                        'ktPJql7Q7TIROzYB+6BhB3VZQuKEx47jjtdup9Hf/gSvLKvk9AlnZBQgmZhP2tajcvYj/5V07aMZv5vG4rXtRbZn7J9pvlh' +
                                        'ujBg4gmG7DuP6F+byg4e/z59X/wmAmU9cmJN1m8wGSDdbfVRwFJOHhQN4EeHpdbp+EdAWHM1IU' +
                                        'hw2IQMnG3iDOs7OZ9PihHOc7k32thjO6rG25JgI73gwwbuNy7idF+OGK+exitu4qYDNi3VBxw2O4/w4FycOhUKJEiLvSef' +
                                        'YWbNmbTXG3JbgrQu716oudasUTqIgI9OHfhZe7+bxnSZuGGPGpDogMrW94zG+NK/XKZnedd30p4WHZfIndKx8ft/zdk9yu4' +
                                        'pHZPp+Kpt3bo4mXFcNqGLckPFdnvbqv1/F8IYqHl75UMIAadX5azhn/3Mzaurjqx7nz+tSFLIFjr3nm/hDfgCG7TqM8yaf' +
                                        'n9E1cqHMKePVDa/mb/HKFpAtXe9GAKZVTY9OQV22eRmbdmzq4qB+ZB5PCnxdJP1isJHeo4XW5dyez6bF8uCtVO3JcS9Wj' +
                                        '4jkVR0RqT9' +
                                        'XtObPn39kgr+en8hkjZkuHNtxg+M4D6d7cCgUeiDB5uosZzIVTCgUGlfoNmRKRPZO9b4xplMQkG7+V6KeL' +
                                        'BHJe25Ivr/v+bwnOV/eTIIe4qXugoitm5bJtP1znjub4Q1VPLPuafyuP7p99KDR3HV0PZdNvjztcz246g+UDHWwdrWRFJ1W' +
                                        '/97y7+jP44Z2HcTlwzPv5rdnxnxI6un7HjifOJw0Zlp001NrdRitk3mskts4KtPeIwxzeiw4cvlHF+/v0SPt' +
                                        'yCXD6h5fTDMLnucd03GbMeZvuTh3fX19VYJE5OZMHkKRYZJOwWVXwzyqR8QNESbqKSs2+fy+R+TtnuQs+TqWG3Rxyp' +
                                        'KfeummJdEE7IlVE/njqv/J6PynPnUKx4w+hksOmRNNzi6zy/jZ4dfyScsnLHwndQ3PLTu3tJcX2dXCqjBx5UVixSYvf3nPL' +
                                        '2fUzlzJe6mTLqbvW9ssBplBHPWFo6LbntLVrpObx5NSx2KBcw1clVbFdsMc6ng7ZZ6Q6u0O7LjBGJOT/8wTBS+RVX4zElkFu' +
                                        '2Oezpfp3kwv1Q2RWV0d7eHz+bq9EGee5e37nu97kpfASNzUddRi84wOHZnpUGfYCxte4IUNL3DZ5Mv52eHXUmaXUWaXce' +
                                        'WUq7oMjFozX++HAAAgAElEQVRCLXGv48qLNLkQyqpJebFlezrjXN1nNhF+fJd12N5isLfbHFd9PKV' +
                                        '2KQCrt61i9baiHrUovHAPR' +
                                        'r3Ucb/AuWnOXLtV6ni8N/R+qKzs2XFDNqse59kHCbYlnIatCifSO5j2pI8C6dHvey7vSd4qBXnB5LlGsUNpk0dM7jIBO5Xbl' +
                                        '93Gb978dfT16EGjMxpSi2WVWp' +
                                        'QMLcGqtPN4ZzLTEmzpeqdcEJD/dNjmgv1peOHOk8a010bT3qIMzKM5kpy9hyRI+IsV6VnKalE9pZRSuZG3x3+q6fubd25mQ9' +
                                        'MGACqcirQSsFO5+u9XsWVne8/K/kOTrmOXFrsiPL3fGmBRUdK+AuLrH3Z3MkJxM58C29tfW9tsjGsosUr41t7HRbf/T4ZD' +
                                        'nwqYx0aZxykId6TazcBJqd5XSqnuMsasL3Qbik3sPcnLUFobL+hi2SZhMb2lHy+JlvyYOGxit4dmYofHhg1IndIxYpcRXZ' +
                                        '/QhMuLjK0aG9205pPVWbev19gA7Admh8HeEY6bj9vneAaVDQLCw2hvbU25QrtKwbuNy0wd+5jkPUNH5rUBNqkXwLNJXrF' +
                                        'ZKVUUMqlk3' +
                                        '1/k8p7kd8BIkg+prYh5uE7JMs8oVoXT3rPz5pY3Uu5bZpelNdx281dvYdiASP00fyP3vdF5CZjYXqSxu4/t9H5HB4zIb9WF1' +
                                        'lBr906wHdgE9iftte' +
                                        '++W/3d6M86jNZ9QvIp/WklaneDJcnLfghsLtZ6bn3V/PnzcxIIW5b1WcdtxmS6rr3qRbKsdFlYufq+J5Gze5L3TBovlH' +
                                        'j6fmyvQ6IE7LfOeZtjRnea7ZdQbAAD8NIHf+3ymAsO/FGX+5w6/rToz69vfj08vDYwfnp/bC/S6CGjU6511DDj7mipk' +
                                        'XyJLW2yZ2Wn3Lf0bAB3W3j+fsdhNJ2mnwNe9xa16w6BbyV7z8AzPdmWfqjTwn4i0qkYajaSJLUOzGKxwyM6bjDGFMWq4f' +
                                        '1VkhW1s/zPvUfl7fue73vSIynGbrDzIjlvbH4DT8K9SQcMPaBTAvb4IdU8Ou1xlpy1NGXvzsLjf8ePD7o4+vofG/+RVqH' +
                                        'Z0YNGs+SspQmDr2NGH8OSs5ZGh/oa/Y3c+Vo4NaStvIhVYSHAfcvujZs5dvNxt3Ds+M7Pnp8ffyvnHNKtAsUZ687yAuIXP' +
                                        'L/HN/b6RnQY7ePtH7N0U9c1U/uNus7VwdNiJS/mKpLHoK' +
                                        'mO6akKyXoaGOVVogBDRL6Ww0t0ykdwXfe4RDsmk6iXybbtJYn2VT0q7ndrjJlc7Atv9vT3PZf3JK85Rm0STd//pOUT1n6+' +
                                        'hvFDqqlwKjig6sBOuStldhkTqyYxsWoSN33l5mjCdpsRu4ygzG6fX75l5xZu+WfXK/+3nWdi1SQenfY4Kz/7N5+2hHuid6/' +
                                        'YjQm7fSl6Xr/r57Zl8+KCLWOBXWljDbBwm1wWvraQuqPCVSiH7TqMJ89exOsfvR6dUbZn5Z5UV1XjD/lZvnF5yoKw3bV4z' +
                                        'V+YOjZcvLm6qpr3fro+WmC2oqSCrzak35PpNrmcGDMb7Zn39LkZR5ht6jhIPHxpF1+tY6ARLkg2EdMYlqRZoSUz4evemOy' +
                                        '6kWG0lIVtBV5OlhtlhJMF6rvf0CJkczh0v4hsKBR61nHi/8s1xsxYsGDBhFysBiwi/+i4BpGInEmSAp8dRdaG6Rjsr8rhy' +
                                        'twqS4l+t5E6dkW7llEhvu+5uic9NindDXSuoxY7' +
                                        'bX/KyPgiuh2DIAj38sT+iw2K/rHxH5z//Llp9RYB/PgvM9myc0s0+Dp6r6M5eq+jmVg1KXreRn8jN/7jBm5flqiEEJgSg7' +
                                        'O7wzX' +
                                        '/vIoHVzwY3V7mlHHE6COYOnYqU8dOjQZF178wN27ByHy49aVfsHzj8ujr0UNGR9uxx6AMFzV24Tv7tK+jpUVj4xnDQQZOt' +
                                        'iwWmzo2WZdzO3WczRwmd+pNqmMUdUw3wqt56bURdk/6XjgoejrVdQVuSeMqSeslGcPXqUtRwNNKPoRXDFItpWAlWKguKoN' +
                                        'ew0jxyic6bg+FQr9J9xypOI5za8dtxpjJSRbDS+RnCbYVrnq2irIs67cdt4nI5cXca5Tv73s+70nPrdYj4LnxidixCdgH' +
                                        'VsX3olTfO44LX6jhmXVPs3rbqrjp+BAOWjY0beCZdU9z4Qs1fOORr6cdFEF4gci9FuzJwysfigvC/K6fDU0beHjlQ5z1' +
                                        'v2cmDYpiWWUW5y0+h9tevY3lG5fT2Nr+/GhsbeTV' +
                                        'Da8y/XfT8r+CdcSX7zqIB998MG6Ir7G1MdpzlK4pex3GyIEjAWjyN/HXNHK3+pPY3hMDwzHMsWChZ' +
                                        'bPUgiarDon+g48seKKL4GQ' +
                                        'zsDjZ+ynbYvi6qeMx6pjOHCZH/9VxdiQY+3rS6wovMy+N3h6Xd1O2AV6OBoZt/y7nGlPHJstwYxYfq1icTx2zOtzXWeZy' +
                                        '3gYyKtLoOM5VHbcZY6b6fL653W1kTU3NyiRlEe7u6mHR0NDwE2NMXP6HiGzsqlK56hkXXXTRKx1/t8aYUbZtLyhUm9KRz' +
                                        '+97Pu9JjwyltfEC4eG0tun7sStgJ6qZtvCd+7tcxbq7znkuR8XNDfxsydVc8+pVeM0ebquXcNTi2Hu+mdbp7CuyX/QS4A' +
                                        'cPf79bxwNM22969Oc/rX+eoBfs9jn7jDwUWxW4ojurXhs42cDJ2J3fSHHNzWKoSesCd7BM6ticbOacgeEGFna6fi+QapgQ' +
                                        'wIK7Et1XAwemLpsdr6amZqXP51tojIlLODTGX' +
                                        'Ofz+b7iOM6Pkw0zNDQ0nC0i04C3amtrEz5YHMf5L9d1lxIzJGaMGeU4zt/nz59/fqIk7UgZhUQrBl+YwUdTeWZZ1iUi8n+x' +
                                        '24wxMxo' +
                                        'aGlaKyOVJEpIBWLBgwQTXdY8TkTNra2sPTbZfruX7+56ve9KjgRGEp+/bpeH/YZZ+vBRPPCxjccDQAyi3y2l1uzndvMCM' +
                                        'bbAH25iAw' +
                                        'Wv2kGBeMkZ6xPSYwGjRah1Gi+OyR04DAOEObuvZOmkCmwW+nklVeoFbTBrlTXqhP2VzkMB3Mj2mtrb2XJ/Pt1/HHhpjzF' +
                                        'TXdf/t8/mW0T6jpxLYL5IUPdAYg4hMARI+KGpqalY2NDRcC9zZ4a1qEfm/hoaGVSLyfGTb/saYQ+mcVwRwSaqHiup5F1100' +
                                        'SsNDQ2XkOB3a4x5yufzbQT+DdEJHNHvjuu6AwGMMcyfP//InixFk8/ve77uSY8Xvoidvt/qtrL28zVAeB2iA6uSD+X3Nlap' +
                                        'hbObU1TlRTJRXTWB6qpwykggF' +
                                        'OCZFZp4HSeckJsTHsz2buOyXJ0vHSK8nGlQBMA86kWSr8OU8prhocLiFL4PnRcq64KB4dnMTnRd99siknDY1Bgz2RgzO/L' +
                                        'vnMgDJa4HKNV6MJHhr0uSvF0dc+6pJAmKdAitOKX63RpjRhljpqb67gB4nvfDnmhrrEJ937O9JwV5ZIcC7dP3l3QxnNarm' +
                                        'ZjyIruEp/f3FrG9RX997680Nzfh+TMZNOjjwvXPZpDFw7SNwOOey6Fp5ffkiMBmD2bLbRyVcVDUdg7DiV3VfevgXs/l0D' +
                                        'QTvAvGg0syDPru9WCPbIY/Z82atbW2tvabInI9pH+8iGwEzunqL/6ZM2f+SkROIsEU/hTnXmaM+YoGRcWt7XebJJ8slWYR' +
                                        'uct13bq8NCyFnvq+5+qe9PhQGgBe+/T9pR8v4Qf7/hcQXujxnrfuKUiT8sqAPbBter+H9IIAIza/aNG/wrO43SYXMzRxiZ' +
                                        'd+aR5PevAk8EPmMBmbwy1hLzHsgzC+Y6K1CC8bw1oP/g' +
                                        '68kMtVpiM9QH9pmykX9x48boT3PeHZtJcVSGUezQKnyBwmWxbfEzgkNrlbhHeMYUmnz3kZA8VKnqNUcOHPdZTUMd2C74gwJ' +
                                        'fZ3mI/fX21t7dz6+nqf4zjfF5HvAF+KVAmPXFM2Ah8Br1qW9ceZM2emPQQSGQp7OjIr7WTCQwixwxnNIrI' +
                                        'ym3OrwkrjdwuwSk' +
                                        'Q+JDyMtLgYhkYL/H2HNO+JsW4qUEeGAafcYcrIKfztjHDu1OptqzhwYf5KZrReEgDCSwFU3zsub9fpihfwcBtd6LzuZVEYMX' +
                                        'AEH169kcj4LnvePIpNzZsAMAMtnF3yk10rIo8F5oROzcvJ+4I6ZllJ8nsEHpd5nNLTTVJKqb6mcNkvAm7I462tb0VXwB47eB' +
                                        'zldnnBmtRTrNLI8Nqg+PIixWLaftPbZw7+Z2k0KAKQ7YlLvCillFJ9QUHTgiXo0RJq4Z1P3g43xlh9KgG7K/YAi9KqEqwBxZ' +
                                        'V/lGgYLUrAbS7+oUCllFIqG4XJMYrhBjyWfL' +
                                        'yUA6vCideHjpySt3pc5XeW5uW83WKBPai9vIgEChsiDSwbyDe++I3o6yc7BkaAtHjILhbGKcLuLqWUUqobCj6RXFyPFVvaS1' +
                                        'hMGTmlgK0pHOMYnN0c7CE2hVwg74QJ36bUCQeQq7auYtXWxCVtQk1FmiCllFJKdUPBAyOANz56I/pzn5uynyGrzKJkaAnWw' +
                                        'MLkH8UOoyXqLYoKCG6rDqkppZTqWwo+lAawYtNyWoItVJRURBOwU62Aver8NYweNLr9+K3LmfKH9hW9l5y1lIkxtdca/Y0' +
                                        'Mb4gvFbR55lbWN73Ppy2fcfReR0e3tw23tc1gS3T+hcf/jtMnnMGFL9Rw9zHtZVle/OBFTnjsOJ495fm4c174Qk2n0iY3' +
                                        'f/UW5hzSvqZf3Ew5A78/9fecPuEMfrToAv57WngJgwfffDBa6uPnx99K3VHxy1Fc8OgPuW/ZvQnf37BtA1/8xd6kUmKXc' +
                                        'Hz18dHXnfKLOvCaXKwynb6vlFKq7yiKHqPWUCtvbX0LCCdgHz' +
                                        'oyeSmXtoCl/M7S6L9Ym2duZe9B+8S9/7n/c1ovCXDO/vH1HtuCp7b9Gv2NbJ65ldZLAlz4Qg3ld5Zy' +
                                        'x2u3M7FqEguP71yt4e5jF' +
                                        'kSPfXjlQxy919Fsnrm' +
                                        'V3St2i27f0LSBW782L+64hcf/jjmHXMYdr90e3W9w2WBWnb+m0zVuO+52ap7/Ec41VjQo+vMFf6HuqDrmvTQP+wqDfYVh8dr' +
                                        '2RUV/f/oDnd4fXDGY9366Pul9BTh6zFQGlQ8C4OOmj1nywT9T7o8H7g7tNVJKKdV3FEVgBLB8U3ue0aFJ8oxWnb+GRn9j' +
                                        'pzWI2npznj3leSrLKjv1DlXfO45GfyMXTboobnujv5ETHjsu+vq595+lsqySFz94MdrDc/Xfr2JD0wa+tPuXOrXn4ZUPRX' +
                                        '8+57mzafQ3UllWGde79OjqP1JZVhkXlJ0+4Qxe/OBFrv57e+Hh3759D6MHjebmr8YvDvzc+8/yu38vDOcfDbb5+bdvZe' +
                                        'rYqTz45oNc+dwV0f2Oveeb0d6iMw86k8VrF8e9v+CfCxg9ZDQ/P/7WTp+jTeww2lPvPpV0v1iyQ6fvK6WU6juKJjBa8l' +
                                        'F778TEqsR5RqMHjea5959Neo4xg8ewYuvyhO+tb3qfvQft02lbrI+2f' +
                                        'wTAm1veoKPBZUM6bXvpPy/Fvf7c/zkbmjYkvP64IeFgri3w+Z9Vj8S93xYk7bHrHomvYcAqtzhk70No9Ddy1iPfT3idtsDn' +
                                        '4eUPxW1vC5L2rNwz4XEldgkn7XtS9HVXw2hROn1fKaVUH1IUOUYA/4wJjBL1GHUcBktkcNlgPvdvS/jepy2fdQqMCqE' +
                                        't8Ln7mAVx+Ulthg1IXS1h94rdACgZ6iQsL9IW+Nxz6m+559Tfdjp++MDE5z96zFRGDhoJQFNrEy+uS1jvLyFp8fAq' +
                                        'DFZp0cTZSimlVFaKJjBa/emqaAL26EGjGT5gOJt3ZlaM+3P/50nfawsoCq2tVypRQnYmjG1whth4AYPb5EIovP3Dxg' +
                                        '+B+ETsdMQOoz3xrycIusGM2uM1e1i7a2CklFKqdyuaJ5kgvLXlrejrjtP2F75zPxuaNnD4qCOSnmPd5+viZqPF2nvQ' +
                                        'Pry++fXcNLYb1mwLJ1gf9YWjsjr+Lxv+QmVZZXRIziqNTO+vtMGCNZ+sBuAbY45OdZpOYofRHln+cMbtkqBO38+7ed' +
                                        'R78zCJ/mmdNKWUyo2iCYwgfjjtgN07lwZ5dPUfGT1oNEvOil8Zu+11WyL15plb495fdf4aKssq4xKtC2XhO/fz4gc' +
                                        'vcvqEMzolWndsdyJtyeBzDrksbnjxT2f9mQu+8SMWvns/i9cu5syDzuyUaP3Z9Yl71KbsdVjWw2ixvCYXEU3EVkop' +
                                        'lTvz588/cv78+Ufm4lwLFiyY0NW5imYoDdoSsGcDcOiIKYhI3Bo5V//9Kq7++1W0XhKIW2codnZY+Z2lrDp/Tdz7G' +
                                        '5o2FFU5kLa1juYcclncWkZ3vHZ7WsdX3zuOZ095Pi5PqW2GnT3Q5oQnjuPZk5+n7qi6uLWM5r00L+H5YofRnlv1X' +
                                        'MbDaFEeeDs87F0LuHS3UkqpXm/BggUTQqHQLcaYGW1/cDc0NCAiC2tra7tOOu7A5/P9CjjNdd1RMed6wnXdmlmzZ' +
                                        'sX1ShjrpuKpX1q9+wTevfDfAGzesZk9faOwS/Qhmy3P74Xzj7qo3vHuZSuprqoG4MwHz+CRFZkPpcVyqhyMnfmijy' +
                                        'LyWGBO6NRuXVwppVRB+Hy+xyOBTKfgZf78+UeKyP8BzaFQaEzHYCRWfX19leM46yD8XDDGvCQi+wAXGGNGichdtb' +
                                        'W1P8miXcuMMQ9GNl8IVAOrZs6cOSF2/6LqMYpNwB6+y3CqSofxqfsJxtKVlbNhlVlYVRbuTg+32cUkCIGrqyZEg6J' +
                                        'AKMCzK/+329d1m1ycIUX11VJKKZV/9wMzgGM7vuF53mnGGETkL6mCIoBZs2ZtbWhouNa27edramqiBTt9Pt/rwFP' +
                                        'GmPOAtAKjhoaGs4EZIrKstrY2ushgfX39A7ZtLzfGVDc0NPxk5syZv2p7r6hyjARh6cft+UOThk/CDWqx0u6yB1i' +
                                        'UVpVgVVidugenxwyj/fW9v9Lsb+729cQveAFNxFZKqf6ktrb2aRHZaIwZ1TGPxxhzHIBlWXekc66ZM2f+KjYoajt' +
                                        '/5MeBGTTrysj1fbEbI8HZPQAicmbse0UVGAH888P2BOzD9jwMcQXP1Ydst1lgV9qU7O5gStp74GLzi9Je1DENni7' +
                                        '6qJRS/dEfATzP+2HbhgULFkwAqkVk40UXXfRKtieOCbYy+Qu+GmDmzJmd63rB6wDGmOIdSgNYsbl95eprv3od137' +
                                        '1ugK2pv8QkZwGRhIU3J0e9oCii72VUkrlieM4d7uuO5uY4bRQKHR6ZCLVH7tzbs/z5rQNx6Wzf319fVXXewEdeq' +
                                        'CK7qkVO2Vf9ZwVHy9nU/OmnJ7Ta3a1jppSSvUjNTU1K0VkcexwmjHmdAgHTdmed/78+UcaY2ZEznNVV/tDdLgsY' +
                                        '0UXGG1oXM/mHZmteK2678rFV+Z+eqKEp+8rpZTqP4wxz0B4OC1mGG1Zx5yhdEVmtD0HICLXZ3OeLtYuWhX7ouiG' +
                                        '0gCWb17Ot774LQDOfOIMHnk3PH3ccizsUp2+ny/ObjZes4cEcxcieTs8rAFWVtP3lVJK9T4zZ878VUNDww3Asa7r' +
                                        'rgCImSafkZigaKCIPFFbWzs3k+MjU/Qne553GtAxv+nLkX3+Ebux6HqMAJZvas8zmji8vcSHF/J0aCaPrFILZzcHe' +
                                        '7ANOQxk3CadWaiUUv2JiPzFGDOK8HpBhEKhBzI9R0NDw9ltQRFwSW1t7cnJ9vX5fI83NDRIQ0ND3DT+toDMGHNeb' +
                                        'M5RfX19lTHmUqDZcZy4MhFF2WO0JCbPaNKI+NpnbtDFKSvKZvcNBqxyC6vMwt3u4u7w6G6IJH7B83tYZUUZhyull' +
                                        'Moxy7LuEJEZhIfRnsgk3yey6vVvgKkAIrIY2DuyejUAxpj1bWsPLViwYILrujMi+54JRPebOXPmr3w+39eMMTMcx1' +
                                        'nn8/keAxqB04gEXB2H5orySRWbgH3w8IMxMY9mnb7fQwzYA21KqhxMDgIaV+uoKaVUvxGZlr8KwBizKJNjPc/b3Rg' +
                                        'zte21MWaqMWZ27L/YtYciCd/LgOaO6xUB1NbWniwid4lIszHmHGPMbODfInJS7MKO0esVU0mQWBt/sonhuwwH' +
                                        'YN+7v8SqT2MCOgNOuRNXR03llxeIlBcJZX8Oa5CFPSB5jpiWBFFKKVVoRTsmFZuAPWn4pPjASMBzPWyndyViX3fE' +
                                        'XK6cktYswx5z52u/5Mq//7TL/axSC2to6vIiXfGaPaxyS0u8KKWUKlpFOZQG8XlGsQnYbbyAp0MzBRAtLzKgc3mRL' +
                                        'un0faWUUkWuaHuMOpYGScQLer1q+v71r87l+lczmmlYnCywB9lYA6xw7lAg/RDJ2+FhVVgYR3uNlFJKFZ+i7TFaH' +
                                        'lMa5NCRh8YlYLfR6fuFZRwTnt4/xIYM4tOQTt9XSilVpIo2MNq8YxMbGjcAUFFSwfjdqxP' +
                                        'uFwroQ7bQrDKLkqElWANtJJ2OoEB4+r5SSilVbIo2MIL4afuH7ZF4OA1Pp+8XBQP2LhYlVSVYFV3nH+n0faWUUsW' +
                                        'oaHOMAFZsXs739v0eAFP2OIzfvbUw4X5uwMWUm4yn75c75Xx+cVO329lbpDsDrTuMBXZlTP5RsvIiLngtXsrp' +
                                        '+0oppVRPK+oeo9jSIJMSzEyLEnBD2mtUTEyJwdk9dXkRr1lzxJRSShWXou4xen3Ta3jiYRmLA4cdiMEgSQZp' +
                                        'JOghjpVRr1FrqJXyO0tz1VyVQLS8yA4Pd0eH9Y8E3GYPp1J7jZRSShWHou4x+mTnJ6z5bA0QTsA+cPjElPu' +
                                        '7Ae01KkoG7F0tSoY6WOXx+UfS4iEh7TVSSilVHIo6MIL4aftJE7AjxNWhmWJmbIM92MbZzY7rq9Tp+0oppY' +
                                        'pF0QdGK2ICo0QrYHfk6vT9omeVRq' +
                                        'b3V9rhb6BO31dKKVUkijrHCOKn7NccXEPNwTUFbE3/sftvhrAjuCOv17ArLOxyC3e7G841GmIXfaCulFKqby' +
                                        'v6wGjJR/+MJmCrPsiAPdDGGiB4IdFMeKWUUgVlYfh1oRuRSmuolbXb1ha6GSqPBPlMbHNxyO9OL3RblFJK9W' +
                                        '/hue03so+x+L0RjixwexIat9s4Nm3fRHOgOaPjnAon40UfVc8RkZBAQ9CErudSPit0e5RSSqn4qOFGjrMs7kUYVa' +
                                        'D25JRxDE5p0Y8W9lPysnihCwOXsbLQLVFKKaXadO5OmYuDzcXGcLOBigK0KafsMhtLc3qLyXvieXMCl7lPFrohSi' +
                                        'mlVEfJx5nmsptl82sxnGFS7Vckpo2fzknV05g0fBKThk9i+eblLN+8nKfXLOJ/P/jfQjcvr04ccxInjjmRicM' +
                                        'mMrFqEiu2LmfFlhU8ve5pnl73VKGbB4AgTQZu8juhembhL3R7lFJKqUS6Dnhu5kADvzNC14sIFUBl2WDuO/F' +
                                        '+plcnz9tdtOZJfvTCBTT6G3uwZflXWVbJPcf+lpPGTku6z1NrF3HBn39YsM8uiCDmgYAXnMPlbClII5RSSqk0pd8' +
                                        'TdDNnGuE3BobksT0ZqSwbzH' +
                                        's/fp/B5YO73Pdz/+dU3zuuzwRHlWWVrDp/DYPLivezC7JELDM7+JPgkh69sFJKKZWl9JNvruZBCbGnB7cIBPPY' +
                                        'prTdf9LCtIIigMFlg7nn2N/muUU957ffujetoAgK8dnlQ/G8MwOXhA7XoEgppVRvkllW8lx2cg1XS4gviuFJKW' +
                                        'BZsmnjpzNtfPIhpEROGjuNE8eclKcW9ZxwTlFmn6MnPrsgOwW5zr9LqDpwmfsQBi1cp5RSqlfJbrrWXD6Uq5k' +
                                        'hhilieC/HbUrLtBQ5RamcNLb3B0bZfoZ8fnYReSzghKoDl4ZuoIadebuQUkoplUfdm8d+DUslyDjPcIFAZqs' +
                                        'vdtOkNArKJnLA0ANz3JKeN7FqYlbHHViV+88uwgoXOSowJ3Qqs/gw5xdQSimlelDupuHfykDL5QbxuNiAnbP' +
                                        'zJuFenf0oTdkvS3r1ititlwSyPrb8zlyVI5PNnshVwWZ3IXPxcnRSpZRSqqByt/LhF' +
                                        'TR7V3GJCOPE8ErOzpvEis0rsj7Oc3v3c/ytrdl99myPiyUiIU+k3h8MjQvOce/ToEgppVRfkvsloX/G+3I1' +
                                        'X/EMx2HyN7SyfPPyrI/zAh5SyMzxblqRZYCT7XHt5Hkk' +
                                        'dEBwTmg2V/Ts0KlSSinVE/JXK+Nq/uQF2ceDKwVac336RauyqyjRdpwX7L0dHU+tzW4162yPE2GlixzvvzR' +
                                        '0vNY2U0op1Zflt4jYXEJcwy8kyGiEPwi5m769aPWTLFq9KMNjFrFodSQwCnmI1zt7jZ5e91TGpT6yOUaQz' +
                                        'zy4ONAcPCB0aej5jA5WSimleqGezUAOlxe53wgH5+J0lWWDef/i9VSWVXa5b6O/kX1+vTeN/s+j24xtcM' +
                                        'qcXDSlx1WWVbL6/LVpf/bx945Ne+VrEfEM5l6/Cf6US/msu21VSimleoueLTt/NW/J1XzZM3xfpPsP3E' +
                                        'b/5+zz67277DlatHpRp6AIQFzptYnYbcFOV71AT697KqOgCORlIXSwf07wRxoUKaWU6m8KN2d9LgNwuN' +
                                        'LAFQZKunu6aeOnM616OpOGT2Li8Ims2LyC5ZuXs2jVk9Hhs4QMOOVOr56+f+KYkzhp7ElMrJrIgVUTe' +
                                        'WvrClZsXcFTazMaPntPPG9O4DI3u+QtpZRSqg8ofDQwlz2Nwz0GjitUE6xSC9vJ+9JLRUmQncCtASd0' +
                                        'K7PwF7o9SimlVCEVPjBqcxNfM4Z7jTC2EJd3Knp3r1GmBBHEPBAoCV6pK1YrpZRSYc' +
                                        'UVCczFopRzjccvDQzqyUsb28Ip6x+9RoIsEcvM1sr3SimlVLziCoza3MpAK8CtAjXG9FyCuFPuYKzi' +
                                        'vCW5IR+KJ3WB' +
                                        'Oe7DaOV7pZRSqpPijgJupNpY3GOEr/bI9SxDSXnvnL6fiiB+4M7ALqEbtfK9UkoplVxxB0ZtbuZbRr' +
                                        'jHwBfyfSm7zMaye3YVg3wSkccCVqiOS3iv0G1RSimlil3vCIwA5uLgcKmB6w2U5+06fWD6PoAIKzw' +
                                        'js0OXhl4udFuUUmTO8jMAAAL8SURBVEqp3qL3Pf2vY5jlcIcYvm/y1H5TYuGU9M5EbEE+E8x1waZgA' +
                                        '1r5XimllMpI7wuM2tzMgUb4g4ED8nH63jZ9X0RCAg1BE7peV6xWSimlstN7nvyJCIabOd0IvzGG3' +
                                        'XJ56t41fV+eFy90iVa+V0oppb' +
                                        'qndwdGbXJcXqRNsSdii7DSM3JJSCvfK6WUUjnRNwKjNuHyIgsMnJCL0xnL4BTh9H1Bmgzc5G8K3c' +
                                        'lcQoVuj1JKKdVX9K3AqM1NfM3Abw2M6+6prFIb2ymOXiMR8QzmXr8XvIbL2VLo9iillFJ9Td8M' +
                                        'jCB35UWKZvq+vOxJaHZwDisK3BC' +
                                        'llFKqzyr00z7/clBepLDT9yNlPC5zHypQA5RSSql+o+8' +
                                        'HRm3C5UUWGOHr2Rze03XUBNkJ3BrYJXS7lvFQSimlekb/CYza3My3DNxnhFGZHGZsg1OW/0RsQ' +
                                        'QQxDwRKglcyiw/zfkGllFJKRfW/wAignjKamG2E641Jv7xIvqfvC7JELDM7+JPgkrxdRCmllFJ' +
                                        'J9c/AqE24vMhtYvhBOuVF8jd9XzZ7Il' +
                                        'cFL3XvxyB5uIBSSiml0tC/A6M24fIi/8/AxK52zeX0fUH8wJ2BYOgWrqA5JydVSimlVNY0MG' +
                                        'rTXl6k3hiGJt0vR9P3ReSxgBWq4xLe69aJlFJKKZUzGhh1NJcBVglzRbjEQMJxM8uxsEuzm74f' +
                                        'KeNxYejS0MvdaqdSSimlck4Do2R+zheNy10GvpPo7Uyn7wvymWCuCzYF79YyHkoppVRx0sCoK+H' +
                                        'yIv9toDp2c7rT90UkJNAQNKHruZTP8tZOpZRSSnWbBkbpmIuFw0wj/NwYdm3b3PX0fXlevNAlgc' +
                                        'tY2QOtVEoppVQ3aWCUibnsZpVwg3hcZAxWikTs91ykNnRp6PlCNFMppZRS2dHAKBs3Um0Mdxs4yp' +
                                        'Ra4ji2ARCkycBNfidUzyz8hW6mUkoppTKjgVF33MhxxnB7SXmJawxL/F7wGi5nS6GbpZRSSilVOH' +
                                        'PZq9BNUEoppVT3/X+QUZFEsapRLgAAAABJRU5ErkJggg==',
                                }
                            ]
                        },
                        {
                            alignment: 'left',
                            width: '30%',
                            stack: [
                                { style: 'h1', text: 'INVOICE' },
                                { style: 'h2', text: '' },
                                { style: 'h2', text: this.invoice.storeAddress },
                                { style: 'h2', text: this.invoice.storeTelephone },
                                { style: 'h2', text: this.invoice.storeEmail },
                            ]
                        }
                    ],
                }, '\n', // optional space between columns

                {
                    canvas: [
                        { color: '#D3D3D3', type: 'line', x1: 0, y1: 5, x2: 595 - 2 * 40, y2: 5, lineWidth: 0.5 }
                    ]
                }, '\n',
                {
                    columns: [
                        {
                            width: '25%',
                            stack: [
                                { style: 'shipping', text: 'Shipping address' },
                                { style: 'h2', text: '' },
                                { style: 'h2', text: this.invoiceDetail.shippingCompany },
                                { style: 'h2', text: this.invoiceDetail.shippingAddress1 },
                                { style: 'h2', text: this.invoiceDetail.shippingAddress2 },
                                { style: 'h2', text: this.invoiceDetail.shippingCity },
                                { style: 'h2', text: this.invoiceDetail.shippingZone },
                                { style: 'h2', text: this.invoiceDetail.telephone },
                            ]
                        },
                        {
                            width: '35%',
                            stack: [
                                { style: 'billing', text: 'Billing address' },
                                { style: 'h2', text: '' },
                                { style: 'h2', text: this.invoiceDetail.shippingCompany },
                                { style: 'h2', text: this.invoiceDetail.shippingAddress1 },
                                { style: 'h2', text: this.invoiceDetail.shippingAddress2 },
                                { style: 'h2', text: this.invoiceDetail.shippingCity },
                                { style: 'h2', text: this.invoiceDetail.shippingZone },
                                { style: 'h2', text: this.invoiceDetail.telephone },
                            ]
                        },
                        {
                            width: '20%',
                            margin: [40, 0, 0, 0],
                            stack: [
                                { style: 'detail', text: 'Invoice No' },
                                { style: 'h2', text: '' },
                                { style: 'h2', text: 'Issue Date' },
                                { style: 'h2', text: '' }
                            ]
                        },
                        {
                            width: '20%',
                            stack: [
                                { style: 'invoice_d', text: this.invoiceDetail.orderPrefixId },
                                { style: 'h2', text: '' },
                                {
                                    style: 'invoice',
                                    text: this.datePipe.transform(this.invoiceDetail.createdDate, 'dd/MM/yyyy')
                                },
                                { style: 'h2', text: '' },
                            ]
                        },
                    ]
                }, '\n',
                {
                    canvas: [
                        { color: '#D3D3D3', type: 'line', x1: 0, y1: 5, x2: 595 - 2 * 40, y2: 5, lineWidth: 0.5 }
                    ]
                }, '\n',
                {
                    text: 'Order Details', style: 'order'
                }, '\n',
                {
                    table: this.dynamicBody
                }, '\n',
                {
                    columns: [
                        {
                            width: '80%',
                            alignment: 'right',
                            stack: [
                                { style: 'h2', text: 'Total Amount' },

                            ]
                        },
                        {
                            width: '20%',
                            alignment: 'right',
                            stack: [
                                { style: 'h2', text: this.invoiceDetail.total },

                            ]
                        }
                    ]
                }

            ],
            footer: [
                {
                    margin: [0, 0, 0, 10],
                    table: {
                        body: [
                            [
                                { border: [false, false, false, false], text: 'Note: ', style: 'note' },
                            ],
                            [
                                {
                                    border: [false, false, false, false],
                                    text: 'dummy content',
                                    style: 'content',
                                    margin: [0, 0, 0, 0]
                                }
                            ]
                        ]
                    }
                }
            ],
            styles: {
                h1: { margin: [0, 10, 0, 0], fontSize: 16, bold: true },
                detail: { margin: [0, 10, 0, 0], fontSize: 10, bold: false },
                shipping: { margin: [0, 10, 0, 0], fontSize: 12, bold: true },
                billing: { margin: [0, 10, 0, 0], fontSize: 12, bold: true },
                h2: { margin: [0, 5, 0, 0], fontSize: 10, bold: false },
                invoice: { margin: [0, 5, 0, 0], fontSize: 10, bold: true },
                invoice_d: { margin: [0, 10, 0, 0], fontSize: 10, bold: true },
                order: { margin: [0, 0, 0, 0], fontSize: 12, bold: true },
                total: { margin: [0, 5, 0, 0], fontSize: 10, bold: true },
                note: { margin: [0, 0, 0, 0], bold: true },
                content: { margin: [0, 0, 0, 0], bold: false, fontSize: 10 },
                th: { margin: [0, 10, 0, 0], bold: false, fontSize: 10 },
                td: { margin: [0, 10, 0, 0], bold: false, fontSize: 10 }
            }
        };

        this.pdf = pdfMake;
        this.pdf.createPdf(this.docDefinition).download('invoice');
    }

    private getDismissReason(reason: any): string {
        if (reason === ModalDismissReasons.ESC) {
            return 'by pressing ESC';
        } else if (reason === ModalDismissReasons.BACKDROP_CLICK) {
            return 'by clicking on a backdrop';
        } else {
            return `with: ${reason}`;
        }
    }

}
