<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="SignInCompany.aspx.cs" Inherits="SignInCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head>
<body>
    <link href="Scripts/MyCSS.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/textboxcss.css" rel="stylesheet" type="text/css" />
<center>
<table width="100%" border="10">

<tr>
<td colspan="2">
<h3>
<b>
Welcome to Inventory Management.
</b>
</h3>
</td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>
    Company ID :</td>
<td>
<asp:TextBox ID="compid" cssClass="myTextBox" runat="server" Width="297px"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Password :
</td>
<td>
<asp:TextBox runat="server" cssClass="myTextBox" ID="password" TextMode="Password" Width="295px"></asp:TextBox>
</td>
</tr>
<tr>
<td>

</td>
<td>
<asp:LinkButton runat="server" PostBackUrl="~/RecoverCompPassword.aspx">Forgot your Password ?</asp:LinkButton>
</td>
</tr>
<tr>
<td>

</td>
<td>
    <asp:LinkButton ID="LinkButton6" cssClass="myButton" runat="server" 
        onclick="LinkButton6_Click">Sign In</asp:LinkButton>
</td>
</tr>
</table>
</center>
</body>
</head>
</html>

</asp:Content>

