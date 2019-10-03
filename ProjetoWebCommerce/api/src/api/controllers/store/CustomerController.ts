/*
 * spurtcommerce API
 * version 2.2
 * http://api.spurtcommerce.com
 *
 * Copyright (c) 2019 piccosoft ltd
 * Author piccosoft ltd <support@piccosoft.com>
 * Licensed under the MIT license.
 */

import 'reflect-metadata';
import { Post, Body, JsonController, Res, Authorized, Req, Get, QueryParam } from 'routing-controllers';
import { classToPlain } from 'class-transformer';
import jwt from 'jsonwebtoken';
import { MAILService } from '../../../auth/mail.services';
import { CustomerRegisterRequest } from './requests/customerRegisterRequest';
import { CustomerLogin } from './requests/customerLoginRequest';
import { CustomerOauthLogin } from './requests/customerOauthLoginRequest';
import { ChangePassword } from './requests/changePasswordRequest';
import { Customer } from '../../models/Customer';
import { CustomerService } from '../../services/CustomerService';
import { LoginLogService } from '../../services/loginLogService';
import { CustomerEditProfileRequest } from './requests/customerEditProfileRequest';
import { env } from '../../../env';
import { LoginLog } from '../../models/loginLog';
import { EmailTemplateService } from '../../services/emailTemplateService';
import { ImageService } from '../../services/ImageService';
import { S3Service } from '../../services/S3Service';

@JsonController('/customer')
export class CustomerController {
    constructor(private customerService: CustomerService, private s3Service: S3Service, private imageService: ImageService, private loginLogService: LoginLogService, private emailTemplateService: EmailTemplateService) {
    }

    // Customer Register API
    /**
     * @api {post} /api/customer/register register API
     * @apiGroup Store
     * @apiParam (Request body) {String} name Name
     * @apiParam (Request body) {String} password User Password
     * @apiParam (Request body) {String} confirmPassword Confirm Password
     * @apiParam (Request body) {String} emailId User Email Id
     * @apiParam (Request body) {Number} phoneNumber User Phone Number (Optional)
     * @apiParamExample {json} Input
     * {
     *      "name" : "",
     *      "password" : "",
     *      "confirmPassword" : "",
     *      "emailId" : "",
     *      "phoneNumber" : "",
     * }
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Thank you for registering with us and please check your email",
     *      "status": "1"
     * }
     * @apiSampleRequest /api/customer/register
     * @apiErrorExample {json} Register error
     * HTTP/1.1 500 Internal Server Error
     */
    // Customer Register Function
    @Post('/register')
    public async register(@Body({ validate: true }) registerParam: CustomerRegisterRequest, @Req() request: any, @Res() response: any): Promise<any> {
        console.log('payloadddd');
        console.log(registerParam);
        const newUser = new Customer();
        newUser.firstName = registerParam.name;
        newUser.password = await Customer.hashPassword(registerParam.password);
        newUser.email = registerParam.emailId;
        newUser.username = registerParam.emailId;
        newUser.mobileNumber = registerParam.mobile;
        newUser.phone = registerParam.phoneNumber;
        newUser.tipo_cadastro = registerParam.tipo_cadastro;
        newUser.cnpj_cpf = registerParam.cnpj_cpf;
        newUser.inscr_estad_rg = registerParam.inscr_estad_rg;
        newUser.address = registerParam.address;
        newUser.address_numero = registerParam.address_numero;
        newUser.address_complem = registerParam.complemento;
        newUser.pincode = registerParam.pincode;
        newUser.bairro = registerParam.bairro;
        newUser.city = registerParam.cidade;
        newUser.zoneId = registerParam.zoneId;
        newUser.contato_resp = registerParam.contato_resp;
        newUser.website = registerParam.website;
        newUser.email_pre_impres = registerParam.email_preimpressao;
        newUser.email_financeiro = registerParam.email_financeiro;
        newUser.countryId = registerParam.country;
        newUser.isActive = 0;
        newUser.ip = (request.headers['x-forwarded-for'] ||
            request.connection.remoteAddress ||
            request.socket.remoteAddress ||
            request.connection.socket.remoteAddress).split(',')[0];
        const resultUser = await this.customerService.findOne({ where: { email: registerParam.emailId, deleteFlag: 0 } });
        if (resultUser) {
            const successResponse: any = {
                status: 1,
                message: 'Você já se registrou, por favor faça o login.',
            };
            return response.status(400).send(successResponse);
        }
        if (registerParam.password === registerParam.confirmPassword) {
            const resultData = await this.customerService.create(newUser);
            const emailContent = await this.emailTemplateService.findOne(1);
            const message = emailContent.content.replace('{name}', resultData.firstName);
            const sendMailRes = MAILService.registerMail(message, resultData.email, emailContent.subject);
            if (sendMailRes) {
                const successResponse: any = {
                    status: 1,
                    message: 'Obrigado por se registrar conosco. Por favor, verifique sua caixa de entrada para mais detalhes. ',
                    data: classToPlain(resultData),
                };
                return response.status(200).send(successResponse);
            } else {
                const errorResponse: any = {
                    status: 0,
                    message: 'Registro bem-sucedido, mas não é possível enviar email. ',
                };
                return response.status(400).send(errorResponse);
            }
        }
        const errorPasswordResponse: any = {
            status: 0,
            message: 'A uma incompatibilidade entre senha e confirmar senha. ',
        };
        return response.status(400).send(errorPasswordResponse);
    }

