<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="ExistingDealersDetail.aspx.cs" Inherits="ExistingDealersDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 300px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>

<body>
    <link href="Scripts/MyCSS.css" rel="stylesheet" type="text/css" />
<table width="100%">
<tr width="100%">
<td class="style5">
Choose your Dealer.
</td>
<td width="100%">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
    
</td>
<td>
    <asp:LinkButton ID="LinkButton1" CssClass="myButton" runat="server" 
        onclick="LinkButton1_Click">Use This Dealer</asp:LinkButton>
</td>
</tr>
<tr width="100%">
<td width="100%" colspan="3">
    <asp:GridView ID="GridView1" Width="100%" runat="server">
    </asp:GridView>
</td>
</tr>
</table>
</body>
</html>
</asp:Content>