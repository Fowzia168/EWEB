using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using BLL.model;
using DAL;

/// <summary>
/// Summary description for ForgetPasswordGateway
/// </summary>
public class ForgetPasswordGateway:BaseGateway
{

    public int SaveForgetPassword(string gui, int id)
    {



        string query =
           "INSERT INTO ForgetPassword (Id,Uid,RequestDateTime) VALUES ('" + gui + "','" + id + "',GETDATE())";


        Command = new SqlCommand(query, Connection);

        Connection.Open();
        int rowAffected = Command.ExecuteNonQuery();

        Command.Connection.Close();
        return rowAffected;
    }

    public int  GetCustomerIdByGuid(string guid)
    {

        string query = "SELECT * FROM ForgetPassword where Id='" + guid + "'";


        Command = new SqlCommand(query, Connection);
        ForgetPassword aForgetPassword = new ForgetPassword();
        Connection.Open();
       
        Reader = Command.ExecuteReader();

        while (Reader.Read())
        {


            aForgetPassword.Id = Reader["Id"].ToString();
         
            aForgetPassword.Uid = Convert.ToInt32(Reader["Uid"].ToString());
            
        }
        int myId=  aForgetPassword.Uid;
        Connection.Close();

        return myId;
    }

    public int UpdatePasswordById(int id, string pass, string guid)
    {
        string query = "UPDATE Customer SET Password=@pass WHERE Id=@id";
        string query1 = "DELETE FROM ForgetPassword where Id=@guid";
        Connection.Open();
        
        Command = new SqlCommand(query, Connection);
        SqlCommand command = new SqlCommand(query1, Connection);

       

        Command.Parameters.AddWithValue("@id", id);
        Command.Parameters.AddWithValue("@pass", pass);
        command.Parameters.AddWithValue("@guid", guid);

       // SqlCommand command = new SqlCommand(query1, Connection);

        int rowAffect = Command.ExecuteNonQuery();
        command.ExecuteNonQuery();
        Connection.Close();
        

        return rowAffect;
    }


    //this deletes the row which has just been used from database;
       
    //public int DeleteTheCurrentRow(string guid)
    //{
    //    string query = "DELETE FROM ForgetPassword where Id=@guid";

    //    Command = new SqlCommand(query, Connection);
    //    Connection.Open();

    //    Command.Parameters.AddWithValue("@guid", guid);
       


    //    int rowAffect = Command.ExecuteNonQuery();
    //    Connection.Close();
    //    return rowAffect;
    //}




}