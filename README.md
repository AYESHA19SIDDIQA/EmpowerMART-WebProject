EmpowerMART: Multi-Vendor E-Commerce Platform
EmpowerMART is a multi-vendor e-commerce platform developed to empower rural women entrepreneurs by providing them with a digital marketplace, skill-building resources, and mentorship opportunities. Built with Laravel 9 (backend) and React.js (frontend), the platform bridges the gap between rural businesses and global markets.

Features
User Roles
Admin: Manage categories, tags, and products.
Customer: Browse, shop, and place orders.
Core Functionality
Admin Dashboard:
Category Management: Create, edit, and delete categories.
Tag Management: Manage product tags.
Product Management: Upload, edit, and delete products with detailed specifications.
Customer Dashboard:
Shopping Features: Sort and filter products by price or popularity.
Order Management: Add to cart, checkout, and view order history.
Frontend Pages:
Home Page: Highlights featured categories and products.
Shop Page: Provides product filtering and sorting.
Categories Page: Organized view of products by category.
Tech Stack
Backend: Laravel 9
Frontend: React.js
Database: MySQL
Styling: Bootstrap
Version Control: GitHub
Installation and Setup
Prerequisites
PHP >= 8.1
Composer
Node.js and npm
MySQL
Steps
Clone the Repository:

bash
Copy code
git clone https://github.com/AYESHA19SIDDIQA/EmpowerMART-WebProject.git
cd EmpowerMART-WebProject
Install Backend Dependencies:

bash
Copy code
composer install
Install Frontend Dependencies:

bash
Copy code
npm install
Set Up Environment Variables:

Copy .env.example to .env:
bash
Copy code
cp .env.example .env
Configure database credentials in .env.
Generate Application Key:

bash
Copy code
php artisan key:generate
Run Migrations and Seed Data:

bash
Copy code
php artisan migrate:fresh --seed
Link Storage:

bash
Copy code
php artisan storage:link
Start the Development Server:

bash
Copy code
php artisan serve
Project Structure
Backend: Laravel 9 handles server-side logic, including authentication and database interactions.
Frontend: React.js delivers dynamic and interactive user interfaces.
Database: MySQL stores user, product, and order data.
Contribution Guidelines
Fork the repository.
Create a new branch:
bash
Copy code
git checkout -b feature-name
Commit your changes:
bash
Copy code
git commit -m "Add feature-name"
Push to the branch:
bash
Copy code
git push origin feature-name
Submit a pull request.
License
This project is licensed under the MIT License.

Contact
For any queries or collaboration requests, reach out to Ayesha Siddiqua.


2/2












