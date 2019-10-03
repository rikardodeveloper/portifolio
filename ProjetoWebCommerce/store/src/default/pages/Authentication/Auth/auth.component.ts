import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { MatSnackBar } from '@angular/material';
import { emailValidator, matchingPasswords } from '../../../theme/utils/app-validators';
import { AuthSandbox } from '../../../../core/auth/auth.sandbox';
import { ListsSandbox } from '../../../../core/lists/lists.sandbox';


@Component({
    selector: 'app-auth',
    templateUrl: './auth.component.html',
    styleUrls: ['./auth.component.scss']
})
export class AuthComponent implements OnInit {
    // reactive form
    public registerForm: FormGroup;
    public registerForm2: FormGroup;
    // validation
    public submitted = false;

    public maskCNPJ: Array<string | RegExp>
    public maskCPF: Array<string | RegExp>
    public maskFone: Array<string | RegExp>
    public maskFoneCel: Array<string | RegExp>
    public phoneNumber: any;
    public mobile: any;

    constructor(public formBuilder: FormBuilder,
        public router: Router,
        public snackBar: MatSnackBar,
        public listsSandbox: ListsSandbox,
        public authSandbox: AuthSandbox) {
        // this.maskCNPJ = ['(', /[1-9]/, /\d/, /\d/, ')', ' ', /\d/, /\d/, /\d/, '-', /\d/, /\d/, /\d/, /\d/];
        this.maskCNPJ = [/[0-9]/, /[0-9]/, '.', /[0-9]/, /[0-9]/, /[0-9]/, '.', /[0-9]/, /[0-9]/, /[0-9]/, '/', /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/, '-', /[0-9]/, /[0-9]/];
        this.maskCPF = [/[0-9]/, /[0-9]/, /[0-9]/, '.', /[0-9]/, /[0-9]/, /[0-9]/, '.', /[0-9]/, /[0-9]/, /[0-9]/, '-', /[0-9]/, /[0-9]/];
        this.maskFone = ['(', /[0-9]/, /[0-9]/, ')', ' ', /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/, '-', /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/];
        this.maskFoneCel = ['(', /[0-9]/, /[0-9]/, ')', ' ', /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/, '-', /[0-9]/, /[0-9]/, /[0-9]/, /[0-9]/];
    }

    // Initially initialize reactive form
    ngOnInit() {
        this.registerForm = this.formBuilder.group({
            'name': ['', Validators.compose([Validators.required, Validators.minLength(3)])],
            'email': ['', Validators.compose([Validators.required, emailValidator])],
            'password': ['', Validators.compose([Validators.required, Validators.minLength(5)])],
            'confirmPassword': ['', Validators.compose([Validators.required])],
            'tipo_cadastro': ['', Validators.compose([Validators.required])],
            'cnpj_cpf': ['', Validators.compose([Validators.required])],
            'inscr_estad_rg': ['', Validators.compose([Validators.required])],
            'address': ['', Validators.compose([Validators.required])],
            'address_numero': ['', Validators.compose([Validators.required])],
            'complemento': [''],
            'pincode': ['', Validators.compose([Validators.required])],
            'bairro': ['', Validators.compose([Validators.required])],
            'cidade': ['', Validators.compose([Validators.required])],
            'zoneId': ['', Validators.compose([Validators.required])],
            'mobile': ['', Validators.compose([Validators.required])],
            'phoneNumber': ['', Validators.compose([Validators.required])],
            'contato_resp': ['', Validators.compose([Validators.required])],
            'website': [''],
            'email_preimpressao': ['', Validators.compose([Validators.required])],
            'email_financeiro': ['', Validators.compose([Validators.required])],
            'country': ['', Validators.compose([Validators.required])]
        }, { validator: matchingPasswords('password', 'confirmPassword') });

        this.registerForm2 = this.formBuilder.group({
            'name': ['', Validators.compose([Validators.required, Validators.minLength(3)])],
            'email': ['', Validators.compose([Validators.required, emailValidator])],
            'password': ['', Validators.compose([Validators.required, Validators.minLength(5)])],
            'confirmPassword': ['', Validators.compose([Validators.required])],
            'tipo_cadastro': ['', Validators.compose([Validators.required])],
            'cnpj_cpf': ['', Validators.compose([Validators.required])],
            'inscr_estad_rg': ['', Validators.compose([Validators.required])],
            'address': ['', Validators.compose([Validators.required])],
            'address_numero': ['', Validators.compose([Validators.required])],
            'complemento': [''],
            'pincode': ['', Validators.compose([Validators.required])],
            'bairro': ['', Validators.compose([Validators.required])],
            'cidade': ['', Validators.compose([Validators.required])],
            'zoneId': ['', Validators.compose([Validators.required])],
            'mobile': ['', Validators.compose([Validators.required])],
            'phoneNumber': ['', Validators.compose([Validators.required])],
            'contato_resp': ['', Validators.compose([Validators.required])],
            'website': [''],
            'email_preimpressao': ['', Validators.compose([Validators.required])],
            'email_financeiro': ['', Validators.compose([Validators.required])],
            'country': ['', Validators.compose([Validators.required])]
        }, { validator: matchingPasswords('password', 'confirmPassword') });
    }

    public onTipoCadastroChange() {
        this.registerForm.controls['name'].setValue('');
        this.registerForm.controls['cnpj_cpf'].setValue('');
        this.registerForm.controls['inscr_estad_rg'].setValue('');
    }

    /** calls authSandbox doRegister if tthe from is valid.
     Then calls resetAllFormFields for reset **/
    public onRegisterFormSubmit(values: Object): void {
        let aux = this.registerForm.controls['mobile'].value;
        aux = aux.replace("(", "");
        aux = aux.replace(")", "");
        aux = aux.replace("-", "");
        aux = aux.replace(" ", "")
        let auxInt = parseInt(aux);
        this.mobile = auxInt;

        let aux2 = this.registerForm.controls['phoneNumber'].value;
        aux2 = aux2.replace("(", "");
        aux2 = aux2.replace(")", "");
        aux2 = aux2.replace("-", "");
        aux2 = aux2.replace(" ", "")
        let aux2Int = parseInt(aux2);
        this.phoneNumber = aux2Int;

        this.registerForm2 = this.registerForm;
        this.registerForm2.controls['mobile'].setValue(this.mobile);
        this.registerForm2.controls['phoneNumber'].setValue(this.phoneNumber);

        if (this.registerForm.valid) {
            this.authSandbox.doRegister(this.registerForm2.value);
            this.submitted = false;
            this.registerForm.reset();
            // this.resetAllFormFields(this.registerForm);
        } else {
            this.submitted = true;
            this.snackBar.open('Atenção, algum campo esta sem preenchimento', '×', {
                panelClass: 'error',
                verticalPosition: 'top',
                horizontalPosition: 'right',
                duration: 3000
            });
        }
    }
    // reset the values
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
    // validate the reactive form
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

}