    // Forgot Password API
    /**
     * @api {post} /api/customer/forgot-password Forgot Password API
     * @apiGroup Store
     * @apiParam (Request body) {String} emailId User Email Id
     * @apiParamExample {json} Input
     * {
     *      "emailId" : ""
     * }
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Thank you,Your password send to your mail id please check your email.",
     *      "status": "1"
     * }
     * @apiSampleRequest /api/customer/forgot-password
     * @apiErrorExample {json} Forgot Password error
     * HTTP/1.1 500 Internal Server Error
     */
    // Forgot Password Function
    @Post('/forgot-password')
    public async forgotPassword(@Body({ validate: true }) forgotparam: any, @Res() response: any): Promise<any> {
        const resultData = await this.customerService.findOne({ where: { email: forgotparam.emailId } });
        if (!resultData) {
            const errorResponse: any = {
                status: 0,
                message: 'Invalid Email Id',
            };
            return response.status(400).send(errorResponse);
        }
        const tempPassword: any = Math.random().toString().substr(2, 5);
        resultData.password = await Customer.hashPassword(tempPassword);
        const updateUserData = await this.customerService.update(resultData.id, resultData);
        const emailContent = await this.emailTemplateService.findOne(2);
        const message = emailContent.content.replace('{name}', updateUserData.firstName).replace('{xxxxxx}', tempPassword);
        emailContent.content = message;
        const sendMailRes = MAILService.passwordForgotMail(message, updateUserData.email, emailContent.subject);
        if (sendMailRes) {
            const successResponse: any = {
                status: 1,
                message: 'Sua senha foi enviada para sua caixa de entrada de e-mail.',
            };
            return response.status(200).send(successResponse);
        } else {
            const errorResponse: any = {
                status: 0,
                message: 'Erro no envio de email, email inválido.',
            };
            return response.status(400).send(errorResponse);
        }
    }

    // Login API
    /**
     * @api {post} /api/customer/login login API
     * @apiGroup Store
     * @apiParam (Request body) {String} emailId User Email Id
     * @apiParam (Request body) {String} password User Password
     * @apiParamExample {json} Input
     * {
     *      "emailId" : "",
     *      "password" : "",
     * }
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "data": "{
     *         "token":''
     *      }",
     *      "message": "Successfully login",
     *      "status": "1"
     * }
     * @apiSampleRequest /api/customer/login
     * @apiErrorExample {json} Login error
     * HTTP/1.1 500 Internal Server Error
     */
    // Login Function
    @Post('/login')
    public async login(@Body({ validate: true }) loginParam: CustomerLogin, @Req() request: any, @Res() response: any): Promise<any> {
        const resultData = await this.customerService.findOne({
            select: ['id', 'firstName', 'email', 'mobileNumber', 'password', 'avatar', 'avatarPath', 'isActive'],
            where: { email: loginParam.emailId },
        });
        if (!resultData) {
            const errorUserNameResponse: any = {
                status: 0,
                message: 'Email inválido',
            };
            return response.status(400).send(errorUserNameResponse);
        }
        if (resultData.isActive === 0) {
            const errorUserInActiveResponse: any = {
                status: 0,
                message: 'Seu cadastro está em avaliação. Por gentileza aguarde, em breve enviaremos email de confirmação. ',
            };
            return response.status(400).send(errorUserInActiveResponse);
        }
        if (await Customer.comparePassword(resultData, loginParam.password)) {
            // create a token
            const token = jwt.sign({ id: resultData.id }, '123##$$)(***&', {
                expiresIn: 86400, // expires in 24 hours
            });

            const loginLog = new LoginLog();
            loginLog.customerId = resultData.id;
            loginLog.emailId = resultData.email;
            loginLog.firstName = resultData.firstName;
            loginLog.ipAddress = (request.headers['x-forwarded-for'] ||
                request.connection.remoteAddress ||
                request.socket.remoteAddress ||
                request.connection.socket.remoteAddress).split(',')[0];
            const savedloginLog = await this.loginLogService.create(loginLog);

            const customer = await this.customerService.findOne({ where: { email: loginParam.emailId } });
            customer.lastLogin = savedloginLog.createdDate;
            await this.customerService.create(customer);
            const successResponse: any = {
                status: 1,
                message: 'Logado com sucesso.',
                data: {
                    token,
                    user: classToPlain(resultData),
                },
            };
            return response.status(200).send(successResponse);
        }
        const errorResponse: any = {
            status: 0,
            message: 'Password inválido',
        };
        return response.status(400).send(errorResponse);
    }

