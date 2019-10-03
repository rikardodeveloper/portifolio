/*
 * spurtcommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */
import { Component, OnInit, Input, Output, EventEmitter, ChangeDetectorRef, ViewChild, ElementRef } from '@angular/core';
import { MatSnackBar } from '@angular/material';
import { ProductControlSandbox } from '../../../../core/product-control/product-control.sandbox';
import { Router } from '@angular/router';
import { ListsSandbox } from '../../../../core/lists/lists.sandbox';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Subscription } from 'rxjs';
import { CommonSandbox } from '../../../../core/common/common.sandbox';
import { ProductControlService } from 'src/core/product-control/product-control.service';
import { async } from 'q';


@Component({
    selector: 'app-controls-product-detail',
    templateUrl: './controls-product-detail.component.html',
    styleUrls: ['./controls-product-detail.component.scss'],
})
export class ControlsProductDetailComponent implements OnInit {
    // decorator
    @Input() product: any;
    @Input() type: string;
    @Input() cartOptionValueArray: any;
    @Input() optionValueArray: any = [];
    @Input() optionNameSelected: any;
    @Input() totalPrice = 0;
    @Output() OpenProductDialog: EventEmitter<any> = new EventEmitter();
    @Output() emptyDecorator: EventEmitter<any> = new EventEmitter();
    @Output() QuantityChange: EventEmitter<any> = new EventEmitter<any>();
    // pagination count
    public count = 1;
    public align = 'center center';
    // whislist
    public quantity: any = 1;
    public isWish: any = {};
    public products: any;
    private subscriptions: Array<Subscription> = [];

    public produto: FormGroup;
    public edtCliente: FormControl;
    public edtTitulo: FormControl;
    public tamanho: FormControl;
    public midia: FormControl;
    public frente_verso: FormControl;
    public super_a3: FormControl;
    public fecham_arquivo: FormControl;
    public ajuste_cor: FormControl;
    public nome_arquivo: FormControl;
    public tipo_entrega: FormControl;
    public tipo_pagto: FormControl;
    public observacao: FormControl;

    public frente_versoChecked: boolean = false;
    public super_a3Checked: boolean = false;
    public fecham_arquivoChecked: boolean = false;
    public ajuste_corChecked: boolean = false;

    public submitted = false;

    public precoInicial = 0;
    public precoFrenteVerso = 0;
    public precoSuperA3 = 0;
    public precoFechamArquivo = 0;
    public precoAjusteCor = 0;
    public precoAdicional = 0;

    @ViewChild('filePath', null) filePath: ElementRef;
    // ipload image
    public imageUrl: any;
    public userArquivo: any;
    public userNomeArquivo: string;
    public imagePath: string;

    // default image
    public ifImageAvailable: string;

    url = '';

    files: Set<File>;

    userId: string = '';
    username: string = '';
    nomeArquivos: String = '';

    public tipoServico: string = '';

    public super_a3View: boolean = true;
    public ajuste_corView: boolean = true;
    public frente_versoView: boolean = true;

    _midia;
    _midiaList = [];

    public lblQtd: string = '';

    public order_id: any = 1;

    constructor(public snackBar: MatSnackBar,
        public controlSandbox: ProductControlSandbox,
        public listSandbox: ListsSandbox,
        public commonSandbox: CommonSandbox,
        private router: Router,
        private changeDetectRef: ChangeDetectorRef,
        public formBuilder: FormBuilder,
        private service: ProductControlService) {
    }

    // intially get the cart data and calls layoutAlign
    ngOnInit() {
        if (this.product) {
            if (this.product.cartCount >= 0) {
                this.count = this.product.cartCount;
            }
        }
        this.layoutAlign();
        this.initComprarForm();
        this.setProfile();
        this.changeDetectRef.detectChanges();
        this.super_a3View = true;
        this.ajuste_corView = true;
        this.frente_versoView = true;
        this._midiaList = ['Adesivo Brilho', 'Adesivo Fosco'];

    }

    onSelectFile(event) {
        console.log(this.order_id);
        this.nomeArquivos = '';

        const selectedFiles = <FileList>event.srcElement.files;
        this.files = new Set();
        for (let i = 0; i < selectedFiles.length; i++) {
            var nomeArquivo = this.userId + '_' + this.username.split('@')[0] + '_' + selectedFiles[i].name;           
            var blob = selectedFiles[i].slice(0, selectedFiles[i].size);
            var newFile = new File([blob], nomeArquivo);
            this.nomeArquivos = this.nomeArquivos + nomeArquivo + '|';
            this.files.add(newFile);
        }

    }


