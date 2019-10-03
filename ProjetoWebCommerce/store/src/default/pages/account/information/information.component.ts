/*
 * spurtcommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */

import { Component, OnInit, ElementRef, ViewChild, OnDestroy } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { MatSnackBar } from '@angular/material';
import { emailValidator } from '../../../theme/utils/app-validators';
import { ConfigService } from '../../../../core/service/config.service';
import { CommonSandbox } from '../../../../core/common/common.sandbox';
import { AccountSandbox } from '../../../../core/account/account.sandbox';
import { ListsSandbox } from '../../../../core/lists/lists.sandbox';
import { Subscription } from 'rxjs';
import { select } from '@ngrx/store';
import { Router } from '@angular/router';

@Component({
    selector: 'app-information',
    templateUrl: './information.component.html',
    styleUrls: ['./information.component.scss']
})
export class InformationComponent implements OnInit, OnDestroy {
    // reactive form
    public infoForm: FormGroup;
    public passwordForm: FormGroup;
    // ipload image
    public imageUrl: any;
    private userImage: any;
    public imagePath: string;
    // validation
    public ifSubmitted = false;
    public ifPasswordForm = false;
    // default image
    public ifImageAvailable: string;
    // subscription
    private subscriptions: Array<Subscription> = [];

    public maskCNPJ: Array<string | RegExp>
    public maskCPF: Array<string | RegExp>
    public maskFone: Array<string | RegExp>
    public maskFoneCel: Array<string | RegExp>

    selected: any;

    @ViewChild('filePath', null) filePath: ElementRef;

    constructor(public formBuilder: FormBuilder,
        public configService: ConfigService,
        public snackBar: MatSnackBar,
        public commonSandbox: CommonSandbox,
        public listsSandbox: ListsSandbox,
        private router: Router,
        public accountSandbox: AccountSandbox) {
        this.maskCNPJ = [/[0-9]/, /[0-9]/, '.', /[0-9]/, /[0-9]/, /[0-9]/, '.', /[0-9]/, /[0-9]/, /[0-9]/, '/', /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/, '-', /[0-9]/, /[0-9]/];
        this.maskCPF = [/[0-9]/, /[0-9]/, /[0-9]/, '.', /[0-9]/, /[0-9]/, /[0-9]/, '.', /[0-9]/, /[0-9]/, /[0-9]/, '-', /[0-9]/, /[0-9]/];
        this.maskFone = ['(', /[0-9]/, /[0-9]/, ')', ' ', /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/, '-', /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/];
        this.maskFoneCel = ['(', /[0-9]/, /[0-9]/, ')', ' ', /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/, '-', /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/];
    }

    // Initially calls initInfoForm,initPasswordForm,setProfile
    ngOnInit() {
        // this.imagePath = this.configService.get('resize').imageUrl;
        this.imagePath = this.configService.getImageUrl();
        this.initInfoForm();
        this.initPasswordForm();
        this.setProfile();
    }

    // build a form for info  by gouping the form control
    initInfoForm() {
        this.infoForm = this.formBuilder.group({
            'firstName': ['', Validators.compose([Validators.required, Validators.minLength(3)])],
            // 'lastName': ['', Validators.compose([Validators.required, Validators.minLength(1)])],
            'email': ['', Validators.compose([Validators.required, emailValidator])],
            'address': ['', Validators.compose([Validators.required])],
            'country': ['', Validators.compose([Validators.required])],
            'zoneId': ['', Validators.compose([Validators.required])],
            'pincode': ['', Validators.compose([Validators.required])],
            'phoneNumber': ['', Validators.compose([Validators.required])],           
            //'password': ['', Validators.compose([Validators.required, Validators.minLength(5)])],
           // 'confirmPassword': ['', Validators.compose([Validators.required])],
            'tipo_cadastro': ['', Validators.compose([Validators.required])],
            'cnpj_cpf': ['', Validators.compose([Validators.required])],
            'inscr_estad_rg': ['', Validators.compose([Validators.required])],
            'address_numero': ['', Validators.compose([Validators.required])],
            'complemento': [''],
            'bairro': ['', Validators.compose([Validators.required])],
            'city': ['', Validators.compose([Validators.required])],
            'mobile': ['', Validators.compose([Validators.required])],
            'contato_resp': ['', Validators.compose([Validators.required])],
            'website': [''],
            'email_pre_impres': ['', Validators.compose([Validators.required])],
            'email_financeiro': ['', Validators.compose([Validators.required])],
        });
    }

    // build a form for change password  by gouping the form control

    initPasswordForm() {
        this.passwordForm = this.formBuilder.group({
            'currentPassword': ['', Validators.compose([Validators.required])],
            'newPassword': ['', Validators.compose([Validators.required, Validators.minLength(5)])],
        }
        );
    }

