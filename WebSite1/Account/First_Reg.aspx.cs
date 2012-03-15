using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

public partial class Account_First_Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string GetMD5Hash(string input)
    {
        System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
        byte[] bs = System.Text.Encoding.UTF8.GetBytes(input);
        bs = x.ComputeHash(bs);
        System.Text.StringBuilder s = new System.Text.StringBuilder();
        foreach (byte b in bs)
        {
            s.Append(b.ToString("x2").ToLower());
        }
        string password = s.ToString();
        return password;
    }
    private bool SiteSpecificAuthenticationMethod(string UserName, string Password)
    {
        return false;
    }


    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string user = Login1.UserName;
        string pswd = Login1.Password;

        bool Authenticated;
        Authenticated = SiteSpecificAuthenticationMethod(Login1.UserName, Login1.Password);

        if (user == "newcomer" && GetMD5Hash(pswd) == "96e79218965eb72c92a549dd5a330112")
        {
            Response.Redirect("~/Account/Register.aspx");
        }
        else
        {
            Response.Redirect("~/Account/First_Reg.aspx");
        }

        e.Authenticated = Authenticated;
    }
}