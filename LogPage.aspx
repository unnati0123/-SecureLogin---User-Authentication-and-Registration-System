<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogPage.aspx.cs" Inherits="MiniProject.LogPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0 0 11px 0;
            padding:0;
            box-sizing:border-box;
        }
        body{
            background:#00ffa6
        }
    </style>
</head>
<body>
     <div class="form-wrap">
    <form id="form1" runat="server">
       
              <b>Enter Login Details </b ><br />
            <br />
            Enter first name:<br />
&nbsp;<asp:TextBox ID="TxtFirstName" runat="server"  ToolTip="Enter first name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVfirstname" runat="server" ErrorMessage="Enter First Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtFirstName">*</asp:RequiredFieldValidator>
        <br />
        <br />
        Enter last name:<br />
        <asp:TextBox ID="TxtLastName" runat="server" ToolTip="Enter last name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVlastname" runat="server" ErrorMessage="Enter Last Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtLastName">*</asp:RequiredFieldValidator>
        <br />
        <br />
        Enter email id:<br />
        <asp:TextBox ID="TxtEmailId" runat="server" ToolTip="Enter e-mail" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVemailid" runat="server" ErrorMessage="Enter an EmailID" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtEmailId" Display="Dynamic">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="REVemail" runat="server" ErrorMessage="Enter a valid E-mail" ForeColor="#CC0000" ControlToValidate="TxtEmailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>
        <br />
        <br />
        Enter password:<br />
        <asp:TextBox ID="TxtPassword" runat="server" ToolTip="Enter Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVpassword" runat="server" ErrorMessage="Enter a Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtPassword">*</asp:RequiredFieldValidator>
       <br />
        <br />
            Enter phone no:
            <br />
            <asp:TextBox ID="TxtPhoneNo" runat="server" ToolTip="Enter Phone no"></asp:TextBox>
        <br />
        <br />
        <asp:ValidationSummary ID="Validsumm" HeaderText="Validation Errors: <br/>" Font-Bold="true" ForeColor="Red" runat="server" DisplayMode="List" />
        <br />
        <asp:Button ID="LoginButton" runat="server" BorderStyle="Inset" Text="LOGIN" OnClick="LoginButton_Click" Height="28px" Width="80px"/>
        
        <asp:Button ID="RegisterBtn" runat="server" BorderStyle="Inset" OnClick="RegisterBtn_Click" Text="Register" Height="28px" Width="80px" />
        <br />
        <br />
        <asp:Label ID="LabelMsg" runat="server" Text="If not a registered user, please register"></asp:Label>
          <br /></form></div>
</body>
</html>