    // Change Password API
    /**
     * @api {post} /api/customer/change-password Change Password API
     * @apiGroup Store
     * @apiHeader {String} Authorization
     * @apiParam (Request body) {String} oldPassword Old Password
     * @apiParam (Request body) {String} newPassword New Password
     * @apiParamExample {json} Input
     *      "oldPassword" : "",
     *      "newPassword" : "",
     * }
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Your password changed successfully",
     *      "status": "1"
     * }
     * @apiSampleRequest /api/customer/change-password
     * @apiErrorExample {json} Change Password error
     * HTTP/1.1 500 Internal Server Error
     */
    // Change Password Function
    @Post('/change-password')
    @Authorized('customer')
    public async changePassword(@Body({ validate: true }) changePasswordParam: ChangePassword, @Req() request: any, @Res() response: any): Promise<any> {

        const resultData = await this.customerService.findOne({ where: { id: request.user.id } });
        if (await Customer.comparePassword(resultData, changePasswordParam.oldPassword)) {
            const val = await Customer.comparePassword(resultData, changePasswordParam.newPassword);
            if (val) {
                const errResponse: any = {
                    status: 0,
                    message: 'você informou a mesma senha, por favor tente uma diferente',
                };
                return response.status(400).send(errResponse);
            }
            resultData.password = await Customer.hashPassword(changePasswordParam.newPassword);
            const updateUserData = await this.customerService.update(resultData.id, resultData);
            if (updateUserData) {
                const successResponse: any = {
                    status: 1,
                    message: 'Sua senha foi alterada com sucesso. ',
                };
                return response.status(200).send(successResponse);
            }
        }
        const errorResponse: any = {
            status: 0,
            message: 'Sua senha antiga está errada',
        };
        return response.status(400).send(errorResponse);
    }

    // Get Customer Profile API
    /**
     * @api {get} /api/customer/get-profile Get Profile API
     * @apiGroup Store
     * @apiHeader {String} Authorization
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Successfully Get the Profile..!",
     *      "status": "1"
     *       "data":{}
     * }
     * @apiSampleRequest /api/customer/get-profile
     * @apiErrorExample {json} Get Profile error
     * HTTP/1.1 500 Internal Server Error
     */
    // Get Profile Function
    @Get('/get-profile')
    @Authorized('customer')
    public async getProfile(@Req() request: any, @Res() response: any): Promise<any> {
        const resultData = await this.customerService.findOne({ where: { id: request.user.id } });
        const successResponse: any = {
            status: 1,
            message: 'Successfully Get the Profile.',
            data: resultData,
        };
        return response.status(200).send(successResponse);
    }

