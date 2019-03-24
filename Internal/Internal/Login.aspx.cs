using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient; // for database activities 
using System.Data;

namespace Internal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string connectionString = "Server=127.0.0.1;port=3306;username=root;password=;database=internals;";
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string user = TextBox1.Text;

                string password = TextBox2.Text;
                MySqlConnection con = new MySqlConnection(connectionString);
                con.Open();
                MySqlCommand cmd = new MySqlCommand("Select * from login where username='" + user + "'  and password='" + password + "'", con);
                cmd.CommandType = CommandType.Text;
                MySqlDataAdapter adapter = new MySqlDataAdapter();
                adapter.SelectCommand = cmd; //query execution
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet);
                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    string username = dataSet.Tables[0].Rows[0]["username"].ToString() + " " + dataSet.Tables[0].Rows[0]["password"].ToString();
                    Response.Write("<script>alert('Successfully logged in')</script>");
                    Response.Redirect("RegForm.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Sorry! Please enter existing username/password.')</script>");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Check Your Database Connection')", true);
                Response.Write(ex.Message);
            }

        }
    }
}