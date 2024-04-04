<?php

include 'components/connect.php';

session_start();

if (isset($_SESSION['user_id'])) {
   $user_id = $_SESSION['user_id'];
} else {
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>
   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <link rel="Shortcut Icon" type="image/png" href="images/logo.png">

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>

<body>

   <?php include 'components/user_header.php'; ?>

   <section class="about">

      <div class="row">

         <div class="image">
            <img src="images/CAEAE017-2E8E-41C0-AB62-07ED008FE060.PNG" style="max-width:300px;">
         </div>

         <div class="content">
            <h3>why choose us?</h3>
            <p>If you're looking for a delicious and convenient way to satisfy your sweet tooth, look no further than our premium baking store. Our shop is filled with a wide range of delectable treats, from freshly baked breads and pastries to custom cakes and desserts that are perfect for any occasion.

               What sets us apart from other bakeries is our commitment to quality and convenience. We use only the finest ingredients and traditional baking techniques to ensure that every bite is bursting with flavor and freshness. Plus, we offer fast and reliable delivery services to bring our goodies right to your doorstep.

               Come visit us today or place your order online for a hassle-free and mouthwatering treat!</p>
            <a href="contact.php" class="btn">contact us</a>
         </div>

      </div>

   </section>
  
   <section class="reviews">

      <h1 class="heading">client's reviews</h1>

      <div class="swiper reviews-slider">

         <div class="swiper-wrapper">

            <div class="swiper-slide slide">
               <img src="images/328067886_1111834792846072_7910907365017567839_n.jpg" >
               <p>Great bakery. Excellent selection of breads, pastries and cakes. If you love sweet treats, you need to visit.</p>
               <div class="stars">
                  <i class="fa fa-star checked"></i>
                  <i class="fa fa-star checked"></i>
                  <i class="fa fa-star checked"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
               </div>
               <h3>Mohammad Yassine</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/Screenshot 2023-04-27 214313.png" alt="">
               <p>Wow! Super cute place with amazing pastries. The staff was also super nice and welcoming. </p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Darine Chames</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/Screenshot 2023-04-27 214508.png" alt="">
               <p>The products are excellent, especially like the glazed donuts. Also the delivery is fast </p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Lorance Khalife</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/mss_maryam22.jpeg" alt="">
               <p>Just got back from Europe and missing fresh baked French bread and pastries? This is the place to go</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Maryam soboh</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/citations.jpg" alt="">
               <p>What a great bakery! One of my favorites. Amazing selection of baked goods, delicious coffee</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Hussein elghor</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/mss_madona.jpeg" alt="">
               <p>Nice website, especially liked the colors and the design</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Madona Zankar</h3>
            </div>

         </div>

         <div class="swiper-pagination"></div>

      </div>

   </section>









   <?php include 'components/footer.php'; ?>

   <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

   <script src="js/script.js"></script>

   <script>
      var swiper = new Swiper(".reviews-slider", {
         loop: true,
         spaceBetween: 20,
         pagination: {
            el: ".swiper-pagination",
            clickable: true,
         },
         breakpoints: {
            0: {
               slidesPerView: 1,
            },
            768: {
               slidesPerView: 2,
            },
            991: {
               slidesPerView: 3,
            },
         },
      });
   </script>

</body>

</html>