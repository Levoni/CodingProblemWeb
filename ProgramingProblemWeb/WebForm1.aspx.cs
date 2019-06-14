using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using testWebASP;

namespace testWebASP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                TextBox1.Text = "";
                string temp = DropDownList1.SelectedValue;
                string finalText = ProcessEvent(DropDownList1.Text);
                TextBox1.Text = finalText;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private string ProcessEvent(string eventType)
        {

            System.Text.StringBuilder sb = new System.Text.StringBuilder(string.Empty);
            IEvent temp = new Register();
            if (eventType == "Register")
            {
                temp = new Register();
            }
            else if (eventType == "Diagnose")
            {
                temp = new Diagnose();
            }

            for (int i = 1; i <= 100; i++)
            {
                sb.AppendLine(temp.ReadIntAndPrint(i));
            }
            return sb.ToString();
        }
    }
}