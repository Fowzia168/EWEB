using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecoverPassword : System.Web.UI.Page
{
    public string message;
    public int customerId;
    public string newPassword;
    public string guidValue;
    protected void Page_Load(object sender, EventArgs e)
    {   ForgetPasswordManager aForgetPasswordManager= new ForgetPasswordManager();

       guidValue = Request.QueryString["id"];


        if (guidValue!=null)
        {
            ForgetPassword aForgetPassword = new ForgetPassword();
            //int myId=
          //  aForgetPassword = aForgetPasswordManager.GetCustomerIdByGuid(guidValue);

            customerId = aForgetPasswordManager.GetCustomerIdByGuid(guidValue);
           

            //string newPassword = 


        }
        if (!IsPostBack)
        {
            
           
        }
        


    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        if (guidValue != null && newPassTextbox.Text !="" && confirmPassTextbox.Text !="")
        {
            ForgetPasswordManager aForgetPasswordManager = new ForgetPasswordManager();
            newPassword = newPassTextbox.Text;
            message = aForgetPasswordManager.UpdatePasswordById(customerId, newPassword, guidValue);

            Response.Write("<script>alert('" + message + "')</script>");
            Response.Redirect("Login.aspx"); 
        }
        else
        {
            Response.Write("<script>alert('There were some problem with your email id ')</script>");
        }
      
    }
}

 
        
    