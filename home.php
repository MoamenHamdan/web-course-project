<?php

include 'components/connect.php';

session_start();

if (isset($_SESSION['user_id'])) {
   $user_id = $_SESSION['user_id'];
} else {
   $user_id = '';
};

include 'components/wishlist_cart.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="Shortcut Icon" type="image/png" href="images/logo.png">
   <title>home</title>
   <!-- 
   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" /> -->

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/style1.css">

</head>

<body>

   <?php include 'components/user_header.php'; ?>
   <section class="slideshow">

      <div class="slideshow-container">

         <div class="mySlides fade">
            <img src="images/master_cookie_dough_22386_16x9.jpg" id="slideshowimg" style="width:100% ; height:550px">
         </div>

         <div class="mySlides fade">
            <img src="images/download.jpg" id="slideshowimg" style="width:100%;height:550px">
         </div>

         <div class="mySlides fade">
            <img src="images/l-intro-1649870743.jpg" id="slideshowimg" style="width:100%;height:550px">
         </div>

      </div>
      <br>

      <div style="text-align:center">
         <span class="dot"></span>
         <span class="dot"></span>
         <span class="dot"></span>
      </div>
   </section>


   <section class="offers">



      <div class="home-bg">

         <section class="home">
      
            <div class="swiper home-slider">

               <div class="swiper-wrapper">

                  <div class="swiper-slide slide">
                     <div class="image">
                        <img src="images/211a89c89ca5104867e9d595e37c8cd3 (1).jpg" style="border-radius: 50px;">
                     </div>
                     <div class="content">

                        <h3>Tarts</h3>
                        <span>Get 50% off your first purchase. Shop now to start saving!</span>

                        <br> <br> <br>

                        <a href="shop.php" class="btn">shop now</a>
                     </div>
                  </div>

                  <div class="swiper-slide slide">
                     <div class="image" style="border-radius: 50px;">
                        <img src="images/rq25FK4ITqG5o7c4OK2G_JUNIOR'S_FAMOUS_CHEESECAKE_085.webp">
                     </div>
                     <div class="content">

                        <h3> Cheesecakes </h3>
                        <span>30% OFF!! Buy a family size cheesecake for 9$ only</span>

                        <br> <br> <br>

                        <a href="shop.php" class="btn">shop now</a>
                     </div>
                  </div>
                  <div class="swiper-slide slide">
                     <div class="image" style="border-radius: 50px;">
                        <img src="images/1.jpg">
                     </div>
                     <div class="content">

                        <h3> Eclaire </h3>
                        <span>Buy two and get one for free!</span>

                        <br> <br> <br>

                        <a href="shop.php" class="btn">shop now</a>
                     </div>
                  </div>

                  <div class="swiper-pagination"></div>

               </div>

         </section>

      </div>
   </section>


   <section class="category">

      <h1 class="heading">shop by category</h1>

      <div class="swiper category-slider">

         <div class="swiper-wrapper">

            <a href="category.php?category=bread" class="swiper-slide slide">
               <img src="images/9dc13c912ae476ea207d122e7b885aea.jpg" alt="">
               <h3>Breads</h3>
            </a>

            <a href="category.php?category=cookies" class="swiper-slide slide">
               <img src="images/1bc0f003e1c03e1d1e33c036aeea8125.jpg" alt="">
               <h3>Cookies</h3>
            </a>

            <a href="category.php?category=croissant" class="swiper-slide slide">
               <img src="images/b954222a4890896676a9fcc70c20f2f5.jpg" alt="">
               <h3>Croissant</h3>
            </a>

            <a href="category.php?category=donuts" class="swiper-slide slide">
               <img src="images/e0544c2485237c140710f0c3bd28f6b0.jpg" alt="">
               <h3>Donuts</h3>
            </a>

            <a href="category.php?category=cheesecake" class="swiper-slide slide">
               <img src="images/6fe1c5185ac0cb278416a3c6ad36fb3c.jpg" alt="">
               <h3>cheesecake</h3>
            </a>

            <a href="category.php?category=tart" class="swiper-slide slide">
               <img src="images/211a89c89ca5104867e9d595e37c8cd3 (1).jpg" alt="">
               <h3>Tarts</h3>
            </a>

            <a href="category.php?category=cake" class="swiper-slide slide">
               <img src="images/8ac0cbe86ac78ae0c0b64240ba572df34.jpg" alt="">
               <h3>Cakes</h3>
            </a>

            <a href="category.php?category=eclair" class="swiper-slide slide">
               <img src="images/Choux-Pastry.jpg" alt="">
               <h3>Choux pastry</h3>
            </a>

         </div>

         <div class="swiper-pagination"></div>

      </div>


   </section>

   <section class="home-products">

      <h1 class="heading">latest products</h1>

      <div class="swiper products-slider">

         <div class="swiper-wrapper">

            <?php
            $select_products = $conn->prepare("SELECT * FROM `products` LIMIT 6");
            $select_products->execute();
            if ($select_products->rowCount() > 0) {
               while ($fetch_product = $select_products->fetch(PDO::FETCH_ASSOC)) {
            ?>
                  <form action="" method="post" class="swiper-slide slide">
                     <input type="hidden" name="pid" value="<?= $fetch_product['id']; ?>">
                     <input type="hidden" name="name" value="<?= $fetch_product['name']; ?>">
                     <input type="hidden" name="price" value="<?= $fetch_product['price']; ?>">
                     <input type="hidden" name="image" value="<?= $fetch_product['image_01']; ?>">
                     <button class="fas fa-heart" type="submit" name="add_to_wishlist"></button>
                     <a href="quick_view.php?pid=<?= $fetch_product['id']; ?>" class="fas fa-eye"></a>
                     <img src="uploaded_img/<?= $fetch_product['image_01']; ?>" alt="">
                     <div class="name"><?= $fetch_product['name']; ?></div>
                     <div class="flex">
                        <div class="price"><span>$</span><?= $fetch_product['price']; ?></div>
                        <input type="number" name="qty" class="qty" min="1" max="99" onkeypress="if(this.value.length == 2) return false;" value="1">
                     </div>
                     <input type="submit" value="add to cart" class="btn" name="add_to_cart">
                  </form>
            <?php
               }
            } else {
               echo '<p class="empty">no products added yet!</p>';
            }
            ?>

         </div>

         <div class="swiper-pagination"></div>

      </div>

   </section>


   <?php include 'components/footer.php'; ?>

   <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

   <script src="js/script.js"></script>

</body>

</html>