using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL.model;
using BLL.Manager;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnResetPassword_Click(object sender, EventArgs e)
    {

        //Response.Write("<script>alert('Data inserted successfully')</script>");

        CustomerManager customerManager = new CustomerManager();
        ForgetPasswordManager aForgetPasswordManager=new ForgetPasswordManager();

        string email = Email.Text;
     

        //Request.Form["Email"]; this is how you retrive data without runat server;
        List<Customer> aForgetfulCustomerList = customerManager.ForgetfullCustomer(email);
        Customer aCustomer = customerManager.MyForgetfulCustomer(email);
        


        if (aForgetfulCustomerList.Count != 0)
        {

            String myGUID = Guid.NewGuid().ToString();
            int Uid = aCustomer.Id;
            //Send email code
            string toEmailAddress = aCustomer.Email;
            string userName = aCustomer.Name;
            string emailBody = "Hi ," + userName + "<br/><br/><br/>Click the link to reset your password<br/><br/> http://localhost:1057/RecoverPassword.aspx?id=" +
                               myGUID;

            MailMessage PassRecMail = new MailMessage("ziamish39@gmail.com", toEmailAddress);

            PassRecMail.Body = emailBody;
            PassRecMail.IsBodyHtml = true;
            PassRecMail.Subject = "Reset password in ecommerce site";

            using (SmtpClient client = new SmtpClient())
            {
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("ziamish39@gmail.com", "Mr163Fr257!");
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.Send(PassRecMail);
            }


         //========


            string message= aForgetPasswordManager.Save(myGUID, Uid);

            LabelMessage.Text = message;
        }
        else
        {
            LabelMessage.Text = "this email does not exist ";
            LabelMessage.ForeColor = System.Drawing.Color.Crimson;
        }


        ClearAll();

    }


    public void ClearAll()
    {
        Email.Text = "";
       
    }


}