    // Customer Edit Profile API
    /**
     * @api {post} /api/customer/edit-profile Edit Profile API
     * @apiGroup Store
     * @apiHeader {String} Authorization
     * @apiParam (Request body) {String} firstName First Name
     * @apiParam (Request body) {String} lastName Last Name
     * @apiParam (Request body) {String} password password
     * @apiParam (Request body) {String} emailId User Email Id
     * @apiParam (Request body) {String} address Address
     * @apiParam (Request body) {Number} countryId Country
     * @apiParam (Request body) {Number} zoneId zoneId
     * @apiParam (Request body) {Number} pincode Pincode
     * @apiParam (Request body) {Number} phoneNumber User Phone Number (Optional)
     * @apiParam (Request body) {String} image Customer Image
     * @apiParamExample {json} Input
     * {
     *      "firstName" : "",
     *      "lastName" : "",
     *      "password" "",
     *      "emailId" : "",
     *      "address" : "",
     *      "countryId": "",
     *      "zoneId": "",
     *      "pincode": "",
     *      "phoneNumber" : "",
     *      "image": "",
     * }
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Successfully updated your profile.",
     *      "status": "1"
     * }
     * @apiSampleRequest /api/customer/edit-profile
     * @apiErrorExample {json} Register error
     * HTTP/1.1 500 Internal Server Error
     */
    // Customer Profile Edit Function
    @Post('/edit-profile')
    @Authorized('customer')
    public async editProfile(@Body({ validate: true }) customerEditProfileRequest: CustomerEditProfileRequest, @Req() request: any, @Res() response: any): Promise<any> {
        console.log('UPDATE1');
        console.log(customerEditProfileRequest);
        const image = customerEditProfileRequest.image;
        let name;

        const resultData = await this.customerService.findOne({
            select: ['id', 'firstName', 'lastName', 'email', 'mobileNumber', 'address', 'zoneId', 'countryId', 'pincode', 'avatar', 'avatarPath', 'password', 'address_numero',
                'phone', 'cnpj_cpf', 'inscr_estad_rg', 'address_complem', 'bairro', 'city', 'contato_resp', 'website', 'email_pre_impres', 'email_financeiro'],
            where: { id: request.user.id },
        });

        console.log('resultData1');
        console.log(resultData);

        if (image) {
            const base64Data = new Buffer(image.replace(/^data:image\/\w+;base64,/, ''), 'base64');
            const type = image.split(';')[0].split('/')[1];
            name = 'Img_' + Date.now() + '.' + type; // path.extname(file.originalname);
            const path = 'customer/';
            let val: any;
            if (env.imageserver === 's3') {
                val = await this.s3Service.imageUpload((path + name), base64Data, type);
            } else {
                val = await this.imageService.imageUpload((path + name), base64Data);
            }
            console.log(val);
            resultData.avatar = name;
            resultData.avatarPath = path;
        }
        resultData.firstName = customerEditProfileRequest.firstName;
        resultData.lastName = customerEditProfileRequest.lastName;
        resultData.email = customerEditProfileRequest.emailId;
        resultData.mobileNumber = customerEditProfileRequest.mobile;
        resultData.address = customerEditProfileRequest.address;
        resultData.zoneId = customerEditProfileRequest.zoneId;
        resultData.countryId = customerEditProfileRequest.countryId;
        resultData.pincode = customerEditProfileRequest.pincode;
        resultData.username = customerEditProfileRequest.emailId;
        resultData.address_numero = customerEditProfileRequest.address_numero;

        resultData.phone = customerEditProfileRequest.phoneNumber;
        resultData.cnpj_cpf = customerEditProfileRequest.cnpj_cpf;
        resultData.inscr_estad_rg = customerEditProfileRequest.inscr_estad_rg;
        resultData.complemento = customerEditProfileRequest.complemento;
        resultData.bairro = customerEditProfileRequest.bairro;
        resultData.city = customerEditProfileRequest.city;
        resultData.mobile = customerEditProfileRequest.mobile;
        resultData.contato_resp = customerEditProfileRequest.contato_resp;
        resultData.website = customerEditProfileRequest.website;
        resultData.email_pre_impres = customerEditProfileRequest.email_pre_impres;
        resultData.email_financeiro = customerEditProfileRequest.email_financeiro;
        resultData.country = customerEditProfileRequest.country;
        if (customerEditProfileRequest.password) {
            // if (await Customer.comparePassword(resultData, customerEditProfileRequest.oldPassword)) {
            resultData.password = await Customer.hashPassword(customerEditProfileRequest.password);
            const updateUserData = await this.customerService.update(resultData.id, resultData);
            if (updateUserData) {
                const successResponseResult: any = {
                    status: 1,
                    message: 'Seu perfil foi Atualizado com sucesso.',
                    data: classToPlain(updateUserData),
                };
                return response.status(200).send(successResponseResult);
            }

        }
        const updateuserData = await this.customerService.update(resultData.id, resultData);
        const successResponse: any = {
            status: 1,
            message: 'Seu perfil foi Atualizado com sucesso.',
            data: classToPlain(updateuserData),
        };
        return response.status(200).send(successResponse);
    }

