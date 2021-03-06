/*
 * SpurtCommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 PICCOSOFT
 * Author piccosoft <support@spurtcommerce.com>
 * Licensed under the MIT license.
 */

import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {ModalDismissReasons, NgbModal, NgbPanelChangeEvent} from '@ng-bootstrap/ng-bootstrap';
import {ActivatedRoute, Router} from '@angular/router';
import {AbstractControl, FormBuilder, FormControl, FormGroup, ValidatorFn, Validators} from '@angular/forms';
import {CustomerSandbox} from '../../../../../../../core/admin/Customers/customers/customer.sandbox';
import {CustomersApiClientService} from '../../../../../../../core/admin/Customers/customers/customer.ApiClient.service';
import {patternValidator} from '../../../../../../../core/admin/providers/patternValidator';

@Component({
    selector: 'app-customer-add',
    templateUrl: 'add.component.html',
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

            input[type=number]::-webkit-inner-spin-button,
            input[type=number]::-webkit-outer-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }
        `
    ]
})


export class CustomerAddComponent implements OnInit {


// formgroup variable
    public customerForm: FormGroup;
    public mailStatus: FormControl;
    public customerGroup: FormControl;
    public customerName: FormControl;
    public email: FormControl;
    public telephone: FormControl;
    public mobile: FormControl;
    public password: FormControl;
    public confirmpassword: FormControl;
    public newsletter: FormControl;
    public status: FormControl;

    public address: FormControl;
    public address_numero : FormControl;
    public address_complem :  FormControl;
    public city : FormControl;
   // public zoneId :  FormControl;
   // public contry :  FormControl;
    public local :  FormControl;
    public tipo_cadastro :  FormControl;
    public cnpj_cpf :  FormControl;
    public inscr_estad_rg :  FormControl;
    public contato_resp :  FormControl;
    public email_pre_impres :  FormControl;
    public email_financeiro :  FormControl;
    public website :  FormControl;
    public bairro :  FormControl;
    public pincode : FormControl;   

// Variable
    public submitted = false;
    public customerInfo: any = [];
    private serviceEditinfo: any;
    private update_CustId_PSW: boolean;
    private update_CustId_CPSW: boolean;
    private EditCustomerId: any;
    private closeResult: string;
    public myValue: boolean;

    constructor(private modalService: NgbModal,
                private route: ActivatedRoute,
                private modalService2: NgbModal,
                private router: Router,
                public fb: FormBuilder,
                public appSandbox: CustomerSandbox,
                private service: CustomersApiClientService) {
    }

// style purpose using
    beforeChange($event: NgbPanelChangeEvent) {
        if ($event.panelId === 'preventchange-2') {
            $event.preventDefault();
        }

        if ($event.panelId === 'preventchange-3' && $event.nextState === false) {
            $event.preventDefault();
        }
    }

// style purpose using
    open2(content) {
        this.modalService.open(content, {windowClass: 'image-manager'}).result.then(
            result => {
                this.closeResult = `Closed with: ${result}`;
            },
            reason => {
                this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
            }
        );
    }

// style purpose using
    open(content) {
        this.modalService2.open(content, {windowClass: 'dark-modal,image-manager'});
    }

// style purpose using
    private getDismissReason(reason: any): string {
        if (reason === ModalDismissReasons.ESC) {
            return 'by pressing ESC';
        } else if (reason === ModalDismissReasons.BACKDROP_CLICK) {
            return 'by clicking on a backdrop';
        } else {
            return `with: ${reason}`;
        }
    }

// intially calls editcustomerinfo,initForm
    ngOnInit(): void {
        this.myValue = true;
        this.EditCustomerId = this.route.snapshot.paramMap.get('id');
        this.update_CustId_PSW = true;
        this.update_CustId_CPSW = true;
        this.submitted = false;

        this.editcustomerinfo();
        if (this.customerInfo && this.customerInfo[0]) {
        } else {

        }
        this.initForm();
    }

// cancel form Submit
    addCustCancle() {

        this.router.navigate(['/customers/customer']);
    }

// initial customerform form created
    initForm() {
        const emailRegex = '^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@' +
            '[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$';
        this.customerForm = this.fb.group({
                customerGroup: ['', [Validators.required]],
                customerName: [null, [Validators.required]],
                email: ['', Validators.compose([Validators.required, Validators.pattern(emailRegex), Validators.minLength(5)])],
                telephone: ['', [Validators.required, Validators.minLength(0), Validators.maxLength(15)]],
                password: ['', this.conditionalValidator((() => this.update_CustId_PSW === true), Validators.required)],
                confirmpassword: ['', this.conditionalValidator((() => this.update_CustId_CPSW === true), Validators.required)],
                status: ['', [Validators.required]],
                newsletter: [''],
                mobile: [''],
                address: [''],
                address_numero: [''],
                address_complem: [''],
                city: [''],
                //zoneId: [''],
                //contry: [''],
                local: [''],
                tipo_cadastro: [''],
                cnpj_cpf: [''],
                inscr_estad_rg: [''],
                contato_resp: [''],
                email_pre_impres: [''],
                email_financeiro: [''],
                website: [''],
                bairro: [''],
                pincode: [''],
                mailStatus: ['', [Validators.required]],
            },
            {validator: this.matchingPasswords('password', 'confirmpassword')}
        );       
    }

    keyPress(event: any) {
        const pattern = /^(\([0-9]{3}\) |[0-9]{3}-)[0-9]{3}-[0-9]{4}$/;

        const inputChar = String.fromCharCode(event.charCode);
        if (event.keyCode !== 8 && !pattern.test(inputChar)) {
            event.preventDefault();
        }
    }

    /**
     * Handles form 'matchingPasswords' event. for conformation password.
     * @param passwordKey for password value
     * @param passwordConfirmationKey for Repassword value
     */
    matchingPasswords(passwordKey: string, passwordConfirmationKey: string) {
        return (group: FormGroup) => {
            const password = group.controls[passwordKey];
            const passwordConfirmation = group.controls[passwordConfirmationKey];
            if (password.value !== passwordConfirmation.value) {
                return passwordConfirmation.setErrors({mismatchedPasswords: true});
            }
        };
    }


// A function using password validation purpose
    conditionalValidator(condition: (() => boolean), validator: ValidatorFn): ValidatorFn {
        return (control: AbstractControl): { [key: string]: any } => {
            if (!condition()) {
                return null;
            }
            return validator(control);
        };
    }

    /**
     * Handles form 'onSubmit' event . Calls sandbox addCustomers(for add customer)function and updateCustomers(for update Customer)
     * @param customerForm entire form value
     * @param params storing entire form value
     */
    onSubmit() {
        this.submitted = true;
        if (this.customerForm.invalid) {
            return;
        }
       
        const params: any = {};
        params.customerGroupId = this.customerForm.value.customerGroup;
        params.username = this.customerForm.value.customerName;
        params.email = this.customerForm.value.email;
        params.mobileNumber = this.customerForm.value.mobile;
        params.phone = this.customerForm.value.telephone;
        params.password = this.customerForm.value.password;
        params.confirmPassword = this.customerForm.value.confirmpassword;
        params.mailStatus = this.customerForm.value.mailStatus;
        if (this.customerForm.value.mailStatus === true) {
            params.mailStatus = 1;
        } else {
            params.mailStatus = 0;
        }
        params.avatar = '';
        params.status = this.customerForm.value.status;

        //RICARDO
        params.address = this.customerForm.value.address;
        params.address_numero = this.customerForm.value.address_numero;
        params.local = this.customerForm.value.local;
        params.tipo_cadastro = this.customerForm.value.tipo_cadastro;
        params.cnpj_cpf = this.customerForm.value.cnpj_cpf;
        params.inscr_estad_rg = this.customerForm.value.inscr_estad_rg;
        params.address_complem = this.customerForm.value.address_complem;
        params.contato_resp = this.customerForm.value.contato_resp;
        params.email_pre_impres = this.customerForm.value.email_pre_impres;
        params.email_financeiro = this.customerForm.value.email_financeiro;
        params.website = this.customerForm.value.website;
        params.bairro = this.customerForm.value.bairro;

        params.newsletter = this.customerForm.value.newsletter;
       
        if (this.customerInfo && this.customerInfo[0].id) {
            params.id = this.customerInfo[0].id;
            this.appSandbox.updateCustomers(params);
        } else {
            this.appSandbox.addCustomers(params);
        }

    }

// edit (for updating purpose ) the customerForm

    editcustomerinfo() {
        this.serviceEditinfo = this.service.getcusteditdata();
        console.log('Cliente detalhe');
        console.log(this.customerInfo);
        if (this.serviceEditinfo) {
            this.customerInfo.push(this.serviceEditinfo);
            this.update_CustId_CPSW = false;
            this.update_CustId_PSW = false;
        } else {
        }
        if (this.customerInfo && this.customerInfo[0]) {
            for (let i = 0; i < this.customerInfo.length; i++) {
                
                if (this.EditCustomerId) {
                    if (this.customerInfo[0].mailStatus === 1) {
                        this.myValue = true;
                    } else {
                        this.myValue = false;
                    }
                    this.customerGroup = this.customerInfo[0].username;
                    this.customerName = this.customerInfo[0].firstName;
                    this.email = this.customerInfo[0].email;
                    this.telephone = this.customerInfo[0].phone;
                    this.newsletter = this.customerInfo[0].newsletter;
                    this.status = this.customerInfo[0].isActive;
                    this.mailStatus = this.customerInfo[0].mailStatus;
                    this.customerGroup = this.customerInfo[0].customerGroupId;
                    this.mobile = this.customerInfo[0].mobileNumber;
                    this.address = this.customerInfo[0].address;
                    this.address_numero = this.customerInfo[0].address_numero;
                    this.address_complem = this.customerInfo[0].address_complem;
                    this.city = this.customerInfo[0].city;
                   // this.zoneId = this.customerInfo[0].zoneId;
                   // this.contry = this.customerInfo[0].contry;
                    this.local = this.customerInfo[0].local;
                    this.tipo_cadastro = this.customerInfo[0].tipo_cadastro;
                    this.cnpj_cpf = this.customerInfo[0].cnpj_cpf;
                    this.inscr_estad_rg = this.customerInfo[0].inscr_estad_rg;
                    this.contato_resp = this.customerInfo[0].contato_resp;
                    this.email_pre_impres = this.customerInfo[0].email_pre_impres;
                    this.email_financeiro = this.customerInfo[0].email_financeiro;
                    this.website = this.customerInfo[0].website;
                    this.bairro = this.customerInfo[0].bairro;
                    this.pincode = this.customerInfo[0].pincode;
                }

            }
        } else {
            this.customerInfo = ' ';
        }
    }

// A property 'f' using in valdiation control in template
    get f() {
        return this.customerForm.controls;
    }


}
