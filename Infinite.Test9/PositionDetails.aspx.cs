using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Server=ICS-LAP-3307\\SQLEXPRESS; Database =HRCon; Integrated Security=true;"))
            {
                using (cmd = new SqlCommand("InsertPositionDetails", con))
                {
                    cmd.Parameters.AddWithValue("@PositionCode", TxtPositionCode.Text);
                    cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);
                    cmd.Parameters.AddWithValue("@Year", DropDownyear.SelectedValue);
                    cmd.Parameters.AddWithValue("@BudgetStrength", TxtBudgetedstr.Text);
                    cmd.Parameters.AddWithValue("CurrentStrength", TxtCurrentStr.Text);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        LblMessage.Text = "Position AddedSuccessfully";
                    } 
                    else
                    {
                        LblMessage.Text = "Invalid Position Details";
                    }
                    cmd.Dispose();
                    con.Close();
                }
            }
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            TxtPositionCode.Text = "";
            TxtDescription.Text = "";
            TxtCurrentStr.Text = "";
            TxtBudgetedstr.Text = "";
            DropDownyear.SelectedValue = "";


        }
    }
}