    // logList API
    /**
     * @api {get} /api/customer/login-log-list Login Log list API
     * @apiGroup Store
     * @apiParam (Request body) {Number} limit limit
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "message": "Successfully get login log list",
     *      "data":{
     *      "id"
     *      "customerId"
     *      "emailId"
     *      "firstName"
     *      "ipAddress"
     *      "createdDate"
     *      }
     * }
     * @apiSampleRequest /api/customer/login-log-list
     * @apiErrorExample {json} Front error
     * HTTP/1.1 500 Internal Server Error
     */
    @Get('/login-log-list')
    public async LogList(@QueryParam('limit') limit: number, @Res() response: any): Promise<any> {
        const loginLogList = await this.loginLogService.logList(limit);
        const promise = loginLogList.map(async (result: any) => {
            const moment = require('moment');
            const createdDate = moment.utc(result.createdDate).local().format('YYYY-MM-DD');
            const temp: any = result;
            temp.createdDate = createdDate;
            return temp;
        });
        const finalResult = await Promise.all(promise);
        const successResponse: any = {
            status: 1,
            message: 'Successfully get login Log list',
            data: finalResult,
        };
        return response.status(200).send(successResponse);

    }

    // Oauth Login API
    /**
     * @api {post} /api/customer/Oauth-login Oauth login API
     * @apiGroup Store
     * @apiParam (Request body) {String} emailId User Email Id
     * @apiParam (Request body) {String} source source
     * @apiParam (Request body) {String} oauthData oauthData
     * @apiParamExample {json} Input
     * {
     *      "emailId" : "",
     *      "source" : "",
     *      "oauthData" : "",
     * }
     * @apiSuccessExample {json} Success
     * HTTP/1.1 200 OK
     * {
     *      "data": "{
     *         "token":''
     *         "password":''
     *      }",
     *      "message": "Successfully login",
     *      "status": "1"
     * }
     * @apiSampleRequest /api/customer/Oauth-login
     * @apiErrorExample {json} Login error
     * HTTP/1.1 500 Internal Server Error
     */
    // Login Function
    @Post('/Oauth-login')
    public async OauthLogin(@Body({ validate: true }) loginParam: CustomerOauthLogin, @Req() request: any, @Res() response: any): Promise<any> {
        console.log(loginParam.emailId);
        const resultData = await this.customerService.findOne({
            where: { email: loginParam.emailId },
        });
        if (!resultData) {
            const newUser = new Customer();
            const tempPassword: any = Math.random().toString().substr(2, 5);
            newUser.password = await Customer.hashPassword(tempPassword);
            newUser.email = loginParam.emailId;
            newUser.username = loginParam.emailId;
            newUser.isActive = 1;
            newUser.ip = (request.headers['x-forwarded-for'] ||
                request.connection.remoteAddress ||
                request.socket.remoteAddress ||
                request.connection.socket.remoteAddress).split(',')[0];
            const newCustomer = await this.customerService.create(newUser);
            // create a token
            const token = jwt.sign({ id: newCustomer.id }, '123##$$)(***&', {
                expiresIn: 86400, // expires in 24 hours
            });
            const emailContent = await this.emailTemplateService.findOne(1);
            const message = emailContent.content.replace('{name}', newCustomer.username);
            const sendMailRes = MAILService.registerMail(message, newCustomer.email, emailContent.subject);
            if (sendMailRes) {
                const successResponse: any = {
                    status: 1,
                    message: 'Thank you for registering with us. Kindly check your email inbox for further details. ',
                    data: {
                        token,
                        user: classToPlain(resultData),
                        password: tempPassword,
                    },
                };
                return response.status(200).send(successResponse);
            }
        } else {
            // create a token
            const token = jwt.sign({ id: resultData.id }, '123##$$)(***&', {
                expiresIn: 86400, // expires in 24 hours
            });

            const successResponse: any = {
                status: 1,
                message: 'Loggedin successfully.',
                data: {
                    token,
                    user: classToPlain(resultData),
                },
            };
            return response.status(200).send(successResponse);
        }
    }
}
