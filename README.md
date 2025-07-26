# Web Course Project

## Overview
This is an e-commerce website built with PHP, HTML, CSS, and JavaScript. Users can browse products, add items to their cart, save favorites, and place orders. Admins can manage products, orders, and users via a dashboard.

## Features
- User registration and login
- Product browsing and search
- Shopping cart and wishlist
- Order placement and checkout
- Admin dashboard for managing products, orders, and users

## Requirements
- PHP 7.4+
- MySQL/MariaDB
- Web server (Apache recommended)

## Setup Instructions
1. **Clone the repository:**
   ```
   git clone https://github.com/MoamenHamdan/web-course-project.git
   ```
2. **Import the database:**
   - Create a MySQL database (e.g., `bakentake`).
   - Import `bakentake.sql` using phpMyAdmin or MySQL CLI:
     ```
     mysql -u youruser -p yourdb < bakentake.sql
     ```
3. **Configure database connection:**
   - Edit `components/connect.php` with your database credentials.

4. **Host the project:**
   - Place the project folder in your web server's root directory (e.g., `htdocs` for XAMPP).
   - Start Apache and MySQL.
   - Access the site via `http://localhost/web-course-project/`.

## Hosting on a Live Server
- Use a PHP-compatible hosting provider (e.g., Hostinger, Bluehost).
- Upload all files and folders.
- Import the database.
- Update `components/connect.php` with your live database credentials.

## Security Notes
- Change default credentials.
- Use HTTPS for production.
- Ensure file permissions are secure.

## License
This project is for educational purposes.
