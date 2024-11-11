<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\LogoutController;
use App\Http\Controllers\Auth\PasswordResetController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ReservationController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\MenuItemController;
use App\Http\Controllers\TestimonialController;
use App\Http\Controllers\AnalyticsController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\ReportController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Define all API routes for your application here.
| Routes are loaded by the RouteServiceProvider and assigned to the "api" middleware group.
|
*/

/*
|--------------------------------------------------------------------------
| 1. Authentication Routes
|--------------------------------------------------------------------------
|
| Routes for user registration, login, logout, and password reset.
| Publicly accessible routes, except for logout, which requires authentication.
|
*/
Route::post('/register', [RegisterController::class, 'register']);
Route::post('/login', [LoginController::class, 'login']);
Route::post('/password/email', [PasswordResetController::class, 'sendResetLinkEmail']);
Route::post('/password/reset', [PasswordResetController::class, 'reset']);
Route::get('/password/reset/{token}', [PasswordResetController::class, 'showResetForm'])->name('password.reset');

/*
|--------------------------------------------------------------------------
| 2. Public Access Routes
|--------------------------------------------------------------------------
|
| Routes accessible by both authenticated and unauthenticated users
| for viewing categories, menu items, and approved testimonials.
|
*/
Route::prefix('public')->group(function () {
    Route::get('/categories', [CategoryController::class, 'index']);
    Route::get('/categories/{id}', [CategoryController::class, 'show']);
    Route::get('/menu-items', [MenuItemController::class, 'index']);
    Route::get('/menu-items/{id}', [MenuItemController::class, 'show']);
    Route::get('/testimonials', [TestimonialController::class, 'index']);
    Route::get('/testimonials/{id}', [TestimonialController::class, 'show']);
});

/*
|--------------------------------------------------------------------------
| 3. Protected Routes (Authenticated Users)
|--------------------------------------------------------------------------
|
| Routes that require user authentication, grouped by roles for better access control.
|
*/
Route::middleware('auth:sanctum')->group(function () {

    /*
    |--------------------------------------------------------------------------
    | 3.1. Common User Routes
    |--------------------------------------------------------------------------
    |
    | Routes accessible by any authenticated user, including logout and retrieving
    | user details.
    |
    */
    Route::post('/logout', [LogoutController::class, 'logout']);
    Route::get('/user', [UserController::class, 'getAuthenticatedUser']); // Get authenticated user details

    /*
    |--------------------------------------------------------------------------
    | 3.2. Admin-Only Routes
    |--------------------------------------------------------------------------
    |
    | Routes accessible only by users with the 'Admin' role, including management
    | of users, categories, menu items, contacts, testimonials, analytics, and notifications.
    |
    */
    Route::middleware('role:Admin')->group(function () {

        // User Management
        Route::prefix('users')->group(function () {
            Route::get('/', [UserController::class, 'index']);
            Route::get('/{id}', [UserController::class, 'show']);
            Route::put('/{id}', [UserController::class, 'update']);
            Route::patch('/{id}', [UserController::class, 'update']);
            Route::delete('/{id}', [UserController::class, 'destroy']);
        });

        // Category Management
        Route::prefix('categories')->group(function () {
            Route::post('/', [CategoryController::class, 'store']);
            Route::put('/{id}', [CategoryController::class, 'update']);
            Route::patch('/{id}', [CategoryController::class, 'update']);
            Route::delete('/{id}', [CategoryController::class, 'destroy']);
        });

        // Menu Item Management
        Route::prefix('menu-items')->group(function () {
            Route::post('/', [MenuItemController::class, 'store']);
            Route::put('/{id}', [MenuItemController::class, 'update']);
            Route::patch('/{id}', [MenuItemController::class, 'update']);
            Route::delete('/{id}', [MenuItemController::class, 'destroy']);
        });

        // Contact Management
        Route::prefix('contacts')->group(function () {
            Route::get('/', [ContactController::class, 'index']);
            Route::get('/{id}', [ContactController::class, 'show']);
            Route::delete('/{id}', [ContactController::class, 'destroy']);
        });

        // Testimonial Management
        Route::prefix('testimonials')->group(function () {
            Route::put('/{id}', [TestimonialController::class, 'update']);
            Route::patch('/{id}', [TestimonialController::class, 'update']);
            Route::delete('/{id}', [TestimonialController::class, 'destroy']);
        });

        // Analytics Management
        Route::prefix('analytics')->group(function () {
            Route::get('/', [AnalyticsController::class, 'overview']);
            Route::get('/daily', [AnalyticsController::class, 'daily']);
            Route::get('/weekly', [AnalyticsController::class, 'weekly']);
            Route::get('/monthly', [AnalyticsController::class, 'monthly']);
            Route::get('/user/{id}', [AnalyticsController::class, 'userAnalytics']);
            Route::get('/page/{page}', [AnalyticsController::class, 'pageAnalytics']);
        });

        // Notification Management
        Route::prefix('notifications')->group(function () {
            Route::get('/', [NotificationController::class, 'index']);
            Route::get('/{id}', [NotificationController::class, 'show']);
            Route::post('/', [NotificationController::class, 'store']);
            Route::delete('/{id}', [NotificationController::class, 'destroy']);
        });

        // Report Management
        Route::prefix('reports')->group(function () {
            Route::get('/', [ReportController::class, 'index']);
            Route::get('/{id}', [ReportController::class, 'show']);
            Route::post('/', [ReportController::class, 'store']);
            Route::delete('/{id}', [ReportController::class, 'destroy']);
        });

        // Reservation Management (Admin Only)
        Route::get('/reservations', [ReservationController::class, 'index']);
    });

    /*
    |--------------------------------------------------------------------------
    | 3.3. Reservation Routes
    |--------------------------------------------------------------------------
    |
    | Routes for managing reservations, accessible to both Admins and reservation owners.
    |
    */
    Route::prefix('reservations')->group(function () {
        Route::get('/{id}', [ReservationController::class, 'show']);
        Route::post('/', [ReservationController::class, 'store']);
        Route::put('/{id}', [ReservationController::class, 'update']);
        Route::patch('/{id}', [ReservationController::class, 'update']);
        Route::delete('/{id}', [ReservationController::class, 'destroy']);
    });

    /*
    |--------------------------------------------------------------------------
    | 3.4. User-Specific Routes
    |--------------------------------------------------------------------------
    |
    | Routes that allow users to manage their own testimonials.
    | Access is controlled to ensure users can only manage their own data,
    | or Admins can manage any user's data.
    |
    */
    Route::get('/users/{user_id}/testimonials', [TestimonialController::class, 'testimonialsByUser'])
        ->middleware('can:manage,user');
});

/*
|--------------------------------------------------------------------------
| 4. Testimonial Submission Route (Authenticated Customers)
|--------------------------------------------------------------------------
|
| Route for authenticated users to submit testimonials.
|
*/
Route::middleware('auth:sanctum')->post('/testimonials', [TestimonialController::class, 'store']);

/*
|--------------------------------------------------------------------------
| Additional Notes
|--------------------------------------------------------------------------
|
| - Authorization Policies should be properly implemented within controllers
|   to handle access control based on user roles.
| - Avoid duplicating routes across different middleware groups.
| - Maintain consistent naming conventions for route parameters.
| - Regularly clear and cache routes using Artisan commands during development.
|
*/
