<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Home.master" CodeFile="SellingStock.aspx.cs" Inherits="SellingStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <html>
<head></head>
<body>
<table width="100%" border="20">
<tr>
<td colspan="2">
<h1>
    Selling Stock
    Department</h1>
</td>
</tr>
<tr>
<td width="50%" colspan="2" style="width: 100%">
    &nbsp;</td>
</tr>
<tr>
<td colspan="2">
<center>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</center>
</td>
</tr>
<tr>
<td colspan="2">

    <asp:GridView ID="GridView1" Width="100%" runat="server" 
        EmptyDataText="You dont have data right Now please update your database..." 
        Font-Bold="True">
    </asp:GridView>

</td>
</tr>
<tr>
<td>

    &nbsp;</td>
<td>

</td>
</tr>
</table>
</body>
</html>

</asp:Content>

