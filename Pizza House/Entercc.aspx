<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entercc.aspx.cs" Inherits="web_Entercc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Pizza shop</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Rokkitt:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
				    jQuery(document).ready(function ($) {
				        $(".scroll").click(function (event) {
				            event.preventDefault();
				            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
				        });
				    });
					</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1"><tr><td><div>
    <asp:RadioButton runat="server" ID="slct" GroupName="new" /><asp:Image runat="server" ImageUrl="~/images/cc1.png" Height="43px" Width="61px" />
        <asp:RadioButton runat="server" ID="RadioButton1" GroupName="new" /><asp:Image runat="server" ImageUrl="~/images/cc2.png" Height="43px" Width="61px" />
  <asp:RadioButton runat="server" ID="RadioButton2" GroupName="new" /><asp:Image runat="server" ImageUrl="~/images/cc3.png" Height="43px" Width="61px" />
        <asp:RadioButton runat="server" ID="RadioButton3"  GroupName="new"/><asp:Image runat="server" ImageUrl="~/images/cc4.png" Height="43px" Width="61px" /> 
      <asp:RadioButton runat="server" ID="RadioButton4" GroupName="new" /><asp:Image runat="server" ImageUrl="~/images/cc5.png" Height="43px" Width="61px" />
  </div>    </td>  </tr>
           <tr>
               <td>
                   To pay by credit card please fill tthe following.<br />
                   Name of card : <input type="text" /><br />
                   Card Number: <asp:TextBox runat="server" ID="cc" ></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ControlToValidate="cc" Display="Dynamic" ErrorMessage="Please enter the card details"></asp:RequiredFieldValidator>
                   <asp:RangeValidator runat="server" MinimumValue="1" MaximumValue="16" Display="Dynamic" ControlToValidate="cc" ErrorMessage="Please enter only valid details" ></asp:RangeValidator><br />
                   Security Code :<asp:TextBox runat="server" ID="sc" ></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ControlToValidate="sc" ErrorMessage="Please enter the Security code" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:RangeValidator runat="server" MinimumValue="1" MaximumValue="3" Display="Dynamic" ControlToValidate="sc" ErrorMessage="Please enter only numbers" /><br />
               </td></tr><tr>
           <td>
                <asp:Button runat="server" ID="bt1" Text="Done" OnClick="bt1_Click" /></td> </tr>
             </table>  

    </div>
    </form>
</body>
</html>
