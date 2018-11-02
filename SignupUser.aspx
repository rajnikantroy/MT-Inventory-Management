<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="SignupUser.aspx.cs" Inherits="SignupUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
   
 <title></title>
<body>
    <link href="Scripts/MyCSS.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/textboxcss.css" rel="stylesheet" type="text/css" />
    <div>
    <table width="100%" border="10" >
    <tr>
    <td>
        &nbsp;</td>
    <td>

    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>

        </td>
    </tr>
    <tr>
    <td>
      Enter your first Name :  
    </td>
    <td>
        <asp:TextBox CssClass="myTextBox"  ID="firstname" runat="server"></asp:TextBox>
    &nbsp;Ex : Rajni</td>
    </tr>
    <tr>
    <td>
            Enter your Last Name : 
    </td>
    <td>
        <asp:TextBox CssClass="myTextBox"  ID="lastname" runat="server"></asp:TextBox>
    &nbsp;Ex : Kant</td>
    </tr>
    <tr>
    <td>
        Date of Birth</td>
    <td>
    <asp:DropDownList ID="dob" runat="server" Height="31px" Width="343px">
        <asp:ListItem>2012</asp:ListItem>
        <asp:ListItem>2011</asp:ListItem>
        <asp:ListItem>2010</asp:ListItem>
        <asp:ListItem>2009</asp:ListItem>
        <asp:ListItem>2008</asp:ListItem>
        <asp:ListItem>2007</asp:ListItem>
        <asp:ListItem>2006</asp:ListItem>
        <asp:ListItem>2005</asp:ListItem>
        <asp:ListItem>2004</asp:ListItem>
        <asp:ListItem>2003</asp:ListItem>
        <asp:ListItem>2002</asp:ListItem>
        <asp:ListItem>2001</asp:ListItem>
        <asp:ListItem>2000</asp:ListItem>
        <asp:ListItem>1999</asp:ListItem>
        <asp:ListItem>1998</asp:ListItem>
        <asp:ListItem>1997</asp:ListItem>
        <asp:ListItem>1996</asp:ListItem>
        <asp:ListItem>1995</asp:ListItem>
        <asp:ListItem>1994</asp:ListItem>
        <asp:ListItem>1993</asp:ListItem>
        <asp:ListItem>1992</asp:ListItem>
        <asp:ListItem>1991</asp:ListItem>
        <asp:ListItem>1990</asp:ListItem>
    </asp:DropDownList>
    &nbsp;Ex : 1991</td>
    </tr>
    <tr>
    <td>
        &nbsp;I Am :
    </td>
    <td>
        <asp:DropDownList ID="sex" runat="server" 
            Width="146px" Height="31px">
            <asp:ListItem>Select sex :</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
        Mobile :
    </td>
    <td>
        <asp:TextBox CssClass="myTextBox"  ID="mobile" runat="server"></asp:TextBox>
    &nbsp;Ex: 9560639729</td>
    </tr>
    <tr>
    <td>
        Address :
    </td>
    <td>
        <asp:TextBox CssClass="myTextBox"  ID="address" runat="server" 
            TextMode="MultiLine" Height="52px" Width="304px"></asp:TextBox>
    </td>
    </tr>
     <tr>
    <td>
        Country</td>
    <td>
    <asp:DropDownList ID="country" runat="server" Width="342px" Height="38px">
        <asp:ListItem>india</asp:ListItem>
        <asp:ListItem>Pakistan</asp:ListItem>
        <asp:ListItem>Afghanistan</asp:ListItem>
        <asp:ListItem>Kazakistan</asp:ListItem>
        <asp:ListItem>BanglaDesh</asp:ListItem>
        <asp:ListItem>SriLanka</asp:ListItem>
        <asp:ListItem>United Kingdom</asp:ListItem>
        <asp:ListItem>United State</asp:ListItem>
        <asp:ListItem>Australia</asp:ListItem>
        <asp:ListItem>Saudi arab</asp:ListItem>
    </asp:DropDownList>
    </td>
    </tr>
     <tr>
    <td>
        State</td>
    <td>
    <asp:DropDownList ID="state" runat="server" Height="38px" Width="342px">
        <asp:ListItem>Delhi</asp:ListItem>
        <asp:ListItem>Jharkhand</asp:ListItem>
        <asp:ListItem>Sikkim</asp:ListItem>
        <asp:ListItem>Assam</asp:ListItem>
        <asp:ListItem>Hariyana</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>Madhya Pradesh</asp:ListItem>
        <asp:ListItem>Bihar</asp:ListItem>
        <asp:ListItem>Maharashtra</asp:ListItem>
    </asp:DropDownList>
    </td>
    </tr>
     <tr>
    <td>
        User ID :</td>
    <td>
        <asp:TextBox ID="userid" cssClass="myTextBox" runat="server" Visible="False">0000</asp:TextBox>
    </td>
    
    
    </tr>
<tr>
<td name="email">
    Email ID</td>
<td>
<asp:TextBox CssClass="myTextBox"  ID="email" runat="server" ></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="email" ErrorMessage="Invalid Email." 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td>
    Password</td>
<td>
<asp:TextBox CssClass="myTextBox"  ID="password" runat="server" 
        TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td>

    Re-Enter Password</td>
<td>

<asp:TextBox CssClass="myTextBox"  ID="ReEnterPass" runat="server" 
        TextMode="Password"></asp:TextBox>

    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="password" ControlToValidate="ReEnterPass" 
        ErrorMessage="Password did Not Match."></asp:CompareValidator>

</td>
</tr>
<tr>
<td>

    Security Question:</td>
<td>

    <asp:DropDownList ID="securityQuestion0"  runat="server" Height="36px" 
        Width="340px">
        <asp:ListItem>What is Mother Birth Place ?</asp:ListItem>
        <asp:ListItem>which is your first mobile no. ?</asp:ListItem>
        <asp:ListItem>Who is your first teacher?</asp:ListItem>
        <asp:ListItem>Which is your first school?</asp:ListItem>
        <asp:ListItem>Which is your favourite song?</asp:ListItem>
        <asp:ListItem>Which is your mother tongue?</asp:ListItem>
    </asp:DropDownList>

</td>
</tr>
<tr>
<td>

    Answer :</td>
<td>

<asp:TextBox CssClass="myTextBox"  ID="Answer" runat="server"></asp:TextBox>

</td>
</tr>
<tr>
<td>

    &nbsp;</td>
<td>

    &nbsp;</td>
</tr>
     <tr>
    <td colspan="2">
    <center>
        <asp:LinkButton ID="LinkButton3" cssClass="myButton" runat="server" 
            onclick="LinkButton3_Click" Width="372px">Sign Up</asp:LinkButton>
        </center>
    </td>
    </tr>
    </table>
    </div>
  
</body>
</head>
</html>


</asp:Content>

