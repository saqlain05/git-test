<?php
require('connection.inc.php');
require('functions.inc.php');
require('add_to_cart.inc.php');
$cat_res=mysqli_query($con,"select * from categories where status=1 order by categories asc");
$cat_arr=array();
while($row=mysqli_fetch_assoc($cat_res)){
	$cat_arr[]=$row;	
}

$obj=new add_to_cart();
$totalProduct=$obj->totalProduct();


?>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Saqlain Mobile Store</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/core.css">
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/custom.css">
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>
<style>
.header__account a {
  color: #000;
  font-size: 19px;
  margin-right: 10px;
  padding-right: 13px;
  position: relative;
}</style>
<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper">
        <header id="htc__header" class="htc__header__area header--one">
            <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="menumenu__container clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5"> 
                                <div class="logo">
                                     <a href="index.php"><img src="temp/logo.PNG" alt="logo images"></a>
                                </div>
                            </div>
                            <div class="col-md-7 col-lg-7 col-sm-5 col-xs-3">
                                <nav class="main__menu__nav hidden-xs hidden-sm">
                                    <ul class="main__menu">
                                    <li class="drop"><a href="index.php">Home</a></li>
                                        
                                       
                                        <li><a href="all_product.php">All Product</a></li>
                                            <li><a href="contact.php">contact</a></li>
                                   
                                       
                                        
                                        <?php
                                            if(isset($_SESSION['USER_LOGIN'])){?>
                                                <!-- <li><a href="profile.php"><?php echo $_SESSION['USER_NAME']?></a></li> -->
                                                <li class="drop"><a href="profile.php">Hello, <?php echo $_SESSION['USER_NAME']?> 
                                                <!-- <span style="color:purple;"><b> &or;</b></span> -->
                                                </a>
                                            <ul class="dropdown">
                                            
                                            <li><a href="my_order.php">My Order</a></li>
                                                <li><a href="profile.php">Profile</a></li>
                                               
										   
                                            </ul>
                                        </li>

                                                <?php }
                                            ?>
                                             <?php
                                    if(!isset($_SESSION['USER_LOGIN'])){?>
                                       <li><a href="login.php">Login/Register</a></li>
                                    <?php } ?>
                                             
                                    </ul>
                                </nav>


                                <nav class="main__menu__nav hidden-xs hidden-sm">
                                    <ul class="main__menu">
                                        
                                        <?php
										foreach($cat_arr as $list){
											?>
											<li class="drop"><a href="categories.php?id=<?php echo $list['id']?>"><?php echo $list['categories']?></a>
                                            
											<?php
											$cat_id=$list['id'];
											$sub_cat_res=mysqli_query($con,"select * from sub_categories where status='1' and categories_id='$cat_id'");
											if(mysqli_num_rows($sub_cat_res)>0){
											?>
											
											   <ul class="dropdown">
													<?php
													while($sub_cat_rows=mysqli_fetch_assoc($sub_cat_res)){
														echo '<li><a href="categories.php?id='.$list['id'].'&sub_categories='.$sub_cat_rows['id'].'">'.$sub_cat_rows['sub_categories'].'</a></li>
													';
													}
													?>
												</ul>
												<?php } ?>
											</li>
											<?php
										}
										?>
                                        
                                    </ul>
                                </nav>

                                <div class="mobile-menu clearfix visible-xs visible-sm">
                                    <nav id="mobile_dropdown">
                                        <ul>
                                        <?php
                                        if(!isset($_SESSION['USER_LOGIN'])){?>
                                            <li><a href="login.php">Login/Register</a></li>
                                        <?php } ?>
                                        <?php
                                            if(isset($_SESSION['USER_LOGIN'])){?>
                                                <!-- <li><a href="profile.php"><?php echo $_SESSION['USER_NAME']?></a></li> -->
                                                <li class="drop"><a href="#">Hello, <?php echo $_SESSION['USER_NAME']?> <span style="color:purple;"><b> &or;</b></span></a>
                                            <ul class="dropdown">
                                            
                                            <li><a href="my_order.php">My Order</a></li>
                                                <li><a href="profile.php">Profile</a></li>
                                               
										   
                                            </ul>
                                        </li>

                                                <?php }
                                            ?>
                                        
                                    
                                        
                                            <li><a href="index.php">Home</a></li>
                                            <?php
											foreach($cat_arr as $list){
												?>
												<li class="drop"><a href="categories.php?id=<?php echo $list['id']?>"><?php echo $list['categories']?></a>
											<?php
											$cat_id=$list['id'];
											$sub_cat_res=mysqli_query($con,"select * from sub_categories where status='1' and categories_id='$cat_id'");
											if(mysqli_num_rows($sub_cat_res)>0){
											?>
											
											   <ul class="dropdown">
													<?php
													while($sub_cat_rows=mysqli_fetch_assoc($sub_cat_res)){
														echo '<li><a href="categories.php?id='.$list['id'].'&sub_categories='.$sub_cat_rows['id'].'">'.$sub_cat_rows['sub_categories'].'</a></li>
													';
													}
													?>
												</ul>
												<?php } ?>
											</li>
												<?php
											}
											?>
                                        
                                         
                                            <li><a href="all_product.php">All Product</a></li>
                                             <li><a href="contact.php">contact</a></li>
                                        </ul>
                                        
                                    </nav>
                                </div>  
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-4 col-xs-4">
                                <div class="header__right">
                                
									<div class="header__search search search__open">
                                        <a href="#"><i class="icon-magnifier icons"></i></a>
                                    </div>
                                    
                                    <div class="header__account">
                                        <?php if(isset($_SESSION['USER_LOGIN'])){
                                            
                                            echo '<a href="logout.php">Logout</a> ';
                                            
										}else{
											// echo '<a href="login.php">Login/Register</a>';
										}
										?>
										
                                    </div>
                                    <div class="htc__shopping__cart">
                                        <a href="cart.php"><i class="icon-handbag icons"></i></a>
                                        <a href="cart.php"><span class="htc__qua"><?php echo $totalProduct?></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mobile-menu-area"></div>
                </div>
            </div>
        </header>
		<div class="body__overlay"></div>
		<div class="offset__wrapper">
            <div class="search__area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="search__inner">
                                <form action="search.php" method="get">
                                    <input placeholder="Search here... " type="text" name="str">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

                                