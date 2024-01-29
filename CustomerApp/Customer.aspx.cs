using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CustomerApp
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CusDetl.Visible = false;
            Page.UnobtrusiveValidationMode=UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                CusDetl.Visible = true;
                CusDetl.Text = "Registration Done !!!";
                CusDetl.Text += "<br>Customer Name :" + TxtName.Text;
                CusDetl.Text += "<br>Mobile Number :" + TxtMobile.Text;
                CusDetl.Text += "<br>Email Id :" + TxtEmail.Text;
                CusDetl.Text += "<br>Password :" + TxtPass.Text;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string name = args.Value;
            args.IsValid = name.Length >= 6;
        }
    }
}