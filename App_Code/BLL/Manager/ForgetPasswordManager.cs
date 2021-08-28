using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ForgetPasswordManager
/// </summary>
public class ForgetPasswordManager
{
    private ForgetPasswordGateway aForgetPasswordGateway;

    public ForgetPasswordManager()
    {
        aForgetPasswordGateway = new ForgetPasswordGateway();
    }

    public string Save(string gui, int id)
    {


        int rowAffect = aForgetPasswordGateway.SaveForgetPassword(gui,id);
        if (rowAffect > 0)
        {
            return "Reset Link has already been sent to your emial ! Check your email or spam msg";
        }
        else
        {
            return " Error occured in time of sending email";
        }

    }

    public int GetCustomerIdByGuid(string guid)
    {
        return aForgetPasswordGateway.GetCustomerIdByGuid(guid);
    }


    public string UpdatePasswordById(int id, string pass,string guid)
    {
        int rowAffect = aForgetPasswordGateway.UpdatePasswordById(id, pass ,guid);
        if (rowAffect > 0)
        {
            return "Password updated";
        }
        else
        {
            return " Error occured in time of updating password";
        }
    }


    //public string DeleteTheCurrentRow(string guid)
    //{
    //    int rowAffect = aForgetPasswordGateway.DeleteTheCurrentRow(guid);

    //    if (rowAffect > 0)
    //    {
    //        return "Row deleted";
    //    }
    //    else
    //    {
    //        return " Error occured in time of deleting row";
    //    }


    //}



}