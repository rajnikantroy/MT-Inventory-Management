<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="AddtoCart.aspx.cs" Inherits="AddtoCart" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%"> 
    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#00CC00"></asp:Label>                        
        &nbsp;</td>
    <td>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#00CC00"></asp:Label>                        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton9" align="right" runat="server" Font-Bold="True" 
            onclick="LinkButton9_Click">Sign out</asp:LinkButton>
    </td>    
    </tr>
    <tr>
    <td>
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="myButton" onclick="LinkButton1_Click">Continue Shoping</asp:LinkButton>
    </td>
    </tr>
    </table>
    <asp:GridView ID="GridView1" Width="100%" runat="server" 
    EmptyDataText="You dont have anything in your cart please fill it." 
        onrowcommand="GridView1_RowCommand">
        <Columns>
        <asp:TemplateField HeaderText="Delete">
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton2" CssClass="MyCart" runat="server" CommandName="deleted" CommandArgument='<%# Eval("itemid") %>' >Delete</asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <table width="100%"> 
    <tr>
    <td>           
    </td>
    <td>    
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </td>
    <td>    
        <asp:LinkButton ID="LinkButton10" CssClass="myButton" runat="server" 
            onclick="LinkButton10_Click" Visible="False">Place Order</asp:LinkButton>    
    &nbsp;<asp:LinkButton ID="LinkButton11" CssClass="myButton" runat="server" 
            onclick="LinkButton11_Click">Check Out</asp:LinkButton>
    </td>    
    </tr>    
    </table>
</asp:Content>