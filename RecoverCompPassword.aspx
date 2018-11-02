<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="RecoverCompPassword.aspx.cs" Inherits="RecoverCompPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<head>
<title>
Forgot Password ?
</title>
</head>
<body>
<table width="100%" border="20">
<tr width="100%">
<td colspan="2"  width="100%">
<center>
    <asp:Label ID="Label4" runat="server"></asp:Label>
</center>
</td>
</tr>
<tr width="100%">
<td width="30%">
Company Id : 
</td>
<td width="70%">
    <asp:TextBox ID="TextBox1" CssClass="myTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Required Field." 
        Font-Bold="True" ForeColor="#009900"></asp:RequiredFieldValidator>
    <asp:LinkButton ID="LinkButton9" CssClass="myButton" runat="server" 
        onclick="LinkButton9_Click">Next</asp:LinkButton>
</td>
</tr>
<tr width="100%">
<td width="30%" class="style5">
your question is :
</td>
<td width="70%" class="style5">
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" 
        Font-Bold="True"></asp:Label>
</td>
</tr>
<tr width="100%">
<td width="30%">
Enter your answer :
</td>
<td width="70%">
    <asp:TextBox ID="TextBox2" CssClass="myTextBox" runat="server"></asp:TextBox>
</td>
</tr>
<tr width="100%">
<td width="30%">

    <asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label>

</td>
<td width="70%">
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" 
        Font-Bold="True"></asp:Label>
</td>
</tr>
<tr width="100%">
<td  colspan="2" style="width: 100%">
<center>
    <asp:LinkButton ID="LinkButton1" CssClass="myButton" runat="server" 
        onclick="LinkButton1_Click">Show My Password</asp:LinkButton>
</center>
</td>
</tr>
</table>

</body>
</html>

</asp:Content>

