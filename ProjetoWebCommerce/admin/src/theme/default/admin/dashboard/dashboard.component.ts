/*
 * SpurtCommerce
 * version 2.2
 * http://www.spurtcommerce.com
 *
 * Copyright (c) 2019 PICCOSOFT
 * Author piccosoft <support@spurtcommerce.com>
 * Licensed under the MIT license.
 */
import { Component, OnInit, Input } from '@angular/core';
import { horizontalbar, line, single } from '././data';
import { DashboardSandbox } from '../../../../core/admin/dashboard/dashboard.sandbox';
import { ConfigService } from '../../../../core/admin/service/config.service';
import { DomSanitizer, Title } from '@angular/platform-browser';
import { Router } from '@angular/router';
import { environment } from '../../../../environments/environment';
import { NgxChartsModule } from '@swimlane/ngx-charts';

@Component({
    selector: 'app-dashboard',
    templateUrl: './dashboard.component.html',
    // providers: [ConfigService]
})
export class DashboardComponent implements OnInit {
    public line: any[];

    public view: any[] = [500, 400];
    public imageURL = this.configService.getImageUrl();


   

    // options
    showXAxis = true;
    showYAxis = true;
    gradient = false;
    showLegend = true;
    legendTitle = 'Legend';
    legendPosition = 'right';
    showXAxisLabel = false;
    xAxisLabel = 'Mês / Ano';
    showYAxisLabel = false;
    yAxisLabel = 'Quantidade';
    topSellingImage = {};
    recentSellingImage = {};
    colorScheme = {
        domain: ['#5AA454', '#A10A28', '#C7B42C', '#AAAAAA']
        //domain: ['green']
    };

    public productUrl: string;



    constructor(public dashboardSandbox: DashboardSandbox, private router: Router, private _sanitizer: DomSanitizer,
        private configService: ConfigService, public titleService: Title) {
        Object.assign(this, { horizontalbar, line, single });
    }

    ngOnInit() {
        this.titleService.setTitle('Complatte - Dashboard');
        this.dashboardSandbox.getOrderListCount({ count: 1 });
        this.dashboardSandbox.getProductListCount({ count: 1 });
        this.dashboardSandbox.getCustomerListCount({ count: 1 });
        this.dashboardSandbox.getTopSellingProductList();
        this.dashboardSandbox.getSalesOrderList();
        this.dashboardSandbox.getRecentVisitorList();
        this.dashboardSandbox.getVisitorLogsList();
        this.dashboardSandbox.getRecentSellingProductList();
        this.dashboardSandbox.getItemPerPageCount();
        this.productUrl = environment.productUrl;

    }

    onLegendLabelClick(entry) {
        console.log('Legend clicked', entry);
      }
    

    // OnSelect Function
    onSelect(event) {
        console.log(event);
    }

    // View Product
    viewProduct(id) {
        window.open(this.productUrl + 'products/productdetails/' + id);
    }

    // View Order Details
    viewOrder(orderId) {
        this.router.navigate(['/sales/orders/vieworder', orderId]);
    }

    // getImageUrl
    getImage(val) {
        return this._sanitizer.bypassSecurityTrustResourceUrl(this.imageURL + '?width=60&height=60&path=' + val);
    }

    topSellingImageLoading(id) {
        this.topSellingImage[id] = true;
    }

    recentSellingImageLoading(id) {
        this.recentSellingImage[id] = true;
    }
}
