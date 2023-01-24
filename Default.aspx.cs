using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    SqlConnection connection;

   

    // private string khaled;

    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
        {
            loadRecord();
        }

    }

  // Database connection &  insert Data
    protected void insertBtn_Click(object sender, EventArgs e)
    {
        #region
        //connection = new System.Data.SqlClient.SqlConnection("Data Source=STL-SOFT-KJUBAI;Initial Catalog=crud_db;Integrated Security=SSPI");
        //  //sqlConnection con = new sqlConnection("Data Source=STL-SOFT-KJUBAI;Initial Catalog=crud_db;Integrated Security=True");

        //  //SqlCommand comm = new SqlCommand("Insert into Table_1 values('"+int.Parse(TextBox2.Text)+"', '"+TextBox3.Text+"' )");

        //  connection.Open();
        //  SqlCommand comm = new SqlCommand("Insert into Table_1 values('" + int.Parse(TextBox2.Text) + "', '" + TextBox3.Text + "')", connection);
        //  comm.ExecuteNonQuery();
        //  connection.Close();
        #endregion

        info obj = new info();


       
            if ((TextBox2.Text.Length!= 0) && (TextBox3.Text.Length != 0))
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(TextBox2.Text, "^[0-9]*$")) // '!' working. 
                {
                    obj.function_simple(int.Parse(TextBox2.Text), TextBox3.Text);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
                    loadRecord();
                }
              


            #region
            //if (!System.Text.RegularExpressions.Regex.IsMatch(TextBox2.Text, "^[0-9]*$"))
            //    {
            //        obj.function_simple(int.Parse(TextBox2.Text), TextBox3.Text);
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            //        loadRecord();
            //    }
            #endregion
        }
        else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('plase fill up correctly');", true);
            }
   

        #region
        //if (int.Parse(TextBox2.Text) == null  && (TextBox3.Text)== null)
        //{
        //   ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Name can't be null!');", true);
        //}
        //obj.function_simple((TextBox2.Text), TextBox3.Text);

        //if (string.IsNullOrWhiteSpace(TextBox3.Text))
        //{
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Name can't be null!');", true);
        //    loadRecord();
        //}
        //else
        //{
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
        //    loadRecord();
        //}


        //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
        //loadRecord();
        #endregion
    }

    //For load the Data. That show all data for every page load.
    void loadRecord()
    {
        connection = new System.Data.SqlClient.SqlConnection("Data Source=STL-SOFT-KJUBAI;Initial Catalog=crud_db;Integrated Security=SSPI");
        SqlCommand comm = new SqlCommand("select * from Table_1", connection);
        SqlDataAdapter d = new SqlDataAdapter(comm);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }


    // method for update data
    protected void updateBtn_Click(object sender, EventArgs e)
    {

        connection = new System.Data.SqlClient.SqlConnection("Data Source=STL-SOFT-KJUBAI;Initial Catalog=crud_db;Integrated Security=SSPI");
        connection.Open();
        SqlCommand comm = new SqlCommand("update Table_1 set Name= '" + TextBox3.Text + "'"+" where ID= '" + int.Parse(TextBox2.Text) + "'", connection) ;
        comm.ExecuteNonQuery();
        connection.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully updated');", true);
       
       loadRecord();
    }


    // method for delete data 
    protected void deleteBtn_Click(object sender, EventArgs e)
    {
        connection = new System.Data.SqlClient.SqlConnection("Data Source=STL-SOFT-KJUBAI;Initial Catalog=crud_db;Integrated Security=SSPI");
        connection.Open();
        SqlCommand comm = new SqlCommand("delete Table_1  where ID= '" + int.Parse(TextBox2.Text) + "'", connection);
        comm.ExecuteNonQuery();
        connection.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
        loadRecord();
    }


    // clear Boxes
    protected void clearBtn_Click(object sender, EventArgs e)
    {
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        loadRecord();
    }


    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}