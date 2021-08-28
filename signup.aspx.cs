using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL.model;
using BLL.Manager;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void BtnSignUp_Click(object sender, EventArgs e)
    {


        string name = Request.Form["Name"];
        string email = Request.Form["Email"];
        string password = Request.Form["Password"];
        string address = Request.Form["Address"];
        string contact = Request.Form["Contact"];

        Customer aCustomer = new Customer();
        aCustomer.Name = name;
        aCustomer.Email = email;
        aCustomer.Password = password;
        aCustomer.Address = address;
        aCustomer.Contact = contact;

        CustomerManager aCustomerManager=new CustomerManager();

        if (aCustomerManager.IsEmailExist(email)==true)
        {
            Message.Text = "Email already exists";
        }
        else
        {
            string message = aCustomerManager.Save(aCustomer);
            Message.Text = message;

            //Response.Write("<script>alert('" + message + "')</script>");
            Response.Redirect("Login.aspx");
        }
        




    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}