# **Restaurant Management API**

## **Description**

The **Restaurant Management API** is a comprehensive backend solution designed to streamline the operations of a modern restaurant. Built with Laravel, this API facilitates user authentication, menu management, reservation handling, testimonial submissions, analytics tracking, and more. It serves as the backbone for restaurant applications, enabling seamless interaction between the frontend and the core functionalities required to manage restaurant operations efficiently.

**Key Features:**

- **User Authentication:** Secure registration, login, logout, and password reset functionalities.
- **Menu Management:** Create, read, update, and delete categories and menu items.
- **Reservation System:** Manage reservations with roles-based access for admins and reservation owners.
- **Testimonials:** Allow authenticated users to submit testimonials and enable admins to manage them.
- **Analytics:** Provide insights with daily, weekly, monthly, user-specific, and page-specific analytics.
- **Notifications & Reports:** Manage notifications and generate reports for various aspects of the restaurant operations.
- **Contact Management:** Handle customer inquiries efficiently.

## **Table of Contents**

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)


## **Installation**

### **Prerequisites**

Ensure you have the following software installed on your system:

- **PHP**: Version 8.0 or higher
- **Composer**: Dependency management tool for PHP
- **MySQL**: Database management system
- **Laravel**: PHP framework (installed via Composer)
- **Git**: Version control system

### **Steps to Install**

1. **Clone the Repository**

   ```bash
   git clone https://github.com/KanmegneTabouguie/restaurant-management-api.git
   ```

2. **Navigate to the Project Directory**

   ```bash
   cd restaurant-management-api
   ```

3. **Install Dependencies**

   ```bash
   composer install
   ```

4. **Setup Environment Variables**

   - Copy the example environment file and modify it according to your setup:

     ```bash
     cp .env.example .env
     ```

   - Open the `.env` file and set the necessary variables:

     ```env
     APP_NAME=RestaurantManagementAPI
     APP_ENV=local
     APP_KEY=base64:YOUR_APP_KEY
     APP_DEBUG=true
     APP_URL=http://localhost

     DB_CONNECTION=mysql
     DB_HOST=127.0.0.1
     DB_PORT=3306
     DB_DATABASE=your_database
     DB_USERNAME=your_username
     DB_PASSWORD=your_password

     # Add other necessary environment variables
     ```

5. **Generate Application Key**

   ```bash
   php artisan key:generate
   ```

6. **Run Migrations**

   ```bash
   php artisan migrate
   ```

7. **Seed the Database (Optional)**

   ```bash
   php artisan db:seed
   ```

8. **Serve the Application**

   ```bash
   php artisan serve
   ```

   The API will be accessible at `http://localhost:8000`.

### **Additional Setup**

- **Caching Routes**

  During development, it's beneficial to clear and cache routes to optimize performance.

  ```bash
  php artisan route:cache
  php artisan route:clear
  ```

- **Setting Up Sanctum for API Authentication**

  Ensure Laravel Sanctum is properly configured for managing API tokens.

## **Usage**

### **Start the Application**

After completing the installation steps, start the Laravel development server:

```bash
php artisan serve
```

### **Common Commands**

- **Running Tests**

  ```bash
  php artisan test
  ```

- **Building Frontend Assets** (if applicable)

  ```bash
  npm install
  npm run dev
  ```

### **Interacting with the API**

- **Base URL:** `http://localhost:8000/api`

- **Authentication Endpoints:**
  - `POST /api/register`: Register a new user.
  - `POST /api/login`: Login and obtain an authentication token.
  - `POST /api/logout`: Logout the authenticated user.
  - `POST /api/password/email`: Send a password reset link.
  - `POST /api/password/reset`: Reset the password using the token.

- **Public Endpoints:**
  - `GET /api/public/categories`: Retrieve all categories.
  - `GET /api/public/categories/{id}`: Retrieve a specific category.
  - `GET /api/public/menu-items`: Retrieve all menu items.
  - `GET /api/public/menu-items/{id}`: Retrieve a specific menu item.
  - `GET /api/public/testimonials`: Retrieve all approved testimonials.
  - `GET /api/public/testimonials/{id}`: Retrieve a specific testimonial.

- **Protected Endpoints:**
  - **User Management, Category Management, Menu Item Management, etc.** Accessible based on user roles.

### **Example Request**

```bash
curl -X POST http://localhost:8000/api/login \
     -H "Content-Type: application/json" \
     -d '{"email":"user@example.com", "password":"securepassword"}'
```

## **Features**

- **User Authentication & Authorization**
  - Secure registration and login processes.
  - Role-based access control (Admin, User).

- **Menu & Category Management**
  - CRUD operations for categories and menu items.
  - Organize menu items into various categories.

- **Reservation System**
  - Create, update, and manage reservations.
  - Admin and reservation owner access control.

- **Testimonials**
  - Submit and manage customer testimonials.
  - Admin approval and management.

- **Analytics**
  - Comprehensive analytics dashboard.
  - Daily, weekly, monthly, user-specific, and page-specific analytics.

- **Notifications & Reports**
  - Manage system notifications.
  - Generate and manage reports.

- **Contact Management**
  - Handle customer inquiries effectively.

## **Technologies Used**

- **Backend**: PHP, Laravel Framework
- **Authentication**: Laravel Sanctum
- **Database**: MySQL
- **API Documentation**: (Optional) Swagger/OpenAPI
- **Deployment**: Docker, AWS (if applicable)
- **Version Control**: Git, GitHub

## **Contributing**

Contributions are welcome! To contribute to the **Restaurant Management API**, please follow these steps:

1. **Fork the Repository**

   Click the "Fork" button at the top-right corner of the repository page.

2. **Clone Your Fork**

   ```bash
   git clone https://github.com/yourusername/restaurant-management-api.git
   ```

3. **Create a New Branch**

   ```bash
   git checkout -b feature-name
   ```

4. **Commit Your Changes**

   ```bash
   git commit -am 'Add new feature'
   ```

5. **Push to Your Branch**

   ```bash
   git push origin feature-name
   ```

6. **Open a Pull Request**

   Navigate to the original repository and click "New Pull Request."