    ngOnChanges() {

        //document.getElementById('idQualquer').innerHTML = 'NovoTexto';
        if (this.product.upc) {
            this.produto.controls['tamanho'].setValue(this.product.upc);
            this.produto.controls['tamanho'].disable();
        }
        this.precoInicial = this.product.price;
        if (this.product.Category[0]) {
            this.tipoServico = this.product.Category[0].categoryName;
            console.log(this.tipoServico);
            if (this.tipoServico !== 'Impressão Digital') {
                document.getElementById('idQualquer').innerHTML = 'Qtd.(Chapa(s))';
                this.super_a3View = false;
                this.ajuste_corView = false;
                this.frente_versoView = false;
                this._midiaList = ['Reticula 175 lpi', 'Reticula 200 lpi', 'Reticula Estocastica'];
            }
            // else {                 
            //     this.super_a3View = true; 
            //     this.ajuste_corView = true; 
            //     this.frente_versoView = true; 
            //     this._midiaList = ['Adesivo Brilho', 'Adesivo Fosco'];                
            // }
        }

    }


    //#endregion
    // create form group for checkout
    initComprarForm() {
        this.edtCliente = new FormControl('', Validators.required);
        this.edtTitulo = new FormControl('', Validators.required);
        this.tamanho = new FormControl('', Validators.required);
        this.midia = new FormControl('', Validators.required);
        this.frente_verso = new FormControl('', Validators.required);
        this.super_a3 = new FormControl('', Validators.required);
        this.fecham_arquivo = new FormControl('', Validators.required);
        this.ajuste_cor = new FormControl('', Validators.required);
        this.nome_arquivo = new FormControl('', Validators.required);
        this.tipo_entrega = new FormControl('', Validators.required);
        this.tipo_pagto = new FormControl('', Validators.required);
        this.observacao = new FormControl();

        this.produto = this.formBuilder.group({
            edtCliente: this.edtCliente,
            edtTitulo: this.edtTitulo,
            tamanho: this.tamanho,
            midia: this.midia,
            frente_verso: this.frente_verso,
            super_a3: this.super_a3,
            fecham_arquivo: this.fecham_arquivo,
            ajuste_cor: this.ajuste_cor,
            nome_arquivo: this.nome_arquivo,
            tipo_entrega: this.tipo_entrega,
            tipo_pagto: this.tipo_pagto,
            observacao: this.observacao,
        });

    }

    setProfile() {
        this.subscriptions.push(this.commonSandbox.getProfile$.subscribe(profile => {
            if (profile) {
                this.username = profile.username;
                this.userId = profile.id;
                this.produto.controls['edtCliente'].setValue(profile.firstName);
                this.produto.controls['edtCliente'].disable();
            }
        }));
    }

    validateAllFormFields(formGroup: FormGroup) {
        Object.keys(formGroup.controls).forEach(field => {
            const control = formGroup.get(field);
            if (control instanceof FormControl) {
                control.markAsTouched({ onlySelf: true });
            } else if (control instanceof FormGroup) {
                this.validateAllFormFields(control);
            }
        });
    }

    // align layout based on condition type
    public layoutAlign() {
        if (this.type === 'all') {
            this.align = 'space-between center';
        } else if (this.type === 'wish') {
            this.align = 'start center';
        } else if (this.type === 'detail') {
            this.align = 'start center';
        } else if (this.type === 'home') {
            this.align = 'start center';
        } else {
            this.align = 'center center';
        }
    }

    // change quantity of the product
    public changeCount(operation) {
        if (operation === 'remove' && (this.quantity > 1)) {
            this.quantity -= 1;
        } else if (operation === 'add') {
            this.quantity += 1;
        }
        this.calcularTotal();
    }

    public calcularTotal() {
        if (this.precoAdicional > 0) {
            this.product.price = (this.precoInicial * this.quantity) + this.precoAdicional;
        } else {
            this.product.price = (this.precoInicial * this.quantity);
        }
    }

