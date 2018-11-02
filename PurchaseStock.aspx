<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="PurchaseStock.aspx.cs" Inherits="PurchaseStock" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 16%;
        }
        .style6
        {
        }
        .style7
        {
            width: 95%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <html>
<head></head>
<body>
    <link href="Scripts/Cart.css" rel="stylesheet" type="text/css" />
<table width="100%" border="20">
<tr>
<td colspan="4">
<h1>
Purchase Stock
</h1>
</td>
</tr>
<tr>
<td class="style6">
    &nbsp;</td>
<td class="style5">
    &nbsp;</td>
<td class="style7">
    &nbsp;</td>
<td  width="50%">
    &nbsp;</td>
</tr>
<tr>
<td class="style6" colspan="4">

    <asp:Label ID="Label8" runat="server" Font-Bold="True"></asp:Label>

</td>
</tr>
<tr>
<td class="style6">

</td>
<td class="style5">

    &nbsp;</td>
<td class="style7">

    &nbsp;</td>
<td>

</td>
</tr>
<tr>
<td colspan="4">

    <asp:GridView ID="GridView1" Width="100%" runat="server" 
        AutoGenerateColumns="False" Font-Bold="True" 
        EmptyDataText="No Data Available..." onrowcommand="GridView1_RowCommand">
    <Columns>
       <asp:TemplateField HeaderText="Edit">
       <ItemTemplate>
       <asp:LinkButton ID="LinkButton8"  CssClass="myCart" CommandName="Edited" CommandArgument= '<%# Eval("itemid")%>' runat="server">Edit</asp:LinkButton>
       </ItemTemplate>
       </asp:TemplateField>
       
       <asp:TemplateField HeaderText="ItemID" Visible="false">
       <ItemTemplate>
       <asp:Label ID="Label1" runat="server" Text='<%# Eval("itemID")%>'/>
       </ItemTemplate>
       </asp:TemplateField>
       
       <asp:TemplateField HeaderText="Name">
       <ItemTemplate>
       <asp:Label ID="Label2" runat="server" Text='<%# Eval("Itemname")%>'/>
       </ItemTemplate>
       </asp:TemplateField>
       
       <asp:TemplateField HeaderText="Brand">
       <ItemTemplate>
       <asp:Label ID="brand" runat="server" Text='<%# Eval("Brand")%>' />
       </ItemTemplate>
       </asp:TemplateField>
       
       <asp:TemplateField HeaderText="Quantity">
       <ItemTemplate>
       <asp:Label ID="Label3" runat="server" Text='<%# Eval("quantityofitem")%>' />
       </ItemTemplate>
       </asp:TemplateField>
              
       <asp:TemplateField HeaderText="Unit Price">
       <ItemTemplate>
       <asp:Label ID="Label4" runat="server" Text='<%# Eval("priceperitem")%>' />
       </ItemTemplate>
       </asp:TemplateField>
       
         <asp:TemplateField HeaderText="Total Price">
       <ItemTemplate>
       <asp:Label ID="total" runat="server" Text='<%# Eval("totalprice")%>' />
       </ItemTemplate>
       </asp:TemplateField>
       
       </Columns>
    </asp:GridView>

</td>
</tr>

</table>
<table width="100%">
<tr width="100%">
<td width="25%">

</td>
<td width="25%">

</td>
<td width="25%">

</td>
<td width="25%">

</td>
</tr>
<tr width="100%">
<td width="25%">

    <asp:Label ID="Label9" runat="server" Text="Item Name" Font-Bold="True"></asp:Label>

</td>
<td width="25%">

    <asp:Label ID="Label10" runat="server" Text="Unit Price" Font-Bold="True"></asp:Label>

</td>
<td width="25%">

    <asp:Label ID="Label11" runat="server" Text="Total Price" Font-Bold="True"></asp:Label>

</td>
<td width="25%">

    &nbsp;</td>
</tr>
<tr width="100%">
<td width="25%">

    <asp:Label ID="Label12" runat="server"></asp:Label>

</td>
<td width="25%">

</td>
<td width="25%">

    &nbsp;</td>
<td width="25%">

    <asp:LinkButton CssClass="myButton" ID="LinkButton10" runat="server" 
        onclick="LinkButton10_Click">Caculate Total Price.</asp:LinkButton>

</td>
</tr>
<tr width="100%">
<td width="25%">

    <asp:TextBox ID="ItemName" runat="server"></asp:TextBox>

</td>
<td width="25%">

    <asp:TextBox ID="ItemPrice" runat="server"></asp:TextBox>

</td>
<td width="25%">

    <asp:TextBox ID="TotalPrice" runat="server"></asp:TextBox>

</td>
<td width="25%">

    <asp:LinkButton ID="LinkButton9" CssClass="myButton" runat="server" 
        onclick="LinkButton9_Click">Send to Shelling Stock</asp:LinkButton>

</td>
</tr>
</table>
</body>

</asp:Content>

