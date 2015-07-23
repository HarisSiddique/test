<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Registration</title>
</head>
<body style="background-color:lightgrey">

<h1>Registration Form</h1>
    <form id="form1" runat="server">
    <div style="border: medium inset #FFFFFF; background-color: #FFFFFF; color: #000000;">
    
   <div>
			<ul>
				<a href="Default.aspx" accesskey="3" title="About Us">Login</a> |
				<a href="Registration.aspx" accesskey="4" title="Careers">New User Register Here</a>
				
				
			</ul>
		</div>
  
    </div>
    <div>
    
    
                    <asp:TextBox ID="NameTextBox" runat="server" 
                    style="margin-left: 280px; margin-top: 7px" Width="125px" 
                    placeholder="Name"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="userTextBox" runat="server" 
                    style="margin-left: 280px; margin-top: 7px" Width="125px" 
                    placeholder="Username"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="passwordTextBox" runat="server" 
                    style="margin-left: 280px; margin-top: 7px" Width="125px" 
                    placeholder="Password" TextMode=Password></asp:TextBox>
                    <br />
                    <asp:TextBox ID="designationTextBox" runat="server" 
                    style="margin-left: 280px; margin-top: 7px" Width="125px" 
                    placeholder="Designation"></asp:TextBox>
                    
                     <br />
                     
                   <asp:Button ID="RegisterBotton" runat="server" OnClick="registerEventMethod"
                    style="margin-left: 279px; margin-top: 13px; margin-bottom: 0px" Text="REGISTER" />
    
    </div>
    
    </form>
    

</body>
</html>
