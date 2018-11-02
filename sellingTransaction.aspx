<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="sellingTransaction.aspx.cs" Inherits="sellingTransaction" %>


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
Selling Transaction</h1>
</td>
</tr>

<td colspan="2">
    &nbsp;</td>
</tr>

<tr>
<td>
    &nbsp;</td>
<td>
    &nbsp;</td>
</tr>


<tr>
<td colspan="2">
    <asp:GridView ID="GridView2" Width="100%" runat="server" 
        EmptyDataText="NO One buy till now from your zone..You should advertise your channel..thannks." 
        Font-Bold="True">
    </asp:GridView>
</td>
</tr>
<tr>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td>

</td>
<td>

</td>
</tr>
</table>

</body>
</html>

</asp:Content>

