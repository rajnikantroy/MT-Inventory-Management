<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="Admin.aspx.cs" Inherits="Admin" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head></head>
<body>
<table width="100%" height="200px" border="20">
<tr width="100%">
<td width="100%" colspan="3"><center>
<h1>
Welcome to Dashboard&nbsp;
</h1>
</center>
</td>
    <td>
    <b>
    Welcome : </b>&nbsp;
        <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
        
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Sign Out</asp:LinkButton>
    </td>
</tr>
<tr width="100%">
<td width="25%">
    <asp:ImageButton runat="server" CssClass="myButton" ImageUrl="~/Images/purchaseTransaction.jpg" 
        onclick="Unnamed1_Click">
    </asp:ImageButton>
</td>
<td width="25%">
    <asp:ImageButton runat="server"  CssClass="myButton"  ImageUrl="~/Images/purchaseStock.jpg" 
        onclick="Unnamed2_Click">
    </asp:ImageButton>
</td>
<td width="25%">
    <asp:ImageButton runat="server"  CssClass="myButton"  ImageUrl="~/Images/ShellingStock.jpg" 
        onclick="Unnamed3_Click">
    </asp:ImageButton>
</td>
<td width="25%">
    <asp:ImageButton runat="server" CssClass="myButton"  ImageUrl="~/Images/Shellingtransaction.jpg" 
        onclick="Unnamed4_Click">
    </asp:ImageButton>
</td>
</tr>
</table>
</body>

</html>

</asp:Content>

