using System.Data.SqlClient;
using System.Web.Configuration;

namespace DAL
{
    public class BaseGateway
    {
        public string ConnectionString { get; set; }
        public SqlConnection Connection { get; set; }
        public SqlCommand Command { get; set; }
        public SqlDataReader Reader { get; set; }

        public BaseGateway()
        {
            ConnectionString = WebConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString;
            Connection = new SqlConnection(ConnectionString);

        }
    }
}