<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>
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
<body>  <form runat="server" id="Form1">  
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
                        <li class="active"><a href="Menu.aspx"> Menu</a><label>- </label></li>
                        
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
			<div class="specials">
			<h2>Menu</h2>
				<div class="special-top">
					<div class="col-md-3 special-in" >
					<asp:LinkButton runat="server" ID="l1i" SkinID="images/pizza2.png" OnClick="l10_Click"><img src="images/pizza2.png" class="img-responsive" alt=""></asp:LinkButton>	
					<asp:LinkButton runat="server" ID="l10" SkinID="PANEER OVERLOADED BIG PIZZA" OnClick="l10_Click"><h5>
                          <a> PANEER OVERLOADED BIG PIZZA</a></h5></asp:LinkButton>
						<p><asp:LinkButton ID="l11" OnClick="l10_Click" runat="server" SkinID="Peppy Paneer, Onion, Tomato, Green Chillies, Corn, Italian Sprinkle(Hand Stretched Crust)">Peppy Paneer, Onion, Tomato, Green Chillies, Corn, Italian Sprinkle(Hand Stretched Crust)</asp:LinkButton></p>
					</div>
					<div class="col-md-3 special-in">
					<asp:LinkButton runat="server" SkinID="images/pizza3.png" ID="l21i" OnClick="Unnamed_Click"><img src="images/pizza3.png" Class="img-responsive" alt=""></asp:LinkButton>
						<asp:LinkButton ID="l210" OnClick="Unnamed_Click" runat="server" SkinID="CHEESE OVERLOADED BIG PIZZA"><h5><a>CHEESE OVERLOADED BIG PIZZA</a></h5></asp:LinkButton>
						<asp:LinkButton ID="l211" OnClick="Unnamed_Click" runat="server" SkinID="Cheese, Mozzarella Cheese (Hand Stretched Crust)"><p>Cheese, Mozzarella Cheese (Hand Stretched Crust)</p></asp:LinkButton>
					</div>
					<div class="col-md-3 special-in">
				<asp:LinkButton ID="l31i" OnClick="l31i_Click" runat="server" SkinID="images/pizza4.png"><img src="images/pizza4.png" class="img-responsive" alt=""></asp:LinkButton>
						
					<asp:LinkButton ID="l310" OnClick="l31i_Click" runat="server" SkinID="SPICE OVERLOADED BIG PIZZA"><h5><a>SPICE OVERLOADED BIG PIZZA</a></h5></asp:LinkButton>
							<asp:LinkButton ID="l311" OnClick="l31i_Click" runat="server" SkinID="Onion, Capsicum, Green Chillis, Paprika, Jalapeno(Hand Stretched Crust)"><p>Onion, Capsicum, Green Chillis, Paprika, Jalapeno(Hand Stretched Crust)</p></asp:LinkButton> 
					</div>
					<div class="col-md-3 special-in">
						<asp:LinkButton ID="l41i" OnClick="l41i_Click" runat="server" SkinID="images/pizza5.png"><img src="images/pizza5.png"class="img-responsive" alt=""></asp:LinkButton>
						<asp:LinkButton ID="l411" OnClick="l41i_Click" runat="server" SkinID="VEGGIE OVERLOADED BIG PIZZA"><h5><a>VEGGIE OVERLOADED BIG PIZZA</a></h5></asp:LinkButton>
					<asp:LinkButton ID="l412" OnClick="l41i_Click" runat="server"	SkinID="Onion, Tomato, Sweet Corn, Jalapeno, Black Olive (Hand Stretched Crust)"><p>Onion, Tomato, Sweet Corn, Jalapeno, Black Olive (Hand Stretched Crust)</p></asp:LinkButton>
					</div>
					<div class="clearfix"> </div>
				</div>
			<div class="special-top">
					<div class="col-md-3 special-in">
						<asp:LinkButton ID="l51i" OnClick="l51i_Click" runat="server" SkinID="images/pizza6.png"><img src="images/pizza6.png" class="img-responsive" alt=""></asp:LinkButton>
					
				<asp:LinkButton ID="l510" OnClick="l51i_Click" runat="server" SkinID="CHICKEN OVERLOADED BIG PIZZA"><h5><a>CHICKEN OVERLOADED BIG PIZZA </a></h5></asp:LinkButton>
					<asp:LinkButton ID="l511" OnClick="l51i_Click" runat="server" SkinID="Chicken Keema, Chicken Kofta, Capsicum, Onion, Red Paprika (Hand Stretched Crust)"><p>Chicken Keema, Chicken Kofta, Capsicum, Onion, Red Paprika (Hand Stretched Crust)</p></asp:LinkButton>
					</div>
					<div class="col-md-3 special-in">
					<asp:LinkButton ID="l61i" OnClick="l61i_Click" runat="server" SkinID="images/pizza7.jpg"><img src="images/pizza7.jpg" class="img-responsive" alt=""></asp:LinkButton>	
						
					<asp:LinkButton ID="l610" OnClick="l61i_Click" runat="server" SkinID="DOUBLE CHEESE MARGHERITA"><h5><a>DOUBLE CHEESE MARGHERITA</a></h5></asp:LinkButton>	
				<asp:LinkButton ID="l611" OnClick="l61i_Click" runat="server"	SkinID="The ever-popular Margherita - loaded with extra cheese... oodies of it!"><p>The ever-popular Margherita - loaded with extra cheese... oodies of it!</p></asp:LinkButton>
					</div>
					<div class="col-md-3 special-in">
					<asp:LinkButton ID="l71i" OnClick="l71i_Click" runat="server" SkinID="images/pizza8.jpg"><img src="images/pizza8.jpg" class="img-responsive" alt=""></asp:LinkButton>	
					<asp:LinkButton ID="l710" OnClick="l71i_Click" runat="server" SkinID="FARM HOUSE"><h5><a>FARM HOUSE</a></h5></asp:LinkButton>	
					<asp:LinkButton ID="l711" OnClick="l71i_Click" runat="server" SkinID="A pizza that goes ballistic on veggies! Check out this mouth watering overload of crunchy, crisp capsicum, succulent mushrooms and fresh tomatoes">	<p>A pizza that goes ballistic on veggies! Check out this mouth watering overload of crunchy, crisp capsicum, succulent mushrooms and fresh tomatoes</p></asp:LinkButton>
					</div>
					<div class="col-md-3 special-in">
					<asp:LinkButton ID="l81i" OnClick="l81i_Click" runat="server" SkinID="images/pizza9.jpg"><img src="images/pizza9.jpg" class="img-responsive" alt=""></asp:LinkButton>
					<asp:LinkButton ID="l810" OnClick="l81i_Click" runat="server" SkinID="PEPPY PANEER"><h5><a>PEPPY PANEER</a></h5></asp:LinkButton>
					<asp:LinkButton ID="l811" OnClick="l81i_Click" runat="server"	SkinID="Chunky paneer with crisp capsicum and spicy red pepper - quite a mouthful"><p>Chunky paneer with crisp capsicum and spicy red pepper - quite a mouthful</p></asp:LinkButton>
					</div>
					<div class="clearfix"> </div>
				</div>
                  <div class="col-md-3 special-in">
						<asp:LinkButton ID="l91i" OnClick="l91i_Click" runat="server" SkinID="images/pizza12.jpg"><img src="images/pizza12.jpg" class="img-responsive" alt=""></asp:LinkButton>
						<asp:LinkButton ID="l910" OnClick="l91i_Click" runat="server" SkinID="BARBEQUE CHICKEN"><h5><a>BARBEQUE CHICKEN</a></h5></asp:LinkButton>
						<asp:LinkButton ID="l911" OnClick="l91i_Click" runat="server" SkinID="A flavour of barbeque chicken spiked with onions"><p>A flavour of barbeque chicken spiked with onions</p></asp:LinkButton>
					</div>
                   <div class="col-md-3 special-in">
						<asp:LinkButton ID="l101i" OnClick="l101i_Click" runat="server" SkinID="images/pizza13.jpg"><img src="images/pizza13.jpg" class="img-responsive" alt=""></asp:LinkButton> 
						<asp:LinkButton ID="l1010" OnClick="l101i_Click" runat="server" SkinID="SPICY CHICKEN"><h5><a >SPICY CHICKEN</a></h5></asp:LinkButton>
						<asp:LinkButton ID="l1011" OnClick="l101i_Click" runat="server" SkinID="Hot stuff! Handle with care. This one features hot and spicy chicken with red pepper that adds an extra punch."><p>Hot stuff! Handle with care. This one features hot and spicy chicken with red pepper that adds an extra punch.</p></asp:LinkButton>
					</div>
                  <div class="col-md-3 special-in">
						<asp:LinkButton ID="l111i" OnClick="l111i_Click" runat="server" SkinID="images/pizza14.jpg"><img src="images/pizza14.jpg" class="img-responsive" alt=""></asp:LinkButton>
						<asp:LinkButton ID="l110i" OnClick="l111i_Click" runat="server" SkinID="CHICKEN FIESTA"><h5><a>CHICKEN FIESTA</a></h5></asp:LinkButton>
						<asp:LinkButton ID="l1111i" OnClick="l111i_Click" runat="server" SkinID="Chicken Fiesta an exotic new Pizza. Topped with Chunky Chicken, Spicy Chicken, Capsicum & Onions"><p>"Chicken Fiesta" an exotic new Pizza. Topped with Chunky Chicken, Spicy Chicken, Capsicum & Onions</p></asp:LinkButton>
					</div>
                  <div class="col-md-3 special-in">
						<asp:LinkButton ID="l121i" OnClick="l121i_Click" runat="server" SkinID="images/pizza15.jpg"><img src="images/pizza15.jpg" class="img-responsive" alt=""></asp:LinkButton>
						<asp:LinkButton ID="l1210" OnClick="l121i_Click" runat="server" SkinID="CHICKEN HAWAIIAN"><h5><a>CHICKEN HAWAIIAN</a></h5></asp:LinkButton>
						<asp:LinkButton ID="l1211" OnClick="l121i_Click" runat="server" SkinID="A perfect holiday treat! Exotic, seasoned chicken salami with delicious pineapples and juicy jalapenos"><p>A perfect holiday treat! Exotic, seasoned chicken salami with delicious pineapples and juicy jalapenos </p></asp:LinkButton>
					</div>  
                
				
			</div>
		</div>
        </form>
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