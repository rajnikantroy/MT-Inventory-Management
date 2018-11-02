<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="SignupMain.aspx.cs" Inherits="SignupMain" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head>
<body>
    <link href="Scripts/MyCSS.css" rel="stylesheet" type="text/css" />
    <div>
    <table width="100%" border="20" >
    <tr width="100%">
    <td width="50%" height="200px" style="border: medium solid #808000">
   
        <asp:Button runat="server" cssClass="myButton" Text="Create New Company" 
            Height="60px" onclick="Unnamed1_Click" Width="275px" />
        <br />
        
    </td>
    <td width="50%" height="200px" style="border: medium solid #808000">
    
        <asp:Button ID="Button3" cssClass="myButton" runat="server" 
            Text="Create New User" Height="69px" onclick="Button3_Click" Width="275px" />
    
        <br />
    </td>
    </tr>
    </table>
    </div>
   
</body>
</head>
</html>

</asp:Content>
