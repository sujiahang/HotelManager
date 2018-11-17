using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Services;

public partial class index : System.Web.UI.Page
{
    public static string UserName = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session != null && Session["LoginName"] != null)
        {
            UserName = Session["LoginName"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        
        //if (!Page.IsPostBack)
        //{
        //    if (Session["LoginName"] == null)
        //    {
        //        Response.Redirect("/HotelUI/Login.aspx");
        //    }
        //}
    }
    //[WebMethod]
    //public static string GetLoginName()
    //{
    //    return UserName;
    //}

}
