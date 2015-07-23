<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pharma.aspx.cs" Inherits="WebApplication1.Pharma" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Pharma</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 98px;
        }
        .style3
        {
            width: 620px;
        }
        .style4
        {
            width: 98px;
            height: 26px;
        }
        .style5
        {
            width: 620px;
            height: 26px;
        }
        .style6
        {
            width: 149px;
        }
    </style>
</head>
<body style="background-color:lightgrey">


    <form id="form1" runat="server">
    <div style="border: medium inset #FFFFFF; background-color: #FFFFFF; color: #000000;">
    
   <div>
			<ul>
				<a href="Pharma.aspx" accesskey="3" title="About Us">Home</a> |
				<a href="default.aspx" accesskey="6" title="Contact Us">Logout</a>
				
			</ul>
				 
			  
		</div>
  
    </div>
      
    <div>
    
    <div id="left" style="border-style: dotted; border-width: 2px; width: 199px;">
    
    <h2>Hello | <asp:Label ID="desLabel" Text="" runat=server /> </h2>
    
    

    
    
    <h1> 
    <asp:Label ID="userLabel" Text="" runat=server> </asp:Label>
    
    </h1>
    </div>
    
    </div>
    <h1> Doctor Selection </h1> 
    
    <br />
    <br />
    <br />
    
    
      <table class="style1">
           <tr>
               <td class="style6">
                   <h1> Select Doctor </h1></td>
                <td>
                                       
                    
                    
                    &nbsp;</td>
            </tr>
           <tr>
               <td class="style6">
                   <asp:DropDownList ID="ddldoctor" runat="server" AutoPostBack="True" 
                       onselectedindexchanged="ddldoctor_SelectedIndexChanged">
                   </asp:DropDownList>
                   <br />
                   
               </td>
                <td>
                                       
                    
                    
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                        ForeColor="Black" GridLines="Vertical">
                        <FooterStyle BackColor="#CCCCCC" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                                       
                    
                    
                </td>
            </tr>
           <tr>
               <td class="style6">
                   &nbsp;</td>
                <td>
                                       
                    
                    
                    &nbsp;</td>
            </tr>
        </table>
    
       
       <br />
       
       
       
      
    </form>
   
    <br />
    
 
    
    
        
</body>
</html>
