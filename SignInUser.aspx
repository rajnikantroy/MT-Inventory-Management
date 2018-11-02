<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="SignInUser.aspx.cs" Inherits="SignInUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head></head>
<body>
<center>
<table width="100%" border="20">
<link rel="stylesheet" type="text/css" href="Scripts/MyCSS.css" />
<link rel="stylesheet" type="text/css" href="Scripts/textboxcss.css" />
<tr>
<td colspan="2">
<h3>
<b>
<center>Welcome to Inventory Management.</center>  
</b>
</h3>
</td>
</tr>
<tr>
<td colspan="2">
  <center><asp:Label ID="Label1" runat="server" Text=" "></asp:Label></center>  
</td>
</tr>
<tr>
<td>
Email :
</td>
<td>
<asp:TextBox ID="userid" runat="server" CssClass="myTextBox" Width="297px"></asp:TextBox>
    &nbsp;Ex: Email ID </td>
</tr>
<tr>
<td>
Password :
</td>
<td>
<asp:TextBox ID="password" runat="server" CssClass="myTextBox" TextMode="Password" Width="295px"></asp:TextBox>
&nbsp;Ex : Password</td>
</tr>
<tr>
<td>

</td>
<td>
<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ForgetPassword.aspx">Forgot your Password ?</asp:LinkButton>
</td>
</tr>
<tr>
<td>

    <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click">Create session and go forward.</asp:LinkButton>

</td>
<td>
    <asp:LinkButton ID="LinkButton3" CssClass="myButton" runat="server" 
        onclick="LinkButton3_Click">LogIn</asp:LinkButton>
</td>
</tr>
</table>
</center>
</body>

</html>

</asp:Content>

