<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
      <script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="d2f99348-ef00-411c-a529-75b901934f30";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>AgroGarden</title>
        <link rel="icon" href="img/core-img/logo.png">
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
         <link rel="stylesheet" href="style.css">
        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
        <script src="jquery-2.1.4.min.js" type="text/javascript"></script>
    </head>
    <body>
    <!-- Preloader -->
  <div class="preloader d-flex align-items-center justify-content-center">
    <div class="spinner"></div>
  </div>
    

         <!-- ##### Header Area Start ##### -->
  <header class="header-area">
    <!-- Top Header Area -->
    <div class="top-header-area">
      
            <div class="top-header-content">
              <!-- Top Header Content -->
              <div style="text-align:left; padding-top: 15px;padding-left: 25px; color:green; font-weight: bolder;">
                Welcome to <span>AgroGarden</span>, we hope you will enjoy our products and have good experience
              <span style="margin-left: 270px;"></span>
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="agrogarden@gmail.com"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span>Email: agrogarden@gmail.com</span></a>
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="+91 9898787886"><i class="fa fa-phone" aria-hidden="true"></i> <span>Call Us: +91 923 300 9000</span></a>
              </div>
            </div>
          
    </div>
        <div class="flex-center position-ref full-height" style="background-image:url('./images/bg2.jpg');">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}" style="color:black;font-size:20px;">Home</a>
                    @else
                        <a href="{{ route('login') }}" style="color:black;font-size:20px;">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" style="color:black;font-size:20px;">Register</a>
                        @endif
                    @endauth
                </div>
            @endif

            <div class="content">
                <img src="img/core-img/logo.png" style="width:250px;height:250px;">
                <div class="title m-b-md" style="color:Black; font-weight:400;">
                    AgroGarden
                </div>
            </div>
        </div>


            <!-- Navbar Area -->
    <div class="famie-main-menu" >
      <div class="classy-nav-container breakpoint-off">
        <div class="container" >
        </div>
      </div>

    </div>  </header>

    <div class="hero-area" style="margin-top:9px">
    <div class="welcome-slides owl-carousel">

      <!-- Single Welcome Slides -->
      <div class="single-welcome-slides bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/1.jpg);">
        <div class="container h-100">
          <div class="row h-100 align-items-center">
            <div class="col-12 col-lg-10">
              <div class="welcome-content">
                <h2 data-animation="fadeInUp" data-delay="200ms">Adding Green to your Life</h2>
                <p data-animation="fadeInUp" data-delay="400ms"></p>
                
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Single Welcome Slides -->
      <div class="single-welcome-slides bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/7.jpg);">
        <div class="container h-100">
          <div class="row h-100 align-items-center">
            <div class="col-12 col-lg-10">
              <div class="welcome-content">
                <h2 data-animation="fadeInDown" data-delay="200ms">Cultivating Ideas for Growth</h2>
                <p data-animation="fadeInDown" data-delay="400ms">Always at you service...</p>
                
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
  <!-- ##### Hero Area End ##### -->

  <!-- ##### About Us Area Start ##### -->
  <section class="about-us-area">
    <div class="container">
      <div class="row align-items-center">

        <!-- About Us Content -->
        <div class="col-12 col-md-8">
          <div class="about-us-content mb-100">
            <!-- Section Heading -->
            <div class="section-heading">
              <p>About us</p>
              <h2><span>Let Us</span> Tell You Our Story</h2>
              <img src="img/core-img/decor.png" alt="">
            </div>
            <p><b><i>AgroGarden</i></b> is a helping hand to all the farmers in India. <b>IT'S TIME TO SUPPORT OUR FARMERS</b>
                <br/>The Farmer is a Solider who fight all kinds of weather conditions to keep us fed.But the Farmer of today is being neglected in our society. So, here in AgroGarDen we feel responsible to help our farmers with their work to get a deserved price and earn a regular living. We want to Create a Responsive Team for Building a Society who Cares For our Farmers. We are determined to Help Farmers in Possible ways for Making their life better and becoming their voice.</p>
          </div>
        </div>

        <!-- Famie Video Play -->
        <div class="col-12 col-md-4">
            <img src="img/bg-img/6.jpg" alt="">
            <!-- Play Icon -->
            <a href="http://www.youtube.com/watch?v=7HKoqNJtMTQ" class="play-icon"><i class="fa fa-play"></i></a>
        </div>

      </div>
    </div>
  </section>
  <!-- ##### About Us Area End ##### -->

  <!-- ##### Services Area Start ##### -->
  <section class="services-area d-flex flex-wrap">
    <!-- Service Thumbnail -->
    <div class="services-thumbnail bg-img jarallax" style="background-image: url('img/bg-img/7.jpg');"></div>

    <!-- Service Content -->
    <div class="services-content section-padding-100-50 px-5">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Section Heading -->
            <div class="section-heading">
              <p>What we do</p>
              <h2><span>Our Produce</span> Is Mainstay For Us</h2>
              <img src="img/core-img/decor.png" alt="">
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-12 mb-50">
            <p></p>
          </div>

          <!-- Single Service Area -->
           <!-- Single Service Area -->
          <div class="col-20 col-lg-16">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="100ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-center">
                <img src="img/core-img/s1.png" alt="">
                <h5>Fruit &amp; Vegetable</h5>
              </div>
              <p>According to data from the Agriculture Ministry, horticulture crops first outpaced food variants six years ago. Since then, horticulture output has been mostly widening its margin with food production, with profound impact on farm incomes, water utilisation, land usage and employment patterns. Farm-related policies also need to keep up with the shift. Horticulture gives farmers a higher income, but there is little protection against a glut. </p>
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>
  <!-- ##### Services Area End ##### -->
 <!-- ##### Our Products Area Start ##### -->
  <section class="our-products-area section-padding-100">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <!-- Section Heading -->
          <div class="section-heading text-center">
            <p>Featured Products</p>
            <h2><span>Our Product</span> Are Highest Quality</h2>
            <img src="img/core-img/decor2.png" alt="">
          </div>
        </div>
      </div>

      <div class="row">

        <!-- Single Product Area -->
        <div class="col-12 col-sm-6 col-lg-3">
          <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="100ms">
            <!-- Product Thumbnail -->
            <div class="product-thumbnail">
              <img src="img/bg-img/p10.jpg" alt="">
            </div>
            <!-- Product Description -->
            <div class="product-desc text-center pt-4">
              <a href="#" class="product-title">Carrots</a>
              
            </div>
          </div>
        </div>

        <!-- Single Product Area -->
        <div class="col-12 col-sm-6 col-lg-3">
          <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="300ms">
            <!-- Product Thumbnail -->
            <div class="product-thumbnail">
              <img src="img/bg-img/p1.jpg" alt="">
              
            </div>
            <!-- Product Description -->
            <div class="product-desc text-center pt-4">
              <a href="#" class="product-title">Strawberries</a>
              
            </div>
          </div>
        </div>

        <!-- Single Product Area -->
        <div class="col-12 col-sm-6 col-lg-3">
          <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="500ms">
            <!-- Product Thumbnail -->
            <div class="product-thumbnail">
              <img src="img/bg-img/p5.jpg" alt="">
              
            </div>
            <!-- Product Description -->
            <div class="product-desc text-center pt-4">
              <a href="#" class="product-title">Tomato</a>
             
            </div>
          </div>
        </div>

        <!-- Single Product Area -->
        <div class="col-12 col-sm-6 col-lg-3">
          <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="700ms">
            <!-- Product Thumbnail -->
            <div class="product-thumbnail">
              <img src="img/bg-img/p9.jpg" alt="">
              
            </div>
          
            <!-- Product Description -->
          <div class="product-desc text-center pt-4">
              <a href="#" class="product-title">Banana</a>
              
            </div>
          </div>
        </div>

      </div>

     
    </div>
  </section>
 
