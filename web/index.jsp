<!DOCTYPE html>

<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="img/logo.ico">
		<title> Women's Clothing store </title>
		<link href="./css/bootstrap.css" type="text/css" rel="stylesheet">
		<link href="./css/main.css" type="text/css" rel="stylesheet">
		<link href="./css/index.css" type="text/css" rel="stylesheet">
		<script src="js/modernizr.custom.js"></script>
	</head>

	<body>
	<noscript>
		<style type="text/css">
		    .pagecontainer {display:none;}
		</style>
		<div class="noscriptmsg">
		    <div class="col-md-12 col-sm-12" id="error-msg">
		        <div class="alert alert-danger" role="alert">
				Alert for clothing <a href="http://www.enable-javascript.com/es/"
				target="_blank"> </a>.
			</div>
		    </div>
		</div>
	</noscript>
	<div class="pagecontainer">	
		<!--Header-->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp"><img src="logo.png"/></a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a id="cart" href="shoppigcart/cart.jsp"> <img src="http://www.clker.com/cliparts/3/h/Z/k/x/J/shopping-cart-grey-hi.png"/> <span id="cantprod" class="badge">0</span>  </a>
						</li>
						<li>
							<button id="deposit" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
								Sign in | Register
							</button>
						</li>
					</ul>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
			<ul class="nav navbar-middle">
				<li class="col-md-2"></li>
				<li class="dropdown dropdown-large col-md-2">
					<a class="dropdown-toggle btn menubutton btn-group"> Clothes </a>
					
				</li>
				<li class="col-md-1"></li>
				<li class="dropdown dropdown-large col-md-2">
					<a class="dropdown-toggle btn menubutton"> Accessories  </a>
					    
				</li>
				<li class="col-md-1"></li>
				<li class="dropdown dropdown-large col-md-2">
					<a class="dropdown-toggle btn menubutton"> Shoes </a>
					
		</nav>

		<div id="alerta" class="alert alert-success fade msgcart" data-alert="alert">
			<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<strong> Testing </strong> In akar line 96.
		</div>

		<div id="alerta5" class="alert alert-warning fade msgcart" data-alert="alert">
			<strong>Line </strong>102.
		</div>

		<!--Container-->
		<div class="offer">
			<div class="row">
				<div class="col-md-1"></div>
				<div id="carousel-example-generic" class="carousel slide col-md-7" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>
					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<a href=""><img src="scrollerImg1.jpg" alt=""></a>
						</div>
						<div class="item">
							<a href=""><img src="scrollerImg2.jpg" alt=""></a>
						</div>
						<div class="item">
							<a href=""><img src="scrollerImg3.jpg" alt=""></a>
						</div>
					</div>
					<!-- Controls / Prev-Next -->
					<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> </a>
					<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a>
				</div>

				
				<ul class="grid cs-style-3 col-md-3">
					<li>
						<figure>
							<img id="howto" src="blackfridaysaleImg.jpg" alt="">
							<figcaption>
								<h4>Black Friday Sale </h4>
								<span>Shop Now</span>
							</figcaption>
						</figure>
					</li>
				</ul>
			</div>
			<div class="row">

				<div class="col-md-1"></div>
				<a href=?willbelinkfornewitems?>
				<div class="title col-md-10">
					<h4> New Items </h4>
				</div> </a>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div id="Nuevo" class="col-md-10"></div>


<!-- First Item -->

<div class="item1">
  
    <div class="photo">  
        <div class="photo-wrapper">
            <a href="product?action=getProduct&amp;productCode=bs01">
                <img src="http://www.gap.com/webcontent/0009/759/374/cn9759374.jpg"/>
            </a>
            <div class="catalog-item-action text-shadow">New Arrival</div>
        </div>
      
        <div class="catalog-item-price">
            <span class="em2">$14.95</span> 
        </div>
    </div>
    <div class="description">
        <div class="description-header">
          <span class="name"> Boatneck Sweater
          
      </div>
     </div>
      
</div>

      <!-- Second Item -->

<div class="item1">
  
    <div class="photo">  
        <div class="photo-wrapper">
            <a href="product?action=getProduct&amp;productCode=yp01">
                <img src="https://dm.victoriassecret.com/product/224x299/V562004.jpg"/>
            </a>
            <div class="catalog-item-action text-shadow">New Arrival</div>
        </div>
      
        <div class="catalog-item-price">
            <span class="em2">$12.95</span> 
        </div>
    </div>
    <div class="description">
        <div class="description-header">
          <span class="name"> Yoga Pant
          
      </div>
     </div>
      
