<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transaction.aspx.cs" Inherits="Transaction" %>

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
<body><form runat="server">
    <!--header-->
    <div class="header-in">
        <div class="container">
            <div class="logo">
                <h1><a href="index.aspx">Pizza House</a></h1>
            </div>
            <div class="header-top">
                <div class="header-top-in">
                    <ul class="header-grid">
                        
                       <li><a>  <asp:LinkButton runat="server" ID="login" PostBackUrl="~/login1.aspx">Login</asp:LinkButton> </a> </li>

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
                        <li><a href="index1.aspx">Home  </a><label>- </label> </li>
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
		<div class="single">
			<div class="col-md-9  single-top">
				<div class="text-in">		
						
                    <div>
                        <br />
                        <br />
                        	 <ul class="comment-list">
		  		    	<h5 class="post-author_head">
                              Transaction Successful!!!<br />
                              Your Order should arrive within 35 mins.
		  		    	</h5>
		  		         <li>
		  		           <div class="desc">
                                 
		  		        	<p></p>
		  		           </div><div class="sub-in">
									<asp:Button runat="server" ID="shop" OnClick="shop_Click" Text="Continue shopping." />
                                 <asp:Button runat="server" ID="pro" Text="Logout" OnClick="log_Click" />
								</div>
		  		           <div class="clearfix"></div>
		  		         </li>
		  		     </ul>
                        
                    </div>
				</div>
				
				
			</div>
				
				<div class="clearfix"> </div>
			</div>
		</div></form>


    <!---->
    <div class="footer">
        <div class="container">
            <div class="col-md-8 footer-bottom ">
                <img src="images/SSL.gif" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="images/Carbon.png" />
                <img src="images/Hub.png" />
                <img src="images/Kivuto.png" />
                <br />
                <br />
                <br />
                <p class="footer-grid">Copyright &copy; 2015 FoodHouse.Ltd. </p>

            </div>
            <div class="col-md-4 footer-bottom ">
                
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
