import { Injectable } from '@angular/core';
import { HttpClient, HttpRequest } from '@angular/common/http';
import {Api} from '../providers/api/api';

@Injectable({
  providedIn: 'root'
})
export class UploadFileService extends Api {
  private base: string;
  //constructor(private http: HttpClient) { }

  upload(files: Set<File>) {
    this.base = this.getBaseUrl();
    const formData = new FormData();
    files.forEach(file => formData.append('file', file, file.name));
   // return this.http.post(this.base + 'customer/add-product-to-wishlist', params);
    // const request = new HttpRequest('POST', url, formData);
    // return this.http.request(request);

    return this.http.post(this.base + 'customer/customer-upload-arquivo', formData);
  }
}
