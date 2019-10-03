"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const tslib_1 = require("tslib");
const emailTemplate_1 = require("../../api/models/emailTemplate");
class CreateEmailTemplate {
    seed(factory, connection) {
        return tslib_1.__awaiter(this, void 0, void 0, function* () {
            const em = connection.createEntityManager();
            const registerData = "Olá {name},<br/><br/> <p style='margin-bottom:.5em; margin: 0 0 10px 0;text-indent: 50px'> Obrigado por expressar seu interesse e se registrar na Complatte Bureau Digital Ltda, o caminho mais rápido para uma unidade de comércio eletrônico mais inteligente.   </p>";
            const fogotPasswordData = "Olá {name},<br/><br/>        <p style='margin-bottom:.5em; margin: 0 0 10px 0;text-indent: 50px'> Sua nova senha é :  {xxxxxx}  </p>";
            const contactUsData = "Caro Admin,<br/><br/>        <p style='margin-bottom:.5em; margin: 0 0 10px 0;text-indent: 50px'> Você recentemente recebeu uma mensagem de {name} e os detalhes estão aqui: <br> Detalhes: <br> Email: {email}, <br> Phone Telefone : {phoneNumber}, <br> Mensagem : {message}.  </p>";
            const createCustomerData = 'Dear {name},<br/><br/>   ' +
                ' Temos o prazer de informar que a Complatte Bureau Digital Ltda o adicionou como cliente. Aqui estão suas credenciais de usuário para fazer login no aplicativo <br>' +
                "     <p style='margin-bottom:.5em; margin: 0 0 10px 0;'>  Usuário : {username}</p>     " +
                "   <p style='margin-bottom:.5em; margin: 0 0 10px 0;'>  Senha : {password}</p> <br/>        " +
                "<p style='margin-bottom:.5em; margin: 0 0 10px 0;text-indent: 50px'> Você pode fazer login usando o Usuário e a Senha acima. </p>";
            const customerOrderData = "Olá {name},        </td>    </tr>    <tr>        <td dir='ltr' style='padding:0 0px;color:#078e05;font-weight:400;text-align:left;font-size:16px;line-height:1.5rem;padding-top:10px;font-family: 'Roboto', sans-serif;' valign='top'> Pedido feito com sucesso.        </td>    </tr>   " +
                " <tr>        <td dir='ltr' style='padding:0 0px;color:#000;font-weight:300;text-align:left;font-size:12px;line-height:1.2rem;padding-top:10px;font-family: 'Roboto', sans-serif;' valign='top'> Você fez um pedido para serviços de personalização. Por favor, encontre os seguintes detalhes no pedido.    </tr></tbody></table></td></tr> ";
            const adminNotifyData = "Caro Mr.Admin,        </td>    </tr>    <tr>        <td dir='ltr' style='padding:0 0px;color:#078e05;font-weight:400;text-align:left;font-size:16px;line-height:1.5rem;padding-top:10px;font-family: 'Roboto', sans-serif;' valign='top'> Um novo pedido foi feito.         </td>    </tr>    <tr>    " +
                "    <td dir='ltr' style='padding:0 0px;color:#000;font-weight:300;text-align:left;font-size:12px;line-height:1.2rem;padding-top:10px;font-family: 'Roboto', sans-serif;' valign='top'> Novo pedido {orderId} do usuário {name} foi concluído com sucesso. Por favor, encontre os seguintes detalhes no pedido.    </tr> </tbody></table></td> </tr> ";
            const statusData = [{
                    emailTemplateId: 1,
                    title: 'Register Content',
                    subject: 'Registrado com sucesso',
                    content: registerData,
                    isActive: 1,
                },
                {
                    emailTemplateId: 2,
                    title: 'Forgot Password Content',
                    subject: 'Esqueceu a senha',
                    content: fogotPasswordData,
                    isActive: 1,
                },
                {
                    emailTemplateId: 3,
                    title: 'Contact Content',
                    subject: 'Contato',
                    content: contactUsData,
                    isActive: 1,
                },
                {
                    emailTemplateId: 4,
                    title: 'Create Customer Content',
                    subject: 'Usuário Login',
                    content: createCustomerData,
                    isActive: 1,
                },
                {
                    emailTemplateId: 5,
                    title: 'Customer Order Content',
                    subject: 'Detalhes do seu pedido',
                    content: customerOrderData,
                    isActive: 1,
                },
                {
                    emailTemplateId: 6,
                    title: 'Admin Mail Content',
                    subject: 'Parabéns pelo seu pedido recente',
                    content: adminNotifyData,
                    isActive: 1,
                },
            ];
            let i = 0;
            for (i; i < statusData.length; i++) {
                const emailData = new emailTemplate_1.EmailTemplate();
                emailData.emailTemplateId = statusData[i].emailTemplateId;
                emailData.title = statusData[i].title;
                emailData.subject = statusData[i].subject;
                emailData.content = statusData[i].content;
                emailData.isActive = statusData[i].isActive;
                yield em.save(emailData);
            }
            return statusData;
        });
    }
}
exports.CreateEmailTemplate = CreateEmailTemplate;
//# sourceMappingURL=CreateEmailTemplate.js.map