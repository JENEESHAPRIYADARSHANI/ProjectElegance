<%-- 
    Document   : index
    Created on : Apr 28, 2024, 3:29:24 PM
    Author     : DELL
--%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>EleganceEco</title>


  
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">

    <link rel="stylesheet" href="css/elegance.css">

    <link rel="stylesheet" href="css/owl-carousel.css">

    <link rel="stylesheet" href="css/lightbox.css">

    <link rel="stylesheet" href="css/custom.css">
    
     <!-- Logo -->
     <script src="https://kit.fontawesome.com/8e614267a0.js" crossorigin="anonymous"></script>

    </head>
    
    <body>
        
        <input type="hidden" id="msg" value="<%= request.getAttribute("message") %>">
    
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="index.jsp" class="logo">
                            <img src="img/logo.png">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="#top" class="active">HOME</a></li>
                            <li class="scroll-to-section"><a href="#men">MEN'S</a></li>
                            <li class="scroll-to-section"><a href="#women">WOMEN'S</a></li>
                            <li class="scroll-to-section"><a href="#kids">KIDS & BABY</a></li>
                            <li class="scroll-to-section"><a href="#">
                                <i class="fa-solid fa-cart-shopping"></i> &nbsp; CART
                            </a></li>
                            <li class="scroll-to-section"><a href="#">
                                <i class="fa-solid fa-user"></i> &nbsp; LOGIN
                            </a></li>
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner" id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="left-content">
                        <div class="thumb">
                            <div class="inner-content">
                                <h4>SHOP THE LATEST DROP</h4>
                                <span>One click to browse all Latest Releases + Restocks</span>
                                <div class="main-border-button">
                                   <li class="scroll-to-section"><a href="#men">Shop Now!</a></li> 
                                </div>
                            </div>
                            <img src="img/left-banner-image.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="right-content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>SHOP WOMENS</h4>
                                            <span>Rise above the noise</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>WOMENS</h4>
                                                <p>Women's Attire for Grace, Comfort, and Trendsetting Style.</p>
                                                <div class="main-border-button">
                                                  <li class="scroll-to-section"><a href="#women">Shop Now!</a></li> 
                                                </div>
                                            </div>
                                        </div>
                                        <img src="img/baner-right-image-01.jpg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>SHOP MENS</h4>
                                            <span>Your lifestyle. Your statement.</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>MENS</h4>
                                                <p>Discover Men?s Wear: Style, Quality, and Versatility for Every Occasion.</p>
                                                <div class="main-border-button">
                                                    <li class="scroll-to-section"><a href="#men">Shop Now!</a></li> 
                                                </div>
                                            </div>
                                        </div>
                                        <img src="img/baner-right-image-02.jpg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>SHOP KIDS</h4>
                                            <span>Best Clothes For Kids</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>KIDS & BABY</h4>
                                                <p>Kids? Clothing for Fun, Fashion, and Everyday Adventure.</p>
                                                <div class="main-border-button">
                                                    <li class="scroll-to-section"><a href="#kids">Shop Now!</a></li> 
                                                </div>
                                            </div>
                                        </div>
                                        <img src="img/baner-right-image-03.jpg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>ACCESSORIES</h4>
                                            <span>Best Trend Accessories</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>ACCESSORIES</h4>
                                                <p>Essential Add-Ons for Every Fashion Statement.</p>
                                                <div class="main-border-button">
                                                    <a href="#">SHOP NOW</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="img/baner-right-image-04.jpg">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Men Area Starts ***** -->
    <section class="section" id="men">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>MENS WEAR</h2>
                        <span>Elevate Your Style with Timeless Men's Fashion Essentials.</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="men-item-carousel">
                        <div class="owl-men-item owl-carousel">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/men-01.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>WAFFLE TEE</h4>
                                    <span>LKR 3,500.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/men-02.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>AUGUSTUS CARGO</h4>
                                    <span>LKR 4,600.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/men-03.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>SCORNED HEART TEE</h4>
                                    <span>LKR 4,500.00</span>
                                    <ul class="stars">
                                        <i class="fa-solid fa-star-half fa-flip-horizontal fa-sm" style="color: #000000;"></i>
                                        <i class="fa-solid fa-star fa-sm" style="color: #000000;"></i>
                                        <i class="fa-solid fa-star fa-sm" style="color: #000000;"></i>
                                        <i class="fa-solid fa-star fa-sm" style="color: #000000;"></i>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/men-04.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>B W CUFF TEE</h4>
                                    <span>LKR 3,700.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Men Area Ends ***** -->

    <!-- ***** Women Area Starts ***** -->
    <section class="section" id="women">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>WOMENS WEAR</h2>
                        <span>Elegant and timeless women's fashion for every occasion. Explore now!</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="women-item-carousel">
                        <div class="owl-women-item owl-carousel">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/women-02.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>OELECTRA TOP</h4>
                                    <span>LKR 3,650.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/women-01.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>OVERSIZE TEE</h4>
                                    <span>LKR 3,280.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>>
                                        </ul>
                                    </div>
                                    <img src="img/women-03.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>ALEKSI SKIRT</h4>
                                    <span>LKR 3,580.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/women-04.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>B W CROP TOP</h4>
                                    <span>LKR 2,600.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Women Area Ends ***** -->

    <!-- ***** Kids Area Starts ***** -->
    <section class="section" id="kids">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>KIDS WEAR</h2>
                        <span>Adorable fashion for little ones. Explore our playful kids' collection!</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="kid-item-carousel">
                        <div class="owl-kid-item owl-carousel">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/kid-01.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Cotton Plain Hoodie</h4>
                                    <span>LKR 2,200.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/kid-02.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Cotton Rich Joggers</h4>
                                    <span>LKR 4,500.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/kid-03.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Butterfly Zip Hoodie</h4>
                                    <span>LKR 2,500.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single_product.jsp"><i class="fa fa-shopping-cart"></i> Add Cart</a></li>
                                        </ul>
                                    </div>
                                    <img src="img/kid-04.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Winter Jackets</h4>
                                    <span>LKR 2,500.00</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Kids Area Ends ***** -->

    <!-- ***** Social Area Starts ***** -->
    <section class="section" id="social">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2>Say Hi to us on Instagram</h2>
                        <span>Connect with us on Instagram for the latest fashion trends!</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row images">
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>fabric in our lineup.?</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="img/instagram-01.jpg" alt="">
                    </div>
                </div>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>New</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="img/instagram-02.jpg" alt="">
                    </div>
                </div>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>Retail therapy at its finest!</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="img/instagram-03.jpg" alt="">
                    </div>
                </div>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>Downton Essentials Drop</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="img/instagram-04.jpg" alt="">
                    </div>
                </div>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>THE ELECTRA SET !!</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="img/instagram-05.jpg" alt="">
                    </div>
                </div>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>Shop The Phantom Collection.</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="img/instagram-06.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Social Area Ends ***** -->

    <!-- ***** Subscribe Area Starts ***** -->
    <div class="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="section-heading">
                        <h2>By Subscribing To Our Newsletter You Can Get 30% Off</h2>
                        <span>Subscribe for 30% Off: Join our newsletter for exclusive savings!</span>
                    </div>
                    <form id="subscribe" action="" method="get">
                        <div class="row">
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="name" type="text" id="name" placeholder="Your Name" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email Address" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-2">
                            <fieldset>
                              <button type="submit" id="form-submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>
                            </fieldset>
                          </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-6">
                            <ul>
                                <li>Store Location:<br><span>54/1, Lauries Road Colombo, Sri Lanka</span></li>
                                <li>Phone:<br><span>(011)2595973</span></li>
                                <li>Open Hours<br><span>07:30 AM - 9:30 PM</span></li>
                            </ul>
                        </div>
                        <div class="col-6">
                            <ul>
                                <li><br><span>Tripoli Market Road Maradana, Sri Lanka</span></li>
                                <li>Email:<br><span>eleganceeco@gmail.com</span></li>
                                <li>Social Media:<br><span><a href="#">Facebook</a>, <a href="#">Instagram</a></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Subscribe Area Ends ***** -->
    
    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="first-item">
                        <div class="logo">
                            <img src="img/white-logo.png" alt="hexashop ecommerce templatemo">
                        </div>
                        <ul>
                            <li><a href="#">54/1, Lauries Road Colombo, Sri Lanka</a></li>
                            <li><a href="#">Tripoli Market Road Maradana, Sri Lanka</a></li>
                            <li><a href="#">(011)2595973</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <h4>Shopping &amp; Categories</h4>
                    <ul>
                        <li><a href="#">Men?s Shopping</a></li>
                        <li><a href="#">Women?s Shopping</a></li>
                        <li><a href="#">Kid's Shopping</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><a href="#">Homepage</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Help &amp; Information</h4>
                    <ul>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">FAQ's</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Tracking ID</a></li>
                    </ul>
                </div>
                <div class="col-lg-12">
                    <div class="under-footer">
                        <p>NSBM GREEN UNIVERSITY</p>
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    

    <!-- jQuery -->
    <script src="js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="js/owl-carousel.js"></script>
    <script src="/js/accordions.js"></script>
    <script src="/js/datepicker.js"></script>
    <script src="js/scrollreveal.min.js"></script>
    <script src="/js/waypoints.min.js"></script>
    <script src="/js/jquery.counterup.min.js"></script>
    <script src="/js/imgfix.min.js"></script> 
    <script src="js/slick.js"></script> 
    <script src="/js/lightbox.js"></script> 
    <script src="js/isotope.js"></script>
    <script src="/js/homevideo.js"></script> 
    
    <!-- Global Init -->
    <script src="js/custom.js"></script>

    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

    </script>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="alert/dist/sweetalert.css">

        <%
            // Get the message from the request attribute
            String message = (String) request.getAttribute("message");
            if (message != null && !message.isEmpty()) {
        %>
        <script type="text/javascript">
            // Display SweetAlert for the message
            swal({
                //title: "Message",
                text: "<%= message%>",
                icon: "success"
            });
        </script>
        <%
            }
        %>
        
          <%
            // Get the message from the request attribute
            String message1 = (String) request.getAttribute("message1");
            if (message1 != null && !message1.isEmpty()) {
        %>
        <script type="text/javascript">
            // Display SweetAlert for the message
            swal({
                //title: "Message",
                text: "<%= message1%>",
                icon: "success"
            });
        </script>
        <%
            }
        %>
 


  </body>
</html>
