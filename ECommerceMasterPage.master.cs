using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ECommerceMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            navbarDropdownMenuLin2k.Text = "Welcome " + Session["Username"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}
