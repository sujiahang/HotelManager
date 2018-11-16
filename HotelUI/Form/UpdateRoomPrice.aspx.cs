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
using HotelBLL;
using HotelModels;

public partial class Form_UpdateRoomPrice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            UpdateRoom();
        }
    }


    /// <summary>
    /// 修改房间信息
    /// </summary>
    private void UpdateRoom()
    {
        //得到表单提交的值
        RoomTypeBean rb = new RoomTypeBean();
        RoomTypeBLL bll = new RoomTypeBLL();
        //分别给实体Bean赋值
        rb.TypeName = Request.Form["TypeName"];
        rb.TypeId = int.Parse(Request.Form["TypeId"].ToString());
        rb.TypePrice = double.Parse(Request.Form["TypePrice"].ToString());
        rb.IsTv = Request.Form["IsTv"];
        rb.IsKongTiao = Request.Form["IsKongTiao"];
        rb.Remark = Request.Form["remark"];
        string json;
        //如果success为true,则表示服务器端处理成功
        if (bll.UpdateRoomType(rb))
        {
            json = @"{success: true}";
        }
        else
        {
            json = @"{success: false}";
        }
        Response.Write(json);
    }
}
