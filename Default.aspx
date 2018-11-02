<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head>
<title>
Welcome to DI Inventory Management
</title>
</head>
<body>

    <link href="Scripts/Cart.css" rel="stylesheet" type="text/css" />
<table  width="100%">
      <tr  width="100%">
      <td width="100%">
      <center>
      <asp:Label ID="Message" runat="server" Text=" "></asp:Label></center>
      </td>
      </tr>
     
      <tr width="100%">
      
      <td width="100%">
       <asp:GridView ID="GridView1" Width="100%" runat="server" 
              EmptyDataText="No Data Available..." 
              AutoGenerateColumns="False" onrowcommand="GridView1_RowCommand" 
              Font-Bold="True" ForeColor="#003366" 
              onpageindexchanging="GridView1_PageIndexChanging">
           <RowStyle BorderColor="#003366" BorderStyle="None" />
       <Columns>
       <asp:TemplateField HeaderText="Add To Cart">
       <ItemTemplate>
       <asp:LinkButton ID="LinkButton8"  CssClass="myCart" CommandName="AddToCart1" CommandArgument= '<%# Eval("itemid")%>' runat="server">Add To Cart</asp:LinkButton>
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
       <asp:Label ID="Label3" runat="server" Text='<%# Eval("Brand")%>' />
       </ItemTemplate>
       </asp:TemplateField>
              
       <asp:TemplateField HeaderText="Price">
       <ItemTemplate>       
       <asp:Label ID="Label4" runat="server" Text='<%# Eval("priceperitem")%>' />
       </ItemTemplate>
       </asp:TemplateField>
       
       </Columns>
           <SelectedRowStyle BackColor="#9999FF" />
         </asp:GridView>
      </td>
      </tr>
     
      </table>
</body>
</html>
</asp:Content>