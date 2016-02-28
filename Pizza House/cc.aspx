<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cc.aspx.cs" Inherits="web_cc" %>

<!DOCTYPE html>
<html>
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
	<!--header--><form runat="server">
    <div class="header-in">
        <div class="container">
            <div class="logo">
                <h1><a href="index.aspx">Pizza House</a></h1>
            </div>
            <div class="header-top">
                <div class="header-top-in">
                    <ul class="header-grid">
                        
                      <li><a>  <asp:LinkButton runat="server" ID="login" PostBackUrl="~/login1.aspx" CausesValidation="False">Login</asp:LinkButton> </a> </li>
  </ul>
                    <div class="act">
                        <a class="done">Welcome <asp:Label ID="users" runat="server"></asp:Label></a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <ul class="grid-header">
                    
                    <li><a href="kart.aspx">My Cart</a> <label></label></li>
                    <li><a>  <asp:LinkButton runat="server" ID="logout" Text="/Logout" PostBackUrl="~/logout.aspx"></asp:LinkButton> </a> </li>
     </ul>
                <div class="clearfix"> </div>
            </div>
            <!---->
            <div class="header-bottom">
                <div class="top-nav">
                    <span class="menu"> </span>
                    <ul>
                        <li class="active"><a href="index1.aspx">Home  </a><label>- </label> </li>
                        <li><a href="Menu.aspx"> Menu</a><label>- </label></li>
                        
                        <li><a href="Contact.aspx">Contacts</a></li>
                    </ul>
                    <!--script-->
                    <script>
                        $("span.menu").click(function () {
                            $(".top-nav ul").slideToggle(500, function () {
                            });
                        });
                    </script>
                </div>
                <div class="search">
                 
                        <input type="text" value="Search store here ..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
                        <input type="submit" value="">
                    
                </div>
                <div class="clearfix"> </div>
            </div></div></div>
            <!---->
	<div class="container">
		<div class="account">
		<h2>Please fill the form for creating account.</h2>
			
                <div>
				<span>First Name</span>
				<asp:TextBox runat="server" ID="fname" type="text"/>
                     <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ControlToValidate="fname" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter First Name">*</asp:RequiredFieldValidator>
			</div> 	
			<div>			
				<span class="name-in">Last Name</span>
				<asp:TextBox runat="server" ID="lname" type="text" /> 
                 <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ControlToValidate="lname" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Last Name">*</asp:RequiredFieldValidator>
			</div>			
			<div> 	
				<span class="mail">Email</span>
				<asp:TextBox runat="server" ID="email" type="text" /> 
		 <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ControlToValidate="email" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Email">*</asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="emailvalid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="Invalid Email Format" ForeColor="Red">*</asp:RegularExpressionValidator>

                  	</div>
			<div>
				<span>User Name</span>
				<asp:TextBox runat="server" type="text" id="usr"/> 				
		        <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ControlToValidate="usr" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username">*</asp:RequiredFieldValidator>
			</div>
           <div>
				<span class="word-in">Password</span>
				<asp:TextBox runat="server" type="password" id="pass" />
                <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator2" ControlToValidate="pass" runat="server" ErrorMessage="Enter Password" >*</asp:RequiredFieldValidator> 
			</div>
                
                    <div>
                        <span class="word-in">Confirm Password</span> 
                            <asp:TextBox ID="cpass" type="password" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator6" Display="Dynamic" runat="server" ControlToValidate="cpass" ErrorMessage="Enter confirm passwrod">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ForeColor="Red" ID="CompareValidator1" Display="Dynamic" ControlToCompare="pass" ControlToValidate="cpass" runat="server" ErrorMessage="Passwords donot match">*</asp:CompareValidator>
                    
                    </div>
			
         	<div>
				<span class="word-in">Phone Number</span>
				<asp:TextBox runat="server"  id="phno" />                  
                 <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator4" ControlToValidate="phno" runat="server" ErrorMessage="Enter Phone number">*</asp:RequiredFieldValidator>
			 <asp:RegularExpressionValidator  Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ValidationExpression="[0-9]{10}" ControlToValidate="phno" ErrorMessage="Invalid Phone Format" ForeColor="Orange">*</asp:RegularExpressionValidator>
             </div>
                <div>
				<span class="word-in">Address</span>
				<asp:TextBox runat="server" type="text" TextMode="MultiLine" id="address" /> 
                <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ControlToValidate="address" ErrorMessage="Enter Address" >*</asp:RequiredFieldValidator>
			</div>
       			<asp:Button runat="server" type="submit" value="Login" Text="Click  here" OnClick="clk_Click" ID="clk"/> 
                <asp:Label runat="server" ID="notvalid" Visible="false" />
                 <asp:ValidationSummary ID="ValidationSummary1"  ForeColor="Red" runat="server"/>
			</form>
		</div>
	
	</div>
        
	<!---->
	<div class="footer">
		<div class="container">
		<div class="col-md-8 footer-bottom ">
		<h4>Aenean condimentum suscipit dolor</h4>
		<p>Proin ullamcorper urna quis velit mollis molestie suscipit nisl consectetur
uspendisse venenatis dolor et nunc iaculis ege</p>
		<p class="footer-grid">Copyright &copy; 2015 Food shop Template by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>

		</div>
			<div class="col-md-4 footer-bottom ">
				<h4>Muscipit dolor</h4>
				<ul class="social-icons">
					<li><a href="#"><span> </span> </a></li>
					<li class="tin"><a href="#"><span> </span></a></li>
					<li class="linked"><a href="#"><span> </span> </a></li>
				</ul>
			</div>
				<div class="clearfix"> </div>
		</div>	
	</div>
	 <script type="text/javascript">
	     $(document).ready(function () {
	         /*
             var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
             };
             */

	         $().UItoTop({ easingType: 'easeOutQuart' });

	     });
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>