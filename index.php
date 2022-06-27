<?php
session_start();
error_reporting(0);
include('includes/config.php');
date_default_timezone_set('Asia/Karachi');
$currentTime = date('h:i:s A', time ());


if(isset($_GET['action']) && $_GET['action']=="add") 
/*  The isset () function is used to check whether a variable is set or not. If a variable is already unset with unset() function, it will no longer be set. The isset() function return false if testing variable contains a NULL value.*/   

{
	$id=intval($_GET['id']); //intval() function returns the integer value of a variable. 
	/*The $_GET variable is used to collect values from a form with method="get". Information sent from a form with the GET method is visible to everyone (it will be displayed in the browser's address bar) and it has limits on the amount of information to send (max. 100 characters) */
	if(isset($_SESSION['cart'][$id])) //
		{
			$_SESSION['cart'][$id]['quantity']++;
		}
	else
	{
		$sql_p="SELECT * FROM products WHERE id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0) // The mysqli_num_rows() function returns the number of rows in a result set.
		{
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['id']]=array("quantity" => 1, "price" => $row_p['productPrice'], "date"=>$currentTime);
			header('location:index.php');
			return;
		}
		else
		{
			$message="Product ID is invalid";
		
		}
	}
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		

	    <title>EMART</title>

	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link rel="stylesheet" href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">
		<link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css"> <!-- facebook icons etc -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">
	</head>
    <body class="cnt-home">
		<!--  HEADER  -->
<header class="header-style-1">
<?php include('includes/top-header.php');?>
<?php include('includes/main-header.php');?>
<?php include('includes/menu-bar.php');?>
</header>

		<!-- HEADER : END  -->
<!--<?php 
//date_default_timezone_set('Asia/Karachi');
//echo date('M j, Y h:ia', time());
?>-->
<!--body start -->
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
		<div class="furniture-container homepage-container">

			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3 sidebar">
					<?php include('includes/side-menu.php');?>
				</div>

					<div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">		
						<div id="hero" class="homepage-slider3">
							<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
							<div class="full-width-slider">	
								<div class="item" style="background-image: url(assets/images/sliders/sliderr2-1050x300.jpg);">
								</div>		
							</div>
						    
							<div class="full-width-slider">
								<div class="item full-width-slider" style="background-image:url(assets/images/sliders/sliderr4-1050x300.jpg);">
							</div>
							</div>
							</div><!-- /.owl-carousel -->
						</div>
					</div><!-- /.homebanner-holder -->
			</div><!-- /.row -->
<div class="body-content outer-top-xs" id="top-banner-an d-menu">
	<div class="container">
		<div class="furniture-container homepage-container">
			<div id="product-tabs-slider" class="scroll-tabs inner-bottom-vs  wow fadeInUp">
				<div class="more-info-tab clearfix">
			   		<h3 class="new-product-title pull-left">Featured Products</h3>
				</div>
					<div class="tab-content outer-top-xs">
							<div class="tab-pane in active" id="all">			
							<div class="product-slider">
								<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
	<?php
		$ret=mysqli_query($con,"select * from products where category=13"); /* shows all the items of medical category */
	
	while ($row=mysqli_fetch_array($ret)) 
		{?>

		<div class="item item-carousel">
			<div class="products">
				<div class="product">		
					<div class="product-image">
						<div class="image">
				<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>">

	<img  src="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>"
	data-echo="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>"  

							width="200" height="200" alt=""></a>
						</div><!-- /.image -->			
					</div><!-- /.product-image -->		
		<div class="product-info text-left">
		<h3 class="name">
			<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?>
			</a>
		</h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>
			<div class="product-price">	
				<span class="price">Rs.<?php echo htmlentities($row['productPrice']);?></span>
				<span class="price-before-discount">Rs.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>	
			</div><!-- /.product-price -->
		</div><!-- /.product-info -->
		
		<div class="action">
			<a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">
			Add to Cart</a>
		</div>
			</div><!-- /.product -->      
			</div><!-- /.products -->
		</div><!-- /.item -->
	<?php } ?>

			</div><!-- /.home-owl-carousel -->
			</div><!-- /.product-slider -->
			</div>
			</div>
		</div>
		    

         <!-- ============================================== TABS ============================================== -->
			<div class="sections prod-slider-small outer-top-small">
				<div class="row">
					<div class="col-md-6">
	                   <section class="section">
	                   	<h3 class="section-title">FAST FOOD</h3>
	                   	<div class="owl-carousel homepage-owl-carousel custom-carousel outer-top-xs owl-theme" data-item="2">
	   
<?php
$ret=mysqli_query($con,"select * from products where category=11");
while ($row=mysqli_fetch_array($ret)) 
{
?>
<div class="item item-carousel">
<div class="products">				
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>">
		<img  src="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" 
		data-echo="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" 
			  			 width="200" height="200"></a>
			</div><!-- /.image -->			                        		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h3 class="name"><a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>

			<div class="product-price">	
				<span class="price">
					Rs. <?php echo htmlentities($row['productPrice']);?>			
				</span>
				<span class="price-before-discount">Rs.<?php echo htmlentities($row['productPriceBeforeDiscount']);?>
				</span>
									
			</div>
			
		</div>
		<div class="action"><a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Add to Cart</a>
		</div>
			</div>
			</div>
		</div>
<?php }?>
	</div>
	</section>
	</div>

	<div class="col-md-6">
		<section class="section">
			<h3 class="section-title">Vegetables</h3>
	           	<div class="owl-carousel homepage-owl-carousel custom-carousel outer-top-xs owl-theme" data-item="2">
	<?php
$ret=mysqli_query($con,"select * from products where category=12");
while ($row=mysqli_fetch_array($ret)) 
{
?>
	<div class="item item-carousel">
		<div class="products">				
			<div class="product">		
				<div class="product-image">
					<div class="image">
		<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>">
		<img  src="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" 
		data-echo="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>"  
				width="200" height="200"></a>
			</div><!-- /.image -->			                        		   
		</div><!-- /.product-image -->
		
		<div class="product-info text-left">
			<h3 class="name">
				<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>
			<div class="product-price">	
				<span class="price">Rs .<?php echo htmlentities($row['productPrice']);?></span>
				<span class="price-before-discount">Rs.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>								
			</div>			
		</div>
			<div class="action">
				<a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Add to Cart</a>
			</div>
			</div>
			</div>
	</div>
<?php }?>  		</div>
            </section>
		</div>
	</div>
</div>
		
	<section class="section featured-product inner-xs wow fadeInUp"></section>

<!--body end -->
<?php include('includes/footer.php');?>
	
	<script src="assets/js/jquery-1.11.1.min.js">			</script>
	<script src="assets/js/bootstrap.min.js">				</script>	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js">			</script>	
	<script src="assets/js/echo.min.js">					</script>
	<script src="assets/js/jquery.easing-1.3.min.js">		</script>
	<script src="assets/js/bootstrap-slider.min.js">		</script>
    <script src="assets/js/jquery.rateit.min.js">			</script>
    <script src="assets/js/lightbox.min.js">				</script>
    <script src="assets/js/bootstrap-select.min.js">		</script>
    <script src="assets/js/wow.min.js">						</script>
	<script src="assets/js/scripts.js">						</script>	
	<script src="switchstylesheet/switchstylesheet.js">		</script>
</body>
</html>