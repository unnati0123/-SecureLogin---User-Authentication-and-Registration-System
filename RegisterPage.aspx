<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="MiniProject.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet"  href="style.css" type = "text/css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div aria-orientation="horizontal" >
            <b>REGISTERATION PAGE</b ><br />
            <br />
           Enter first name :<br />
            <asp:TextBox ID="FirstName" runat="server" ToolTip="Enter first name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFVFirstName" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
            <br />
            <br />
            Enter last name :<br />
            <asp:TextBox ID="LastName" runat="server" ToolTip="Enter last name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFVLastName" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="LastName"></asp:RequiredFieldValidator>
            <br />
            <br />
            Enter e-mail address:
            <br />
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RFVEmailid" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Email" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RFVEmail" runat="server" ErrorMessage="Enter a valid email address" ControlToValidate="Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ></asp:RegularExpressionValidator>
            <br />
            <br />
            Enter Password:<br />
            <asp:TextBox ID="Password" runat="server" TextMode="Password" ></asp:TextBox>
            <br />
            <br />
            Re-enter Password:<br />
            <asp:TextBox ID="reenterpassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidatorpassword" runat="server" ErrorMessage="Password and RE-entered password must match" ControlToValidate="reenterpassword" ControlToCompare ="Password" Operator ="Equal" type ="string" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            <br />
            <br />
            Enter phone no:<br />
            <asp:TextBox ID="PhoneNumber" runat="server" ToolTip="Enter phone no"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFVPhoneNumber" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="PhoneNumber"></asp:RequiredFieldValidator>
            <br />
            <br />
            Enter Date of birth :<br />
            <asp:TextBox ID="TextBoxDOB" runat="server" style="width: 128px" TextMode="Date"></asp:TextBox>
            <br />
            <br />

            
Gender : <br />
            <asp:RadioButton ID="MALEButton" runat="server" Text="Male" GroupName="gender" />  
            <asp:RadioButton ID="FEMALEButton" runat="server" Text="Female" GroupName="gender" />
            <asp:RadioButton ID="OTHERButton" runat="server" Text="Others" GroupName="gender" />
            <br />
            <br />
Select age group : 
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" >
                <asp:ListItem Value="0">19-23</asp:ListItem>
                <asp:ListItem Value="1">24-29</asp:ListItem>
                <asp:ListItem Value="2">30-34</asp:ListItem>
                <asp:ListItem Value="3">35-40</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            AGE:<br />
            <asp:TextBox ID="TextBoxAGE" runat="server" Height="22px"  Width="84px"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="RangeValidatorage" runat="server" ErrorMessage="age must be between 16 to 30" ControlToValidate="TextBoxAGE" ForeColor ="Red" MinimumValue="16" MaximumValue =" 30" Type="Integer" SetFocusOnError="True" Display="Dynamic"></asp:RangeValidator>
            <asp:CompareValidator ID="CompareValidatorAge" runat="server" ErrorMessage="Age must be a number" ForeColor="Red" Operator="DatatypeCheck" ControlToValidate="TextBoxAGE" Type ="Integer" SetFocusOnError="True" Display="Dynamic"></asp:CompareValidator>
            <br />
            <br />
            Enter Address:<br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <br />

            Select interests :<br />
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="0">Music</asp:ListItem>
                <asp:ListItem Value="1">Dance</asp:ListItem>
                <asp:ListItem Value="3">Band</asp:ListItem>
                <asp:ListItem Value="3">Drama</asp:ListItem>
                <asp:ListItem Value="4">Arts</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
Select courses to enroll : <br />
           <asp:CheckBox ID="CheckBox1" runat="server" Text="B-tech" />  
            <asp:CheckBox ID="CheckBox2" runat="server" Text="B-pharma" />  
            <asp:CheckBox ID="CheckBox3" runat="server" Text="M-tech" />
            <asp:CheckBox ID="CheckBox4" runat="server" Text="M-pharma" />
            
            <br />
            <br />
            Specializations :<br />
            <asp:ListBox ID="ListBox1" runat="server" Rows="2">
                <asp:ListItem Value="0">CSE</asp:ListItem>
                <asp:ListItem Value="1">IT</asp:ListItem>
                <asp:ListItem Value="2">Mechanical</asp:ListItem>
                <asp:ListItem Value="4">Civil</asp:ListItem>
                <asp:ListItem Value="4">EC</asp:ListItem>
                <asp:ListItem Value="5">EE</asp:ListItem>
                <asp:ListItem Value="6">CS &amp; IT</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            Select country:
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" >
            </asp:DropDownList>
            <br />
            <br />
            For more information, click on the URL 
            <asp:HyperLink ID="HyperLink1" runat="server" Text="MIET" NavigateUrl="www.miet.ac.in"></asp:HyperLink> 
            <br />
             <p>Campus:</p>
        <div>  
            <asp:DropDownList ID="DropDownList1" runat="server" >  
            <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>New Delhi </asp:ListItem>  
            <asp:ListItem>Greater Noida</asp:ListItem>  
            <asp:ListItem>NewYork</asp:ListItem>  
            <asp:ListItem>Paris</asp:ListItem>  
            <asp:ListItem>London</asp:ListItem>  
        </asp:DropDownList>  
            <br />
            <br />
            Upload 10th marksheet:
            <br />
            <asp:FileUpload ID="FileUpload10th" runat="server" />
            
            <asp:Button ID="BtnUpload10th" runat="server" Text="Upload" OnClick="BtnUpload10th_Click" />
            <br />
            <asp:Label ID="Lblmsg10" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Upload 12th marksheet:
            <br />
            <asp:FileUpload ID="FileUpload12th" runat="server" />
           
            <asp:Button ID="BtnUpload12th" runat="server" Text="Upload" OnClick="BtnUpload12th_Click" />
            <br />
            <asp:Label ID="Lblmsg12" runat="server" Text=""></asp:Label>
            <br />
            <br />
            
 </div>  
            </div>
        <p>  
        <asp:Button ID="SubmitButton" runat="server" Text="Register" OnClick="SubmitButton_Click"/>  
        </p>
        <p>  
         </p>  
        <br />                   
    </form>  
  
</body>  
</html>            