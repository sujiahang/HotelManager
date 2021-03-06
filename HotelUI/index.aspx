﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>L的酒店管理系统</title>
    <link href="Css/main.css" rel="stylesheet" type="text/css" />
    <link href="Ext/resources/css/ext-all.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Ext/adapter/ext/ext-base.js"></script>
    <script type="text/javascript" src="Ext/ext-all.js"></script>
    <script type="text/javascript" src="Ext/ext-lang-zh_CN.js"></script>
    <script type="text/javascript" src="Ext/adapter/jquery/jquery.js"></script>

    <script type="text/javascript">
        function GetUserName() {
            //WebService.GetLoginName
            //    (
            //    callback = function (res) {
            //        $get('UserName').innerHTML = res;
            //    }
            //)
            //$.ajax({
            //    type: "get",
            //    url: "index.aspx/GetLoginName",
            //    async: true,
            //    contentType: "application/json;charset=utf-8",
            //    dataType: "json",
            //    success: function (msg) {
            //        debugger;
            //        alert(msg.d);
            //    },
            //    error: function (msg) {
            //        alert(msg.d);
            //    }
            //})
        }
    </script>



    <script type="text/javascript" src="Js/Main.js"></script>
    <script type="text/javascript" src="Js/GridMain.js"></script>
    <script type="text/javascript" src="Js/OpenRoom.js"></script>
    <script type="text/javascript" src="Js/AddUser.js"></script>
    <script type="text/javascript" src="Js/DelUser.js"></script>
    <script type="text/javascript" src="Js/AddRoomType.js"></script>
    <script type="text/javascript" src="Js/DelRoomType.js"></script>
    <script type="text/javascript" src="Js/AddRoom.js"></script>
    <script type="text/javascript" src="Js/DelRoom.js"></script>
    <script type="text/javascript" src="Js/CloseRoom.js"></script>
    <script type="text/javascript" src="Js/TodayPrice.js"></script>
    <script type="text/javascript" src="Js/SerachRoomType.js"></script>
    <script type="text/javascript" src="Js/SerachRoom.js"></script>
    <script type="text/javascript" src="Js/SerachMoney.js"></script>
    <script type="text/javascript" src="Js/MyTime.js"></script>
    <script type="text/javascript" src="Js/UpdateRoomPrice.js"></script>
    <script type="text/javascript" src="Js/UpdateUser.js"></script>

</head>
<body onload="getCurrentTime(),GetUserName()">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="WebServices/WebService.asmx" />
            </Services>
        </asp:ScriptManager>

        <div>
            <div id="north" style="background-image: url(Images/main_top_BG.gif); width: 980px; height: 65px">
                <div id="myTime" style="width: 237px; height: 19px; float: right; left: -11px; position: relative; top: 41px; font-size: 12px; color: #ffffff; z-index: 101;">
                </div>
                <div id="UserName" style="width: 187px; height: 18px; float: right; left: 152px; position: relative; top: 21px; font-size: 12px; color: #ffffff; z-index: 102;">
                </div>
            </div>
            <div id="west" style="width: 190px; height: 400px; float: left">
            </div>
            <div id="center" style="width: 579px; height: 400px; float: left">
            </div>
            <div id="east" style="width: 160px; height: 400px; float: left">
            </div>
        </div>
        <div id="south" style="width: 980px; height: 105px; color: Red; margin: 5px; font: normal 12px tahoma, arial, sans-serif, 宋体;" align="center">
            
        </div>
    </form>
</body>
</html>
