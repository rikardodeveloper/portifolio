/*
* spurtcommerce
* version 2.2
* http://www.spurtcommerce.com
*
* Copyright (c) 2019 piccosoft ltd
* Author piccosoft ltd <support@piccosoft.com>
* Licensed under the MIT license.
*/
import {Injectable} from '@angular/core';
import {Observable} from 'rxjs';
import {HttpParams} from '@angular/common/http';
import {Api} from '../../providers/api/api';


@Injectable()
export class OrdersService extends Api {
    params: any = {};
    public pagesize: any;
    private url: string = this.getBaseUrl();

    /*SALES --ORDER GET LIST*/
    public getorderlist(params: any): Observable<any> {
       // console.log(params);
        return this.http.get(this.url + '/order/orderlist', {params : params});

    }
    /*SALES --GET ORDER DETAIL*/
    public getorderDetail(params: any): Observable<any> {
        return this.http.get(this.url + '/order/order-detail', {params: params});
    }

    /*change-order-status*/
    changeOrderStatus(param: any): Observable<any> {
        return this.http.post(this.url + '/order/order-change-status', param);

    }
    /*SALES --GET SETTINGS*/
    public getsettings(): Observable<any> {
        return this.http.get(this.url + '/settings/get-settings');
    }

    public downloadFile(file: String, id: String ): Observable<any> {
        //console.log(this.url);       
        var body = { filename: file, idOrder: id };   
        //console.log(body);      
        return this.http.post(this.url + '/order/download-arquivo', body, {
            responseType: 'blob',
            
           // headers: new HttpHeaders().append('Content-Type', 'application/json')
        });

    }

    public handleFile(res: any, fileName: string) {       
        const file = new Blob([res], {
            type: res.type
        });

        // IE
        if (window.navigator && window.navigator.msSaveOrOpenBlob) {
            window.navigator.msSaveOrOpenBlob(file);
            return;
        }

        const blob = window.URL.createObjectURL(file);

        const link = document.createElement('a');
        link.href = blob;
        link.download = fileName;

        // link.click();
        link.dispatchEvent(new MouseEvent('click', {
            bubbles: true,
            cancelable: true,
            view: window
        }));

        setTimeout(() => { // firefox
            window.URL.revokeObjectURL(blob);
            link.remove();
        }, 100);
    }

}
