/*
 * spurtcommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */
import { Injectable, AbstractType } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient, HttpRequest, HttpHeaders, HttpResponse } from '@angular/common/http';
import { Api } from '../providers/api/api';
import { RequestOptions } from '@angular/http';


@Injectable()
export class ProductControlService extends Api {

    private base: string;
    /* add item to wish list api*/

    public addToWishlist(params: any): Observable<any> {
        this.base = this.getBaseUrl();
        return this.http.post(this.base + 'customer/add-product-to-wishlist', params);
    }

    /* call checkout api*/

    public CheckoutProduct(params: any): Observable<any> {
        this.base = this.getBaseUrl();
        return this.http.post(this.base + 'orders/customer-checkout', params);
    }

    // public upload(files: Set<File>, url: string): Observable<any> {
    public upload(files: Set<File>): Observable<any> {
        this.base = this.getBaseUrl();
        const formData = new FormData();
        files.forEach(file => {
            formData.append('file', file, file.name);
        });
        //files.forEach(file => formData.append('file', file, file.name));
        return this.http.post(this.base + 'orders/upload-arquivo', formData);

    }

    // downloadFile(url: string) {
    //     this.base = this.getBaseUrl();
    //     let aux = this.base + 'orders/download-arquivo';
    //     console.log(aux);
    //     return this.http.post(aux, {
    //         responseType: 'blob',
    //         // reportProgress
    //         // content-length
    //     });
    // }

    // handleFile(res: any, fileName: string) {
    //     console.log(res);
    //     console.log(fileName);
    //     const file = new Blob([res], {
    //         type: res.type
    //     });

    //     // IE
    //     if (window.navigator && window.navigator.msSaveOrOpenBlob) {
    //         window.navigator.msSaveOrOpenBlob(file);
    //         return;
    //     }

    //     const blob = window.URL.createObjectURL(file);

    //     const link = document.createElement('a');
    //     link.href = blob;
    //     link.download = fileName;

    //     // link.click();
    //     link.dispatchEvent(new MouseEvent('click', {
    //         bubbles: true,
    //         cancelable: true,
    //         view: window
    //     }));

    //     setTimeout(() => { // firefox
    //         window.URL.revokeObjectURL(blob);
    //         link.remove();
    //     }, 100);
    // }

    // downloadFile(file: String): Observable<any> {
    //     this.base = this.getBaseUrl();
    //     var body = { filename: file };       
    //     return this.http.post(this.base + 'orders/download-arquivo', body, {
    //         responseType: 'blob'
    //        // headers: new HttpHeaders().append('Content-Type', 'application/json')
    //     });

    // }
}
