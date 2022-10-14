using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 練習課本1.TEST
{
    public partial class doit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                name.InsertParameters["Id"].DefaultValue = TextBox1.Text;
                name.InsertParameters["name"].DefaultValue = TextBox2.Text;
                name.InsertParameters["null1"].DefaultValue = TextBox3.Text;
                name.InsertParameters["null2"].DefaultValue = TextBox5.Text;
                name.Insert();
            }
            catch
            {
                Label1.Text = "加入的欄位有空白或重複";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox2.Text = GridView1.Rows[0].Cells[0].Text;
        }
    }
}