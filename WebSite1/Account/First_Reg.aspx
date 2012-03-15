<%@ Page Language="C#" AutoEventWireup="true" CodeFile="First_Reg.aspx.cs" Inherits="Account_First_Reg" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Первый вход</title>
    <style type="text/css">

    A:link {
	    color : #3366FF; 
	    text-decoration: none;
    }
    A:visited {
	    color : #3366FF; 
	    text-decoration: none;
    }
    A:hover {
	    color : black;
	    text-decoration:underline;
	}
	A:active {
	    color : gray;
	    text-decoration: none;
    }
    </style>
</head>
<body>
<form id="form1" runat="server">
<table width="100%" height="100%" border="0">
<tr>
    <td align = "center" valign = "middle">
    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" 
        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
        Font-Size="0.8em" ForeColor="#333333" onauthenticate="Login1_Authenticate" 
            UserName="newcomer">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Login>
    <br />
    <a href = "Login.aspx">Для зарегестрированных пользователей</a>
    </td>
</tr>
</table>
</form>
</body>
</html>
