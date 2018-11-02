<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="PurchaseTransaction.aspx.cs" Inherits="PurchaseTransaction" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <html>
<head></head>
<body>
<table width="100%" border="5" >
<tr>
<td colspan="2">
<center>
<h2  border="5">Purchase Transaction</h2>
</center>
    &nbsp;</td>

</tr>
<tr>
<td colspan="2">
<center>
<h3 >
Dealer Details
</h3></center>
</td>

</tr>
<tr  style="border: thin dashed #3333FF">
<td>
<a href= "PurchaseTransaction.aspx#grid">Dealer id</a>
</td>
<td >
    <asp:Label ID="dealerid" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    </td>

</tr>
<tr>
<td>
    &nbsp;</td>
<td>
&nbsp;<asp:LinkButton CssClass="myButton" ID="LinkButton10" runat="server" 
        onclick="LinkButton10_Click">Use Existing Dealer</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
        runat="server" PostBackUrl="~/DealerDetails.aspx" ID="LinkButton11">Create new Dealer ?</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>

</tr>
<tr>
<td>
    &nbsp;</td>
<td>
    <asp:LinkButton CssClass="myButton" ID="LinkButton13" runat="server" 
        onclick="LinkButton13_Click">Click Here For New Transaction</asp:LinkButton>
</td>

</tr>
<tr>
<td>
<h1></h1>
</td>
<td>

    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#009933"></asp:Label>

</td>
</tr>
<tr>
<td colspan="2">
<cente><h3   style="border: thin dashed #3333FF">Item Details</h3></cente>
</td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td>
Item ID :
</td>
<td>
    <asp:TextBox runat="server" ID="Itemid" ></asp:TextBox>
</td>
</tr>
<tr>
<td>
Item Name :
</td>
<td>
    <asp:TextBox runat="server" ID="Itemname"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Brand :
</td>
<td>
    <asp:TextBox runat="server" ID="Brand"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Quantity of Items :
</td>
<td>
    <asp:TextBox runat="server" ID="Quantity"></asp:TextBox>
</td>
</tr>

<tr>
<td>
Price per Item :
</td>
<td>
    <asp:TextBox ID="PricePerItem" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Total Price :
</td>
<td>
    <asp:TextBox runat="server" ID="TotalPrice"></asp:TextBox>
    <asp:LinkButton ID="LinkButton12" CssClass="myButton" runat="server" 
        onclick="LinkButton12_Click" Width="73px">Calculate</asp:LinkButton>
</td>
</tr>
<tr>
<td colspan="2">
<center>
    <asp:LinkButton ID="LinkButton9" CssClass="myButton" runat="server" 
        onclick="LinkButton9_Click">Add</asp:LinkButton>
    </center>
</td>
</tr>
<tr>
<td colspan="2">
<h3></h3>
</td>
</tr>
<tr>
<td colspan="2">
   <center><asp:GridView Width="100%" runat="server" ForeColor="#6600CC" 
           ID="gridview1">
    </asp:GridView>
    </center> </td>
</tr>
</table>
</body>
</html>

</asp:Content>

