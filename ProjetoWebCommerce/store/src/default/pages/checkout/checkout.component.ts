/*
 * spurtcommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */
import { ChangeDetectorRef, Component, OnDestroy, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { MatSnackBar, MatStepper } from '@angular/material';
import { emailValidator } from '../../theme/utils/app-validators';
import { ProductControlSandbox } from '../../../core/product-control/product-control.sandbox';
import { ListsSandbox } from '../../../core/lists/lists.sandbox';
import { ConfigService } from '../../../core/service/config.service';
import { AccountSandbox } from '../../../core/account/account.sandbox';
import { ProductControlService } from '../../../core/product-control/product-control.service';
import { CommonSandbox } from '../../../core/common/common.sandbox';
import { Subscription } from 'rxjs';
import { Router } from '@angular/router';
import { Store } from '@ngrx/store';
import * as authAction from '../../../core/product-control/action/product-control.action';
import * as store from '../../../core/state.interface';
import { saveAs } from 'file-saver';

@Component({
    selector: 'app-checkout',
    templateUrl: './checkout.component.html',
    styleUrls: ['./checkout.component.scss'],
})
export class CheckoutComponent implements OnInit, OnDestroy {
    // decorator
    @ViewChild('horizontalStepper', { read: MatStepper, static: false }) horizontalStepper: MatStepper;
    @ViewChild('verticalStepper', { read: MatStepper, static: false }) verticalStepper: MatStepper;
    // reactive form
    public checkoutForm: FormGroup;
    public firstName: FormControl;
    //public lastName: FormControl;
    public company: FormControl;
    public email: FormControl;
    public phone: FormControl;
    public country: FormControl;
    public city: FormControl;
    public state: FormControl;
    public zip: FormControl;
    public zipCodes: any;
    public address: FormControl;
    public addressLine: FormControl;
    public checked: boolean;
    // validation
    public submitted = false;
    public newAddress = true;
    public dataOptions: any;
    // address option
    public showAddresses = false;
    // image
    public imagePath: any;
    // checkout list name
    public semiColon = ':';
    // subscriptions for unsuscribe the api respone
    private subscriptions: Array<Subscription> = [];

    public comprou = true;

    public frente_versoView: boolean = true;
    public superA3View: boolean = true;
    public ajusteCorView: boolean = true;

    constructor(public formBuilder: FormBuilder, public snackBar: MatSnackBar,
        public productControlSandbox: ProductControlSandbox,
        public listsSandbox: ListsSandbox,
        public accountSandbox: AccountSandbox,
        public commonSandbox: CommonSandbox,
        public configService: ConfigService,
        public router: Router,
        private service: ProductControlService,
        protected appState$: Store<store.AppState>,
        private changeDetectRef: ChangeDetectorRef) {

        this.comprou = true;

    }

    // Initially calls initCheckoutForm function
    ngOnInit() {

        this.getCustomerAddressList();
        this.commonSandbox.doGetProfile();
        this.initCheckoutForm();
        this.setProfileDetails();

        this.imagePath = this.configService.getImageUrl();
        this.changeDetectRef.detectChanges();

        this.productControlSandbox.cartlist$.forEach(element => {

            if (element.length < 1) {
                this.router.navigate(['/home']);
            } else {                //'Reticula 175 lpi', 'Reticula 200 lpi', 'Reticula Estocastica'                
                //console.log(element[0].price);
                if (element[0].midia === 'Reticula 175 lpi' || element[0].midia === 'Reticula 200 lpi' || element[0].midia === 'Reticula Estocastica') {
                    //console.log(element[0].midia);
                    this.frente_versoView = false;
                    this.superA3View = false;
                    this.ajusteCorView = false;
                }
            }
        });
    }


    // calls accountSandbox getAddressList
    public getCustomerAddressList() {
        const params: any = {};
        params.limit = 0;
        params.offset = 0;
        params.count = 0;
        this.accountSandbox.getAddressList(params);
    }

    // passes address details to edit
    selectAddress(param) {
        this.showAddresses = false;
        this.editAddressList(param);
    }

    // create form group for checkout
    initCheckoutForm() {
        this.checkoutForm = this.formBuilder.group({
            'firstName': [''],
            'country': [''],
            'email': [''],
            'phone': [''],
            'city': [''],
            'state': [''],
            'zip': [''],
            'address': [''],
            'addressLine': [''],
            'contato': [''],
            'mobile': [''],
        });

        if (localStorage.getItem('userToken') === null) {
            this.snackBar.open('Efetue o login para esta operação', '×', {
                panelClass: 'error',
                verticalPosition: 'top',
                horizontalPosition: 'right',
                duration: 4000
            });
            this.router.navigate(['/auth']);
        }
    }

    // editing billing form
    editAddressList(param) {
        this.checkoutForm.controls['company'].setValue(param.company);
        this.checkoutForm.controls['city'].setValue(param.city);
        this.checkoutForm.controls['state'].setValue(param.state);
        if (typeof param.postcode === 'number') {
            this.zipCodes = parseInt(param.postcode, 10);
            this.checkoutForm.controls['zip'].setValue(this.zipCodes);
        } else {
            this.checkoutForm.controls['zip'].setValue(param.postcode);
        }
        this.checkoutForm.controls['address'].setValue(param.address1);
        this.checkoutForm.controls['addressLine'].setValue(param.address2);
    }

    // editing billing form(from get profile api)
    setProfileDetails() {

        this.subscriptions.push(this.commonSandbox.getProfile$.subscribe(profile => {
            if (profile) {
                console.log(profile);
                this.checkoutForm.controls['firstName'].setValue(profile.firstName);
                //this.checkoutForm.controls['lastName'].setValue(profile.lastName);
                this.checkoutForm.controls['email'].setValue(profile.email);
                this.checkoutForm.controls['phone'].setValue(profile.mobileNumber);

                this.checkoutForm.controls['country'].setValue(profile.countryId);
                // document.getElementById('country').style.display = 'none';
                this.checkoutForm.controls['address'].setValue(profile.address);
                this.checkoutForm.controls['addressLine'].setValue(profile.address_numero);
                this.checkoutForm.controls['city'].setValue(profile.city);
                this.checkoutForm.controls['state'].setValue(profile.zoneId);
                this.checkoutForm.controls['zip'].setValue(profile.pincode);
                this.checkoutForm.controls['contato'].setValue(profile.contato_resp);
                this.checkoutForm.controls['mobile'].setValue(profile.mobile);
            }
        }));
    }


    /**
     * place order with product detail, if the form is valid
     *
     * remove checkout local storage.
     * @param productDetails detail of the product for checkout
     */
    public placeOrder(productDetails) {
        this.submitted = true;
        if (productDetails.length === 0) {
            this.snackBar.open('Ops tente novamente.', '×', {
                panelClass: 'error',
                verticalPosition: 'top',
                horizontalPosition: 'right',
                duration: 3000
            });
            return;
        }
        if (!this.checkoutForm.valid) {
            this.snackBar.open('Verifique os campos Requeridos', '×', {
                panelClass: 'error',
                verticalPosition: 'top',
                horizontalPosition: 'right',
                duration: 3000
            });
            return;
        }
        let aux = this.checkoutForm.controls['state'].value;
        let aux1 = aux.toString();
        let aux2 = this.checkoutForm.controls['zip'].value;
        let aux3 = parseInt(aux2);
        let aux4 = this.checkoutForm.controls['phone'].value;
        let aux5 = parseInt(aux4);
        let aux6 = this.checkoutForm.controls['country'].value;
        let aux7 = aux6.toString();
        let aux8 = this.checkoutForm.controls['mobile'].value;
        let aux9 = parseInt(aux8);

        this.checkoutForm.controls['state'].setValue(aux1);
        this.checkoutForm.controls['zip'].setValue(aux3);
        this.checkoutForm.controls['phone'].setValue(aux5);
        this.checkoutForm.controls['country'].setValue(aux7);
        this.checkoutForm.controls['mobile'].setValue(aux9);
        this.comprou = false;
        const params: any = this.checkoutForm.value;

        let auxTot = parseFloat(productDetails[0].total);
        productDetails[0].total = auxTot;
        params.productDetail = productDetails;

        console.log(params);

        localStorage.removeItem('checkout');
        this.onUpload(productDetails[0].arquivo_anexo);
        this.productControlSandbox.PlaceOrder(params);
    }

    onUpload(files: Set<File>) {
        if (files && files.size > 0) {
            this.service.upload(files).subscribe(response => console.log('Upload Concluido'));
        }
    }

    // download() {
    //     var filename = '20_rikardodeveloper_gravChapas.png';
    //     this.service.downloadFile(filename).subscribe((res: any) => {
    //         console.log(res);
    //         // let blob:any = new Blob([res.blob()], { type: 'text/json; charset=utf-8' });
    // 		// const url= window.URL.createObjectURL(blob);
    // 		// window.open(url);
    //         this.service.handleFile(res, filename);
    //     });


    //     // this.service.downloadFile(filename)
    //     // .subscribe(
    //     //     data => saveAs(data, filename),
    //     //     error => console.error(error)
    //     // );
    // }

    /**
     * increase or decrease product count
     *
     * @param product added product details
     * @param operation differentiate the operation is increament operation or decrement operation
     */
    changeCount(product, operation) {
        this.productControlSandbox.ChangeCount(product, operation);
    }

    // remove product from the cart, calling removeItemFromCart function from sandbox
    removeProduct(product) {
        this.productControlSandbox.removeItemFromCart(product);
    }

    // clear cart, for remove all products in the cart
    public clear() {
        //localStorage.removeItem('checkout');
        //localStorage.removeItem('selectedProducts');
        //this.clearCart();
        this.clearCart();
        this.router.navigate(['/home']);
    }

    clearCart() {
        localStorage.removeItem('checkout');
        localStorage.removeItem('selectedProducts');
        const cartParams: any = {};
        cartParams.products = [];
        cartParams.productTotal = 0;
        cartParams.totalPrice = 0;
        this.HandleCart(cartParams);
    }

    /**
     * handle cart cart
     * @param params product detail
     */
    HandleCart(params) {
        sessionStorage.setItem('productTotal', JSON.stringify(params.totalPrice));
        sessionStorage.setItem('selectedProducts', JSON.stringify(params.products));
        sessionStorage.setItem('selectedProductsCount', JSON.stringify(params.productTotal));
        this.appState$.dispatch(new authAction.CartHandleAction(params));
        //console.log(sessionStorage.getItem('selectedProducts'));
        //this.router.navigate(['/home']);
    }

    // destroy the subscribed events while page destroy
    ngOnDestroy() {
        this.clearCart();
        this.subscriptions.forEach(each => {
            each.unsubscribe();
        });

    }


}
