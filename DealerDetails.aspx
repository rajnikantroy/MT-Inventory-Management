<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="DealerDetails.aspx.cs" Inherits="DealerDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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

    <link href="Scripts/MyCSS.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/textboxcss.css" rel="stylesheet" type="text/css" />
    
<tr width="100%">
<td width="50%">
    Your
Company Id : 
</td>
<td width="50%">
    <asp:Label ID="Label2" runat="server"></asp:Label>
</td>
</tr>
<tr width="100%">
<td width="50%">
    Dealer ID :
</td>
<td width="50%">
    <asp:Label ID="Label3" runat="server"></asp:Label>
</td>
</tr>
<tr width="100%">
<td width="50%">
    Dealer Name :
</td>
<td width="50%">
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</td>
</tr>
<tr width="100%">
<td width="50%">

    Dealer Address</td>
<td width="50%">
    <asp:TextBox ID="TextBox4" runat="server" Height="45px" TextMode="MultiLine" 
        Width="270px"></asp:TextBox></td>
<tr width="100%">
<td width="50%">

    Dealer Phone</td>
<td width="50%">
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</td>
</tr>
<tr width="100%">
<td width="50%" colspan="2" style="width: 100%">

 <center><asp:Label ID="Label1" runat="server" Text=" " Font-Bold="True"></asp:Label>
     
    </center>   

    </td>
</tr>
<tr width="100%">
<td width="50%" colspan="2" style="width: 100%">
<center>
    <asp:LinkButton ID="LinkButton9" CssClass="myButton" runat="server" 
        onclick="LinkButton9_Click">Create Dealer and go Purchase Transaction</asp:LinkButton>
</center>
</td>
</tr>
</table>

</body>
</html>

</asp:Content>

