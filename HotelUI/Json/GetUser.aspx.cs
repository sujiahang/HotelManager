﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using HotelBLL;

public partial class Json_GetUser : System.Web.UI.Page
{
    protected string strJson = "";
    UserInfoBLL uib = new UserInfoBLL(); //逻辑层
    private static string name = string.Empty;
protected void Page_Load(object sender, EventArgs e)
    {
        name = Session["LoginName"].ToString();
        //string sign = Context.Request["sign"];
        if (!Page.IsPostBack)
        {
            try
            {
                GetUser();
                
            }
            catch (Exception)
            {
                strJson = @"{success: false}";//失败
            }
        }
    }



    /// <summary>
    /// 查询所有员工(删除用到)
    /// </summary>
    private void GetUser()
    {
        strJson = uib.GetUser(name);
       
        
    }

    /// <summary>
    /// 查询所有员工(修改用到)
    /// </summary>
    private void GetUserByName(string name)
    {
        string str = uib.GetUserByName(name);
        strJson = str;
    }
}
