using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Configuration;
using System.ServiceModel.ComIntegration;
using System.ServiceModel.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL.model;
using BLL.Manager;

public partial class Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {  //remember me button work
            if (Response.Cookies["USEREMAIL"] != null && Response.Cookies["USERPASS"] != null)
            {

                Email.Value = Response.Cookies["USEREMAIL"].Value;
                Password.Value = Response.Cookies["USERPASS"].Value;
                CheckBox1.Checked = true;
            }
        }
    }
   


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('Data inserted successfully')</script>");

        CustomerManager customerManager=new CustomerManager();

        string email = Email.Value;
        string password = Password.Value;
        
        
        //Request.Form["Email"]; this is how you retrive data without runat server;
        List<Customer> aCustomerList = customerManager.AllCustomers(email,password);
        Customer aCustomer = customerManager.MyCustomer(email, password);



        string myUser = aCustomer.UserType;



        if (aCustomerList.Count != 0)
        {
            //remember me button work 
            if (CheckBox1.Checked)
            {
                Response.Cookies["USEREMAIL"].Value = email;
                Response.Cookies["USERPASS"].Value = password;


                Response.Cookies["USEREMAIL"].Expires = DateTime.Now.AddDays(10);
                Response.Cookies["USERPASS"].Expires = DateTime.Now.AddDays(10); ;

            }
            else
            {
                Response.Cookies["USEREMAIL"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["USERPASS"].Expires = DateTime.Now.AddDays(-1); ;
            }

            if (myUser=="Admin")
            {
                Session["Username"] = aCustomer.Name;
                Response.Redirect("AdminHomePage.aspx");
            }
            if (myUser=="User")
            {
                Session["Username"] = aCustomer.Name;
                Response.Redirect("UserHome.aspx");
            }

            
        }

        else
        {
            Label1.Text = "Incorrect Name Or Password";
        }
        ClearAll();
        
    }


    public void ClearAll()
    {
        Email.Value = "";
        Password.Value = "";
    }



}

