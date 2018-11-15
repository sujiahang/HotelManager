<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>酒店管理用户登录</title>
    <link href="/HotelUI/Ext/resources/css/ext-all.css" rel="stylesheet" type="text/css" />
    <link href="Css/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/HotelUI/Ext/adapter/ext/ext-base.js"></script>
    <script type="text/javascript" src="/HotelUI/Ext/ext-all.js"></script>
    <link href="/HotelUI/Css/newhead.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="1004px" border="0">
            <tr>
                <td colspan="6">
                    <img height="92px" alt="" src="Images/login/crm_3.gif"
                        width="345px" /></td>
                <td colspan="4">
                    <img height="92px" alt="" src="Images/login/crm_2.gif"
                        width="452px" /></td>
                <td>
                    <img height="92px" alt="" src="Images/login/crm_3.gif" width="207px" /></td>
            </tr>
            <tr>
                <td colspan="6">
                    <img height="98px" alt="" src="Images/login/crm_4.gif"
                        width="345px" /></td>
                <td colspan="4">
                    <img height="98px" alt="" src="Images/login/crm_5.gif"
                        width="452px" /></td>
                <td>
                    <img height="98px" alt="" src="Images/login/crm_6.gif" width="207px" /></td>
            </tr>
            <tr>
                <td rowspan="5">
                    <img height="370px" alt="" src="Images/login/crm_7.gif"
                        width="59px" /></td>
                <td colspan="5">
                    <img height="80px" alt="" src="Images/login/crm_8.gif"
                        width="286px" /></td>
                <td colspan="4">
                    <img height="80px" alt="" src="Images/login/crm_9.gif"
                        width="452px" /></td>
                <td>
                    <img height="80px" alt="" src="Images/login/crm_10.gif" width="207px" /></td>
            </tr>
            <tr>
                <td>
                    <img height="110px" alt="" src="Images/login/crm_11.gif" width="127px" /></td>
                <td style="background: url(Images/login/crm_12.gif)" colspan="6" align="center">
                    <table id="table1" cellspacing="0" cellpadding="0" width="98%"
                        border="0">
                        <tr>
                            <td>


                                <table id="table2" cellspacing="1" cellpadding="0" width="100%"
                                    border="0">
                                    <tbody>
                                        <tr>
                                            <td align="center" width="81px"><font color="#ffffff">用户名：</font></td>
                                            <td>
                                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="center" width="81px"><font
                                                color="#ffffff">密&nbsp; 码：</font></td>
                                            <td>
                                                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="152px"></asp:TextBox></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td colspan="2" rowspan="2">
                    <img height="158px" alt="" src="Images/login/crm_13.gif"
                        width="295px"></td>
                <td rowspan="2">
                    <img height="158px" alt="" src="Images/login/crm_14.gif"
                        width="207px" /></td>
            </tr>

            <tr>
                <td rowspan="3">
                    <img height="180px" alt="" src="Images/login/crm_15.gif"
                        width="127px" /></td>
                <td rowspan="3">
                    <img height="180px" alt="" src="Images/login/crm_16.gif"
                        width="24px" /></td>
                <td>
                    <asp:ImageButton ID="btnLogin" runat="server" ImageUrl="Images/login/crm_17.gif" OnClick="btnLogin_Click" /></td>
                <td>
                    <img height="48px" alt="" src="Images/login/crm_18.gif" width="21px" /></td>
                <td colspan="2" />
                <asp:ImageButton ID="btnOut" runat="server" ImageUrl="Images/login/crm_19.gif" OnClick="btnOut_Click" /><a href="Login.aspx"></a></td>
                <td>
                    <img height="48px" alt="" src="Images/login/crm_20.gif"
                        width="101px" /></td>
            </tr>
            <tr>
                <td colspan="5" rowspan="2">
                    <img height="132px" alt="" src="Images/login/crm_21.gif"
                        width="292px" /></td>
                <td rowspan="2">
                    <img height="132px" alt="" src="Images/login/crm_22.gif"
                        width="170px" /></td>
                <td colspan="2">
                    <img height="75px" alt="" src="Images/login/crm_23.gif"
                        width="332px" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <img height="57px" alt="" src="Images/login/crm_24.gif"
                        width="332px" /></td>
            </tr>
            <tr>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="59px" /></td>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="127px" /></td>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="24px" /></td>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="86px" /></td>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="21px" /></td>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="28px" /></td>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="56px" /></td>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="101px" /></td>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="170px" /></td>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="125px" /></td>
                <td>
                    <img height="1" alt="" src="images/admin/spacer.gif" width="207px" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
