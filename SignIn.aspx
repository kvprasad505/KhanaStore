﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=full-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>capstone_signin</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Cs.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
    <style>
    ul.nav li:hover > ul.dropdown-menu {
        display: block;
    }

    .dropdown-submenu > .dropdown-menu {
        top: 0;
        left: 100%;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img alt="Logo" src="images/logo.png" height="40" /></span>KhanaStore</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="about.aspx">About</a></li>
                            <li><a href="contact.aspx">Contact</a></li>
                            <li class="dropdown">
                               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Food Stalls<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Products.aspx">All_Items</a></li>  
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Uni Mall<b class="caret"></b></a>
                                     <ul class="dropdown-menu">
                                          <li><a href="menulist.aspx?id=1">Spicy Cuisine</a></li>
                                         <li><a href="menulist.aspx?id=2">Domino's</a></li>
                                         </ul>
                                        </li>
                                    <li role="separator" class="divider"></li>
                                     <li class="dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">BH-1 Food_stalls<b class="caret"></b></a>
                                     <ul class="dropdown-menu">
                                         <li><a href="menulist.aspx?id=3">s.k foods</a></li>
                                         <li><a href="menulist.aspx?id=4">p.j foods</a></li>
                                         <li><a href="menulist.aspx?id=5">southern express</a></li>
                                         </ul>  
                                        </li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">BH-2 Food_stalls<b class="caret"></b></a>
                                     <ul class="dropdown-menu">
                                         <li><a href="menulist.aspx?id=3">vascos</a></li>
                                         <li><a href="menulist.aspx?id=4">talk of the town</a></li>
                                         <li><a href="menulist.aspx?id=5">pizza express</a></li>
                                         <li><a href="menulist.aspx?id=3">kikeez</a> </li>
                                         </ul>  
                                        </li>
                                   
                                </ul>
                            </li>
                             <li>
                     <a href="Cart.aspx?">Cart<span class="badge" id="pCount" runat="server"></span></a>
                            </li>
                            <li id="btnSignIn" runat="server" ><a href="SignIn.aspx"><span class="glyphicon glyphicon-log-in"></span>SigIn</a></li>
                            </ul>
                    </div>
                </div>
            </div>

        <!--- signin start--->
      <div class="abc" style="background:url(images/b1.jpg)">
      <div class="container">
            <div class="form-horizontal">
                <h2>Login</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required !" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-default" OnClick="Button1_Click" />
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:LinkButton ID="lbForgotPass" runat="server" PostBackUrl="~/ForgotPassword.aspx">Forgot Password !</asp:LinkButton>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div> 
        </div>
            <hr/>
        </div>
        <!--- signin end--->
    
    
      <!--- Footer  -->
         <footer>
          
            <section class="nb-footer">
             <div class="container">
             <div class="row">
             <div class="col-md-3 col-sm-6">
             <div class="footer-single">
	<!-- 	<img src="images/logo.png" class="img-responsive" alt="Logo"> -->

		<!-- This is only for better view of theme if you want your image logo remove div dummy-logo bellow and replace your logo in logo.png and uncomment logo tag above-->
	<!--<div class="dummy-logo"> -->   
	<div class="icon pull-left brand">
		<img src="images/l1.png" class="img-responsive" alt="Logo"/>
	</div>
		<h2>KhanaSTore</h2>
		<p>order food here</p>
	<!--</div>-->

		<p>There will be immediate response to the customer after placing the order. Customers can see the food menu of particular stalls and can place orders.</p>
	</div>

     </div>
    <div class="col-md-3 col-sm-6">
	<div class="footer-single useful-links">
	 <div class="footer-title"><h2>Navigation</h2></div>
	 <ul class="list-unstyled">
            <li><a href="Default.aspx">Home <i class="fa fa-angle-right pull-right"></i></a></li>
            <li><a href="about.aspx">About Us <i class="fa fa-angle-right pull-right"></i></a></li>
            
            <li><a href="contact.aspx">Contact Us <i class="fa fa-angle-right pull-right"></i></a></li>
         </ul>
        </div>
    </div>
    <div class="clearfix visible-sm"></div>
    <div class="col-md-3 col-sm-6">
	
	<div class="col-sm-12 left-clear right-clear footer-single footer-project">
		<div class="footer-title"><h2>Latest Projects</h2></div>
		<div class="col-xs-4">
			<a href="https://drive.google.com/open?id=16939ycEf_uGm27J3WMoIqPf38jAs1Uab" target="_blank"><img src="images/projects.jpeg" class="img-circle"/></a>
		</div>
		<div class="col-xs-4">
			<a href="https://github.com/veerendrasai/Railway-Reservation-system" target="_blank"><img src="images/projects.jpeg" class="img-circle"/></a>
		</div>
		<div class="col-xs-4">
		    <a href="https://github.com/veerendrasai/Blood-Donation-1" target="_blank"><img src="images/projects.jpeg" class="img-circle"/></a>
		</div>
		

	</div> 
        

    </div> 
       
    <div class="col-md-3 col-sm-6">
	<div class="footer-single">
		<div class="footer-title"><h2>Contact Information</h2></div>
		<address>
			Lovely Professional University, Paghwara<br/>
			Punjab, India <br/>
			<i class="fa fa-phone"></i>  987 654 3210 <br/>
			<i class="fa fa-fax"></i> 012 123 2345<br/>
			<i class="fa fa-envelope"></i> infokhanastore@gmail.com<br/>
		</address>					
	</div>

    </div>
    </div>
    </div>
    </section>	

   <section class="nb-copyright">
   <div class="container">
   <div class="row">
   <div class="col-sm-6 copyrt xs-center">
	2015 © All Rights Reserved. <a href="">Terms & Conditions</a> | <a href="">Privacy Policy</a>
   </div>
   <div class="col-sm-6 text-right xs-center">
	<ul class="list-inline footer-social">
		<li><a href="https://www.facebook.com/Khana-Store-329844861159155/" target="_blank"><img class="img-circle" src="images/fi.png" alt=""/></a></li>
		<li><<a href="https://instagram.com/storekhana?utm_source=ig_profile_share&igshid=1iseiedtgxqb9" target="_blank"><img class="img-circle" src="images/i1.jpg" alt=""/></a></li>
		<li><<a href="#" target="_blank"><img class="img-circle" src="images/ti.png" alt=""/></a></li>
		
	</ul>
  </div>
  </div>
  </div>
  </section>

        </footer>
        </form>

  

        <!--- Footer -->

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
         
</body>
</html>
