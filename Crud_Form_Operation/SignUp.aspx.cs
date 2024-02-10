using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Crud_Form_Operation
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SAGAR-SS;Initial Catalog=Project;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data();
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {//insert button
            
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Studeninfo_1 VALUES('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + double.Parse(TextBox3.Text) + "','"+TextBox4.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            data();
        }
       public void data()
        {            
            SqlDataAdapter d = new SqlDataAdapter("select * from Studeninfo_1", con);
            DataTable dt=new DataTable();
            d.Fill(dt);
            GridView1.DataSource= dt;
            GridView1.DataBind();
            con.Close();
        }
    }
}