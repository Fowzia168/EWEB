using System.Collections.Generic;
using BLL.model;
using DAL;

namespace BLL.Manager
{
    
    public class CustomerManager
    {
        private CustomerGateway customerGateway;
    
        public CustomerManager()

        {
            customerGateway=new CustomerGateway();
            
        }

        public List<Customer> AllCustomers(string email, string pass)
        {
           
            return customerGateway.ACustomer(email,pass);
        }


        public Customer MyCustomer(string email, string pass)
        {
            return customerGateway.MyCustomer(email, pass);
        }


        public string Save(Customer aCustomer)
        {
           

            int rowAffect = customerGateway.Save(aCustomer);
            if (rowAffect > 0)
            {
                return "Your details Saved";
            }
            else
            {
                return " Save failed";
            }

        }


        public bool IsEmailExist(string email)
        {
            return customerGateway.IsEmailExist(email);
        }

        public List<Customer> ForgetfullCustomer(string email)
        {
            return customerGateway.ForgetfullCustomer(email);
        }

        public Customer MyForgetfulCustomer(string email)
        {
            return customerGateway.MyForgetfulCustomer(email);
        }

	
    }
}