<!DOCTYPE html>

<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="img/logo.ico">
		<title>  </title>
		<link href="./css/bootstrap.css" type="text/css" rel="stylesheet">
		<link href="./css/product.css" type="text/css" rel="stylesheet">
		
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
					<a class="dropdown-toggle btn menubutton btn-group" href=""> Clothes </a>
					
				</li>
				<li class="col-md-1"></li>
				<li class="dropdown dropdown-large col-md-2">
					<a class="dropdown-toggle btn menubutton" href=""> Accessories  </a>
					    
				</li>
				<li class="col-md-1"></li>
				<li class="dropdown dropdown-large col-md-2">
					<a class="dropdown-toggle btn menubutton" href=""> Shoes </a>
					
		</nav>

		<div id="alerta" class="alert alert-success fade msgcart" data-alert="alert">
			<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<strong> Testing </strong> In akar line 96.
		</div>

		<div id="alerta5" class="alert alert-warning fade msgcart" data-alert="alert">
			<strong>Line </strong>102.
		</div>

		<!--  -->
		<div class="offer display">

			<!---->

			<div class="row">
				<div class="col-md-2"></div>
				<h2 class="col-md-6" id="name"></h2>
				<div class="col-md-1"></div>
				<div class="col-md-1">
					<div class="pull-right" id="backtosearch">
                                            <button type="button" onclick="location.href='index.jsp'" class="btn btn-default navbar-btn">
                                                    <span class="glyphicon glyphicon-chevron-left"></span> Back
						</button>
					</div>
				</div>
			</div>

			<!--Content-->
                        <p style="text-align:center;"><font size ="6" > ${product.name} </font></p>
                        <br><br>
                        
<br> <br>
			<div class="row space">
				<div class="col-md-2"></div>
				<div class="col-md-1 views"></div>
				<div class="col-md-3 view"></div>
				<div class="col-md-1"></div>

				<div class="col-md-4 info">
					<form class="form-horizontal product-form" role="form">
						<div class="form-group">
							<label for="inputUser" class="col-sm-5">Size:</label>
							<div class="col-sm-5">
								<select id="Size" class="form-control">

	<option value=?Small?>Small</option>
									<option value=?Medium?>Medium</option>
									<option value=?Large?>Large</option>
									<option value=?Xlarge?>Xlarge</option>
									

</select>
							</div>
						</div>
<br>

						
						<div class="form-group">
							<label for="inputAmount" class="col-sm-5">Amount:</label>
							<div class="col-sm-5">
								<select id="quantity" class="form-control">
								<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
							</div>
						</div>
						<div class="row"> 

							<div class="col-md-4 label">
							<p style="color:black;">Price: ${product.price}</p>
							</div>
							<div class="col-md-8">
								<p id="price"></p>
							</div>
						</div>
						<div class="row Price">
							<hr class="col-md-8"/>
						</div>
						<div class="row">
							<div class="col-md-4 label">
						<p style="color:black;">SUBTOTAL:</p>
							</div>
							<div class="col-md-8">
								<p id="subtotal"></p>
							</div>
						</div>
						<div class="row">
							<button type="button" id="addtocart" onclick="location.href='cart?action=addToCart&amp;productCode=${product.code}'" class="btn btn-primary">
                                                            
								<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart <span class="glyphicon glyphicon-chevron-right"></span>
							</button>
						</div>
					</form>

				</div>
			</div>


			<div class="row">

    
      

				<div class="col-md-2"></div>
				<div class="col-md-9 info">

<!-- First Item -->


<div class="item1">
  
    <div class="photo">  
        <div class="photo-wrapper">
            <a href="#">
                <img src="${product.imageURL}"/>
            </a>
           
     </div>
       
    </div>
</div>

					<h3 class="subtitile">DESCRIPTION</h3>
					<p id="marca">
						<i>Product Code: </i>${product.code} 
					</p>
					<p id="material">
						<i>Item: </i>${product.name}
					</p>
					<p id="Description">
						<i>Description: </i> ${product.description}
					</p>
					
				
	
					
				</div>
			</div>








			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-9 info">
					<h3 class="subtitile">USERS WHO BOUGHT THIS SUGGEST :</h3>
				</div>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<div id="comments" class="col-md-9">
					<div class="panel-group" id="according">
						<div class="panel panel-default panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title"><a data-toggle="collapse" data-parent="#according" href="#collapseOne">Anuki93<i class="glyphicon glyphicon-thumbs-up"></i></a></h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<p>
				Great Product! Loved it and recommend it to everyone 
									</p>
								</div>
							</div>
														</div>
						</div>
					</div>
				</div>
			</div>
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
							<form class="form-horizontal" role="form">
								<div class="form-group">
									<label for="inputUsername" class="col-sm-5 control-label">Email or Username</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputUsername3" placeholder="Username" name="inputUsername3">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="col-sm-5 control-label">Password</label>
									<div class="col-sm-7">
										<input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="inputPassword3">
									</div>
								</div>
								<div class="form-group">
										<ul id="errores1" class="list-group">
								 		
										</ul>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-5 col-sm-5">
										<button type="button" id="deposit3" class="btn btn-primary">
											Sign In
										</button>
									</div>
								</div>
								<p>
									<a class="col-md-offset-6 col-md-6" href="">reset password</a> //in the future add the .html page for a seperate page to reset a password, for now we are just keepig it simple
								</p>
							</form>
						</div>
						<div id="columna2" class="row col-md-6">
							<div class="col-md-12">
								<h3> Register </h3>
							</div>
							<form class="form-horizontal" role="form">
								<div class="form-group">
									<label for="inputUsername" class="col-sm-5 control-label">User Name</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputUsername" placeholder="example: anuki">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="col-sm-5 control-label">Password</label>
									<div class="col-sm-7">
										<input type="password" class="form-control" id="inputPassword" placeholder="">
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
										<input type="text" class="form-control" id="inputFirstName" placeholder="Example: Ana">
									</div>
									</div>

								<div class="form-group">
									<label for="inputLastName" class="col-sm-5 control-label">Last Name</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputFirstName2" placeholder="Example: Robakidze">
									</div>
                                    </div>
                 
								
								<div class="form-group">
									<label class="col-sm-5 control-label">Gender</label>
									<label class="radio-inline col-sm-3">
										<input type="radio" checked="checked" name="GenderRadioOptions" id="radio1" value="option1">
										Male </label>
									<label class="radio-inline">
										<input type="radio" name="GenderRadioOptions" id="radio2" value="option2">
										Female </label>
								</div>
								<div class="form-group">
									<label  class="col-sm-5 control-label">Phone Number.</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" placeholder="Example: 917-204-2">
									</div>
								</div>

								<div class="form-group">
									<label for="inputBirth" class="col-sm-5 control-label">Birth Date</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="inputBirth" placeholder="Example.: 1994-05-23">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail" class="col-sm-5 control-label">E-mail</label>
									<div class="col-sm-7">
										<input type="email" class="form-control" id="inputEmail" placeholder="example: anuki@bla.com">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-5 control-label">Repit e-mail</label>
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
										<button type="button" id="register" class="btn btn-primary">
											Register
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>					<div class="modal-footer"></div>
				</div>
			</div>
		</div>
		<!-- Fin de Modal -->

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
		<script src="js/carousel.js"></script>
		<script src="js/main.js"></script>
		<script src="js/producto.js"></script>
	</div>
	</body>

</html>


