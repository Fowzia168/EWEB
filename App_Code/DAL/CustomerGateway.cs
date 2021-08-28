using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using BLL.model;

namespace DAL
{
    public class CustomerGateway:BaseGateway
    {


        public List<Customer> ACustomer(string email,string pass)
        {

            string query = "SELECT * FROM Customer where Email='" + email + " ' and Password='" + pass + " ' ";


            Command = new SqlCommand(query, Connection);
            List<Customer> customerList = new List<Customer>();

            Connection.Open();
            Reader = Command.ExecuteReader();

            while (Reader.Read())
            {
                Customer aCustomer = new Customer()
                {
                    Id = Convert.ToInt32(Reader["Id"].ToString()),
                    Name = Reader["Name"].ToString(),
                    Email = Reader["Email"].ToString(),
                    Password = Reader["Password"].ToString(),
                    Address = Reader["Address"].ToString(),
                    UserType = Reader["UserType"].ToString(),

                };

                customerList.Add(aCustomer);
            }

            Connection.Close();

            return customerList;
        }


        public List<Customer> ForgetfullCustomer(string email)
        {

            string query = "SELECT * FROM Customer where Email='" + email + " '";


            Command = new SqlCommand(query, Connection);
            List<Customer> customerList = new List<Customer>();

            Connection.Open();
            Reader = Command.ExecuteReader();

            while (Reader.Read())
            {
                Customer aCustomer = new Customer()
                {
                    Id = Convert.ToInt32(Reader["Id"].ToString()),
                    Name = Reader["Name"].ToString(),
                    Email = Reader["Email"].ToString(),
                    Password = Reader["Password"].ToString(),
                    Address = Reader["Address"].ToString(),
                    UserType = Reader["UserType"].ToString(),

                };

                customerList.Add(aCustomer);
            }

            Connection.Close();

            return customerList;
        }


        public Customer MyForgetfulCustomer(string email)
        {

            string query = "SELECT * FROM Customer where Email='" + email + " ' ";


            Command = new SqlCommand(query, Connection);
            Customer aCustomer = new Customer();
            Connection.Open();
            Reader = Command.ExecuteReader();

            while (Reader.Read())
            {



                aCustomer.Id = Convert.ToInt32(Reader["Id"].ToString());
                aCustomer.Name = Reader["Name"].ToString();
                aCustomer.Email = Reader["Email"].ToString();
                aCustomer.Password = Reader["Password"].ToString();
                aCustomer.Address = Reader["Address"].ToString();
                aCustomer.UserType = Reader["UserType"].ToString();



            }

            Connection.Close();

            return aCustomer;
        }






        public Customer MyCustomer(string email, string pass)
        {

            string query = "SELECT * FROM Customer where Email='" + email + " ' and Password='" + pass + " ' ";


            Command = new SqlCommand(query, Connection);
            Customer aCustomer = new Customer();
            Connection.Open();
            Reader = Command.ExecuteReader();

            while (Reader.Read())
            {

                
                
                aCustomer.Id = Convert.ToInt32(Reader["Id"].ToString());
                aCustomer.Name = Reader["Name"].ToString();
                aCustomer.Email = Reader["Email"].ToString();
                aCustomer.Password = Reader["Password"].ToString();
                aCustomer.Address = Reader["Address"].ToString();
                aCustomer.UserType = Reader["UserType"].ToString();



            }

            Connection.Close();

            return aCustomer;
        }


        public int Save(Customer aCustomer)
        {



            string query =
               "INSERT INTO Customer (Name,Email,Password,Address,Contact,UserType) VALUES ('" + aCustomer.Name + "','" + aCustomer.Email + "','" + aCustomer.Password + "','" + aCustomer.Address + "','" + aCustomer.Contact + "','User')";


            Command = new SqlCommand(query, Connection);

            Connection.Open();
            int rowAffected = Command.ExecuteNonQuery();

            Command.Connection.Close();
            return rowAffected;
        }

        public bool IsEmailExist(string email)
        {

            string query = "SELECT * FROM Customer WHERE Email='" + email + "'";

            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isEmailExist = Reader.HasRows;
            Command.Connection.Close();
            return isEmailExist;

        }






    }
}