<section class="newsletter-area section-padding-100 bg-img bg-overlay jarallax" style="background-image: url('img/bg-img/8.jpg');">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12 col-lg-10">
          <div class="newsletter-content">
            <!-- Section Heading -->
            <div class="section-heading white text-center">
              <p>What we do</p>
              <h2><span>Our Produce</span> Is Mainstay For Us</h2>
              <img src="img/core-img/decor2.png" alt="">
            </div>
            <p class="text-white mb-50 text-center"></p>
          </div>
        </div>
      </div>
      <!-- Newsletter Form -->
      <div class="row justify-content-center">
        <div class="col-12 col-lg-6">
          
        </div>
      </div>
    </div>
  </section>

  <!-- ##### Contact Area Start ##### -->
  <section class="contact-area section-padding-100-0">
    <div class="container">
      <div class="row justify-content-between">

        <!-- Contact Content -->
        <div class="col-12 col-lg-5">
          <div class="contact-content mb-100">
            <!-- Section Heading -->
            <div class="section-heading">
              <p>Contact now</p>
              <h2><span>Get In Touch</span> With Us</h2>
              <img src="img/core-img/decor.png" alt="">
            </div>
            <!-- Contact Form Area -->
            <div class="contact-form-area">
              <form action="index.html" method="post">
                <div class="row">
                  <div class="col-lg-6">
                    <input type="text" class="form-control" name="name" placeholder="Your Name">
                  </div>
                  <div class="col-lg-6">
                    <input type="email" class="form-control" name="email" placeholder="Your Email">
                  </div>
                  <div class="col-12">
                    <input type="text" class="form-control" name="subject" placeholder="Your Subject">
                  </div>
                  <div class="col-12">
                    <textarea name="message" class="form-control" cols="30" rows="10" placeholder="Your Message"></textarea>
                  </div>
                  <div class="col-12">
                    <button type="submit" class="btn famie-btn">Send Message</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <!-- Contact Maps -->
        <div class="col-lg-6">
          <div class="contact-maps mb-100">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28313.28917392649!2d-88.2740948914384!3d41.76219337461615!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880efa1199df6109%3A0x8a1293b2ae8e0497!2sE+Lucknow+St%2C+Aurora%2C+IL%2C+USA!5e0!3m2!1sen!2sbd!4v1542893000723"
              allowfullscreen></iframe>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ##### Contact Area End ##### -->

  

  <!-- ##### Footer Area Start ##### -->
  <footer class="footer-area">
    <!-- Main Footer Area -->
    <div class="main-footer bg-img bg-overlay section-padding-80-0" style="background-image: url(img/bg-img/3.jpg);">
      <div class="container">
        <div class="row">

          <!-- Single Footer Widget Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="footer-widget mb-80">
              <a href="#" class="foo-logo d-block mb-30"><img src="img/core-img/logo.png" alt=""></a>
              <p>We love to serve you good services..</p>
              <div class="contact-info">
                <p><i class="fa fa-map-pin" aria-hidden="true"></i><span>CSED Department,MNNIT Allahabad</span></p>
                <p><i class="fa fa-envelope" aria-hidden="true"></i><span>info.agrogarden@gmail.com</span></p>
                <p><i class="fa fa-phone" aria-hidden="true"></i><span>+923 700 9000</span></p>
              </div>
            </div>
          </div>
    </div>

    <!-- Copywrite Area  -->
    <div class="copywrite-area">
      <div class="container">
        <div class="copywrite-text">
          <div class="row align-items-center">
            <div class="col-md-6">
              <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved </script>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
            </div>
            
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- ##### Footer Area End ##### -->

  <!-- ##### All Javascript Files ##### -->
  <!-- jquery 2.2.4  -->
  <script src="./js/jquery.min.js"></script>
  <!-- Popper js -->
  <script src="./js/popper.min.js"></script>
  <!-- Bootstrap js -->
  <script src="./js/bootstrap.min.js"></script>
  <!-- Owl Carousel js -->
  <script src="./js/owl.carousel.min.js"></script>
  <!-- Classynav -->
  <script src="./js/classynav.js"></script>
  <!-- Wow js -->
  <script src="./js/wow.min.js"></script>
  <!-- Sticky js -->
  <script src="./js/jquery.sticky.js"></script>
  <!-- Magnific Popup js -->
  <script src="./js/jquery.magnific-popup.min.js"></script>
  <!-- Scrollup js -->
  <script src="./js/jquery.scrollup.min.js"></script>
  <!-- Jarallax js -->
  <script src="./js/jarallax.min.js"></script>
  <!-- Jarallax Video js -->
  <script src="./js/jarallax-video.min.js"></script>
  <!-- Active js -->
  <script src="./js/active.js"></script>
</body>

</html>