    public onTipoCadastroChange() {
       
    }
    // set the user details to the form by fetching the profile details from sandbox
    setProfile() {
        
        this.subscriptions.push(this.commonSandbox.getProfile$.subscribe(profile => {
            if (profile) {
                console.log(profile);
                this.infoForm.controls['firstName'].setValue(profile.firstName);
                // this.infoForm.controls['lastName'].setValue(profile.lastName);
                this.infoForm.controls['email'].setValue(profile.email);
                
                this.infoForm.controls['address'].setValue(profile.address);
                this.infoForm.controls['country'].setValue(profile.countryId);
                this.infoForm.controls['zoneId'].setValue(profile.zoneId);
                this.infoForm.controls['pincode'].setValue(profile.pincode);
                this.infoForm.controls['phoneNumber'].setValue(profile.mobileNumber);
                this.imageUrl = this.imagePath + '?width=60&height=60&name=' + profile.avatar + '&path=' + profile.avatarPath;
                this.ifImageAvailable = profile.avatarPath;
                this.infoForm.controls['tipo_cadastro'].setValue(profile.tipo_cadastro);
                this.infoForm.controls['tipo_cadastro'].disable();
                this.selected = profile.tipo_cadastro;
                this.infoForm.controls['cnpj_cpf'].setValue(profile.cnpj_cpf);                
                this.infoForm.controls['inscr_estad_rg'].setValue(profile.inscr_estad_rg);
                this.infoForm.controls['address_numero'].setValue(profile.address_numero);
                this.infoForm.controls['complemento'].setValue(profile.complemento);
                this.infoForm.controls['bairro'].setValue(profile.bairro);
                this.infoForm.controls['city'].setValue(profile.city);
                this.infoForm.controls['mobile'].setValue(profile.mobile);
                this.infoForm.controls['contato_resp'].setValue(profile.contato_resp);
                this.infoForm.controls['website'].setValue(profile.website);
                this.infoForm.controls['email_pre_impres'].setValue(profile.email_pre_impres);
                this.infoForm.controls['email_financeiro'].setValue(profile.email_financeiro);
            }
        }));             
    }

    onSelectCountry(countryid: number) {
    }
    onSelectZone(zoneid: number) {

    }
    /**
     * upload new user image
     *
     * @param el refer the HTMLElement filePath
     * it will activate the click function of el
     */
    uploadButtonClick() {
        const el: HTMLElement = this.filePath.nativeElement as HTMLElement;
        el.click();
    }

    // calls convertBase64 to convert data into base64 formt
    uploadChange($event): void {
        this.ifImageAvailable = 'avatar';
        this.convertBase64($event.target);
    }

    // convert image file into Base64 format
    convertBase64(inputValue: any): void {
        const file: File = inputValue.files[0];
        const myReader: FileReader = new FileReader();

        myReader.onloadend = (e) => {
            this.imageUrl = myReader.result;
            this.userImage = myReader.result;
        };
        myReader.readAsDataURL(file);
    }

    // call edit user info functionality if the form is valid

    public onInfoFormSubmit(): void {
        let aux = this.infoForm.controls['mobile'].value;
        aux = aux.replace("(", "");
        aux = aux.replace(")", "");
        aux = aux.replace("-", "");
        aux = aux.replace(" ", "")
        let auxInt = parseInt(aux);
       
        let aux2 = this.infoForm.controls['phoneNumber'].value;
        aux2 = aux2.replace("(", "");
        aux2 = aux2.replace(")", "");
        aux2 = aux2.replace("-", "");
        aux2 = aux2.replace(" ", "")
        let aux2Int = parseInt(aux2);
       
        this.infoForm.controls['mobile'].setValue(auxInt);
        this.infoForm.controls['phoneNumber'].setValue(aux2Int);        
        if (this.infoForm.valid) {
            const params: any = this.infoForm.value;
            params.image = this.userImage;
            this.accountSandbox.doEditProfile(params);
            this.ifSubmitted = false;
            this.imageUrl = '';
            this.infoForm.reset();
            this.infoForm.clearValidators();
           
        } else {
            this.snackBar.open('Atenção, algum campo esta sem preenchimento', '×', {
                panelClass: 'error',
                verticalPosition: 'top',
                horizontalPosition: 'right',
                duration: 3000
            });
            this.ifSubmitted = true;
        }
    }

    // call change password functionality if the password form is valid
    public onPasswordFormSubmit(): void {

        if (this.passwordForm.valid) {
            this.accountSandbox.doChangepassword(this.passwordForm.value);
            this.ifPasswordForm = false;
            this.passwordForm.reset();
            this.passwordForm.clearValidators();
        } else {
            this.ifPasswordForm = true;
        }
    }

    // reset form fields and clear validation
    resetAllFormFields(formGroup: FormGroup) {
        Object.keys(formGroup.controls).forEach(field => {
            const control = formGroup.get(field);
            if (control instanceof FormControl) {
                control.reset();
                control.clearValidators();
                control.updateValueAndValidity();
            } else if (control instanceof FormGroup) {
                this.resetAllFormFields(control);
            }
        });
    }

    // destroy the subscribed events while page destroy
    ngOnDestroy() {
        this.subscriptions.forEach(each => {
            each.unsubscribe();
        });
    }

}
