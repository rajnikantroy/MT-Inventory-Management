<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
<tr width="100%>
<td width="25%">

</td>
<td width="25%">

</td>
<td width="25%">

</td>
<td width="25%">

</td>
</tr>
<tr width="100%>
<td width="25%">

</td>
<td width="25%">

</td>
<td width="25%">
    <asp:Label ID="message" runat="server"></asp:Label>
</td>
<td width="25%">
</td>
</tr>
<tr width="100%>
<td width="25%">
</td>
<td colspan="4" style="width: 50%">
    <asp:GridView ID="GridView1" runat="server" width="100%" onselectedindexchanged="GridView1_SelectedIndexChanged">
    
    </asp:GridView>
</td>
</tr>
<tr width="100%>
<td width="25%">
</td>
<td width="25%">
    <asp:LinkButton ID="LinkButton9" CssClass="myButton" runat="server" 
        onclick="LinkButton9_Click">Place Order</asp:LinkButton>
</td>
<td width="25%">
<%--<asp:ImageButton runat="server" ID="btnPaypal" AlternateText="checkout with paypal" 
        ImageUrl="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif" 
        onclick="btnPaypal_Click" />--%><br><br><br><br><br>

    &nbsp;</td>
<td width="25%">
    Total Price is :
    <asp:Label ID="pricelabel" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
</td>
</tr>
</table>
</asp:Content>