</div>

<!-- 3rd Item -->


<div class="item1">
  
    <div class="photo">  
        <div class="photo-wrapper">
            <a href="product?action=getProduct&amp;productCode=hd02">
                <img src="http://www.eclothstyle.com/wp-content/uploads/2014/03/10/0/57-LABEL-thread-women-s-Rib-Hoodie-1.jpg"/>
            </a>
            <div class="catalog-item-action text-shadow">New Arrival</div>
        </div>
     
        <div class="catalog-item-price">
            <span class="em2">$14.95</span> 
        </div>
    </div>
    <div class="description">
        <div class="description-header">
          <span class="name"> Stylish Hoodie
          
      </div>
     </div>
      
</div>




<div class="item1">
  
    <div class="photo">  
        <div class="photo-wrapper">
            <a href="product?action=getProduct&amp;productCode=sssd01">
                <img src="http://amominredhighheels.com/wp-content/uploads/2009/10/dress_boot2.jpg"/>
            </a>
            <div class="catalog-item-action text-shadow">New Arrival</div>
        </div>
     
        <div class="catalog-item-price">
            <span class="em2">$19.95</span> 
        </div>
    </div>
    <div class="description">
        <div class="description-header">
          <span class="name">Short sleeve sweater dress
          
      </div>
     </div>
      
</div>






			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<a href=??> 
				<div class="title col-md-10">
					<h4> Sales </h4>
				</div> </a>
			</div>
			<div class="row">
				<div class="col-md-1"></div>

				<div id="sales" class="col-md-10"></div>
<div class="item1">
  
    <div class="photo">  
        <div class="photo-wrapper">
            <a href="product?action=getProduct&amp;productCode=sfj01">
                <img src="http://g01.a.alicdn.com/kf/HTB1.p3vHVXXXXc0XXXXq6xXFXXXj/2014-New-Autumn-Winter-Fashion-Pencil-Jeans-Woman-Candy-Colored-Mid-Waist-Full-Length-Zipper-Slim.jpg"/>
            </a>
            <div class="catalog-item-action text-shadow">Sales</div>
        </div>
      
        <div class="catalog-item-price">
            <span class="em2"><strike>$18.95</strike></span>12.95
        </div>
    </div>
    <div class="description">
        <div class="description-header">
          <span class="name">Slim fit jeans
          
      </div>
      <div class="description-content">
            
   
    </div>
</div>
      
</div>


<div class="item1">
  
    <div class="photo">  
        <div class="photo-wrapper">
            <a href="product?action=getProduct&amp;productCode=hks01">
                <img src="http://www.wearingsales.com/from/ws122830/634613799252656250.jpg"/>
            </a>
            <div class="catalog-item-action text-shadow">Sales</div>
        </div>
      
        <div class="catalog-item-price">
            <span class="em2"><strike>$48.55</strike></span>29.95
        </div>
    </div>
    <div class="description">
        <div class="description-header">
          <span class="name">Hooded knit sweater
          
      </div>
      </div>
      
</div>

<div class="item1">
  
    <div class="photo">  
        <div class="photo-wrapper">
            <a href="product?action=getProduct&amp;productCode=mfp01">
                <img src="http://media.kohlsimg.com/is/image/kohls/2225014_Pure_Night?wid=882&hei=882&op_sharpen=1">
            </a>
            <div class="catalog-item-action text-shadow">Sales</div>
        </div>
      
        <div class="catalog-item-price">
            <span class="em2"><strike>$16.00</strike></span>14.95
        </div>
    </div>
    <div class="description">
        <div class="description-header">
          <span class="name">Modern fit pants
          
      </div>
    </div>
      
</div>


<div class="item1">
  
    <div class="photo">  
        <div class="photo-wrapper">
            <a href="product?action=getProduct&amp;productCode=csd01">
                <img src="https://s-media-cache-ak0.pinimg.com/736x/d6/b6/f6/d6b6f65e602c144c49364e1a40db6120.jpg"/>
            </a>
            <div class="catalog-item-action text-shadow">Sales</div>
        </div>
      
        <div class="catalog-item-price">
            <span class="em2"><strike>$88.95</strike></span>34.95
        </div>
    </div>
    <div class="description">
        <div class="description-header">
          <span class="name">Cowlneck sweater dress
          
      </div>
      </div>
      