    public onClickCheckBox(operation) {

        if (operation === 'frente_verso_click' && (!this.frente_versoChecked)) {
            this.precoInicial = this.precoInicial * 2;
        } else if (operation === 'frente_verso_click' && (this.frente_versoChecked)) {
            this.precoInicial = this.precoInicial / 2;
        }

        if (operation === 'super_a3_click' && (!this.super_a3Checked)) {
            this.precoAdicional = this.precoAdicional + 5;
        } else if (operation === 'super_a3_click' && (this.super_a3Checked)) {
            this.precoAdicional = this.precoAdicional - 5;
        }

        if (operation === 'fecham_arquivo_click' && (!this.fecham_arquivoChecked)) {
            this.precoAdicional = this.precoAdicional + 70;
        } else if (operation === 'fecham_arquivo_click' && (this.fecham_arquivoChecked)) {
            this.precoAdicional = this.precoAdicional - 70;
        }

        if (operation === 'ajuste_cor_click' && (!this.ajuste_corChecked)) {
            this.precoAdicional = this.precoAdicional + 10;
        } else if (operation === 'ajuste_cor_click' && (this.ajuste_corChecked)) {
            this.precoAdicional = this.precoAdicional - 10;
        }

        this.changeCount('default');

    }

    // add product to wishlist
    // public addToWishList(product) {
    //     const currentUser = JSON.parse(localStorage.getItem('user'));
    //     if (currentUser) {
    //         const params: any = {};
    //         params.productId = product.productId;
    //         this.controlSandbox.addToWishlist(params);
    //     } else {
    //         this.router.navigate(['/auth']);
    //     }
    // }
    // add product to cart

    public addToCart(product) {
         
        this.submitted = true;
        this.changeDetectRef.detectChanges();
        if (!this.produto.valid) {
            this.snackBar.open('Verifique os campos Requeridos', '×', {
                panelClass: 'error',
                verticalPosition: 'top',
                horizontalPosition: 'right',
                duration: 3000
            });
            return;
        }

        let frentVerso: string = "";
        let superA3: string = "";
        let fechamArquivo: string = "";
        let ajusteCor: string = "";

        if (this.frente_versoChecked) {
            frentVerso = "Sim";
        } else {
            frentVerso = "Não";
        }

        if (this.super_a3Checked) {
            superA3 = "Sim";
        } else {
            superA3 = "Não";
        }

        if (this.fecham_arquivoChecked) {
            fechamArquivo = "Sim";
        } else {
            fechamArquivo = "Não";
        }

        if (this.ajuste_corChecked) {
            ajusteCor = "Sim";
        } else {
            ajusteCor = "Não";
        }

        this.products = product;
        const param: any = {};
        param.totalOptions = this.totalPrice;
        param._optionValueArray = this.optionValueArray;
        product.productCount = this.quantity;
        product.titulo = this.produto.controls['edtTitulo'].value;
        product.tamanho = this.produto.controls['tamanho'].value;;
        product.midia = this.produto.controls['midia'].value;
        product.frente_verso = frentVerso;
        product.super_a3 = superA3;
        product.fecham_arquivo = fechamArquivo;
        product.ajuste_cor = ajusteCor;
        product.nome_arquivo = this.nomeArquivos;
        product.tipo_entrega = this.produto.controls['tipo_entrega'].value;
        product.tipo_pagto = this.produto.controls['tipo_pagto'].value;
        //product.image_arquivo = this.userArquivo;
        // product.image_arquivo = this.files;
        product.arquivo_anexo = this.files;
        product.observacao = this.produto.controls['observacao'].value;
        product._optionValueArray = this.optionValueArray;
        product.total = this.product.price;
        product.totalAux = this.precoInicial;

        let auxPric : any = this.precoInicial;   
        let auxPricCFloat = parseFloat(auxPric);        
        product.price = auxPricCFloat;      
        console.log(product.price);

       
        this.controlSandbox.selectedOptions(param);
        this.controlSandbox.addItemsToCart(product, param);
        this.emptyData();
        this.router.navigate(['/cart']);


    }

    // clear the decorator optionValueArray value in the product detail component
    public emptyData() {
        this.emptyDecorator.emit('clear');
    }

    // emit the data from open product dialoug component
    public openProductDialog(event) {
        this.OpenProductDialog.emit(event);
    }

    // emit quantity while changing
    public changeQuantity(value) {
        this.QuantityChange.emit(value);
    }

}
