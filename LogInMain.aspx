<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="LogInMain.aspx.cs" Inherits="LogInMain" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head>
<body>
    <link href="Scripts/MyCSS.css" rel="stylesheet" type="text/css" />
<table width="100%" border="20">
<tr width="50%" >
<td width="50%" height="200px" style="border: medium solid #808000">

   <asp:LinkButton ID="LinkButton3" cssClass="myButton" runat="server" 
        onclick="LinkButton3_Click">Sign In Company</asp:LinkButton>
     </td>
<td width="50%" height="200px" style="border: medium solid #808000">

    <asp:LinkButton ID="LinkButton4" runat="server" cssClass="myButton" onclick="LinkButton4_Click">Sign In User</asp:LinkButton>
    </td>
</tr>
</table>
</body>
</head>

</html>

</asp:Content>