</div>


<br>
<br>
<br>


			</div>
		</div>

		<br>
<br>
<br>
<br>

		<!-- Sign In and REgistration -->

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Authentication</h4>
						<h4 id="datosObligatorios"> Sign in or Register for our website  </h4>
					</div>
					<div class="modal-body col-md-12">
						<div class="row col-md-6">
							<div class="col-md-12">
								<h3> Sign In</h3>
							</div>
							<form class="form-horizontal" role="form" action="user" method="post">
                                      
                                                            <input type="hidden" name="action" value="login"> 
								<div class="form-group">
									<label for="inputUsername" class="col-sm-5 control-label">Email</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputUsername3" placeholder="Email" name="inputUsername3" value="${user.email}">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="col-sm-5 control-label">Password</label>
									<div class="col-sm-7">
										<input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="inputPassword3" value="${user.password}">
									</div>
								</div>
								<div class="form-group">
										<ul id="errores1" class="list-group">
								 		
										</ul>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-5 col-sm-5">
										<button type="submit" id="deposit3" class="btn btn-primary">
											Sign In
										</button>
									</div>
								</div>
								<p>
									
								</p>
							</form>
						</div>
						<div id="columna2" class="row col-md-6">
							<div class="col-md-12">
								<h3> Register </h3>
							</div>
                                                    <form class="form-horizontal" role="form" action="user" method="post">
                                                        <input type="hidden" name="action" value="register"> 
								<div class="form-group">
									<label for="inputUsername" class="col-sm-5 control-label">User Name</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputUsername" name="userName" value="${user.userName}" placeholder="example: anuki">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="col-sm-5 control-label">Password</label>
									<div class="col-sm-7">
										<input type="password" class="form-control" id="inputPassword" name="password" value="${user.password}" placeholder="">
									</div>
								</div>
                                
								<div class="form-group">
									<label for="inputPassword" class="col-sm-5 control-label">Repeat Password</label>
									<div class="col-sm-7">
										<input type="password" class="form-control" id="inputPassword2" placeholder="">
									</div>
								</div>
         
								<div class="form-group">
									<label for="inputFirstName" class="col-sm-5 control-label">First Name</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputFirstName" name="first" value="${user.firstName}" placeholder="Example: Ana">
									</div>
									</div>

								<div class="form-group">
									<label for="inputLastName" class="col-sm-5 control-label">Last Name</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputFirstName2" name="last" value="${user.lastName}" placeholder="Example: Robakidze">
									</div>
                                    </div>
                 
								
								<div class="form-group">
									<label class="col-sm-5 control-label">Gender</label>
									<label class="radio-inline col-sm-3">
										<input type="radio" checked="checked" name="GenderRadioOptions" id="radio1" name="gender" value="${user.gender}">
										Male </label>
									<label class="radio-inline">
										<input type="radio" name="GenderRadioOptions" id="radio2" name="gender" value="${user.gender}">
										Female </label>
								</div>
								<div class="form-group">
									<label class="col-sm-5 control-label">Phone Number</label>
									<div class="col-sm-7">
										<input type="text" class="form-control"  value="${user.phone}" name="phone" placeholder="Example: 917-204-2">
									</div>
								</div>

								<div class="form-group">
									<label for="inputBirth" class="col-sm-5 control-label">Birth Date</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputBirth" name="birth" value="${user.birth}" placeholder="Example.: 1994-05-23">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail" class="col-sm-5 control-label">E-mail</label>
									<div class="col-sm-7">
										<input type="email" class="form-control" id="inputEmail" name="email" value="${user.email}" placeholder="example: anuki@bla.com">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-5 control-label">Repeat e-mail</label>
									<div class="col-sm-7">
										<input type="email" class="form-control" id="inputEmail2" placeholder="type again your e-mail">
									</div>
								</div>
								<div class="form-group">
										<ul id="errores2" class="list-group">
								 		
										</ul>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-7 col-sm-5">
                                                                            
                                                                              <button type="submit" id="register" class="btn btn-primary" >
											Register
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>
		<!--  -->

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
		<script src="js/main.js"></script>
		<script src="js/toucheffects.js"></script>
		<script src="js/index.js"></script>
	</div>	
	</body>

</html>