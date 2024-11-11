<?php

namespace App\Providers;
use App\Models\Analytics;
use App\Models\Testimonial;
use App\Models\Contact;
use App\Models\Notification;
use App\Models\Report;
use App\Models\Category;
use App\Models\User;
use App\Models\MenuItem;
use App\Models\Reservation;
use App\Policies\UserPolicy;
use App\Policies\CategoryPolicy;
use App\Policies\MenuItemPolicy;
use App\Policies\ReservationPolicy;
use App\Policies\TestimonialPolicy;
use App\Policies\ContactPolicy;
use App\Policies\AnalyticsPolicy;
use App\Policies\NotificationPolicy;
use App\Policies\ReportPolicy;
// use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        Reservation::class => ReservationPolicy::class,
        Category::class => CategoryPolicy::class,
        MenuItem::class => MenuItemPolicy::class,
        Contact::class => ContactPolicy::class,
        Testimonial::class => TestimonialPolicy::class,
        Analytics::class => AnalyticsPolicy::class,
        Notification::class => NotificationPolicy::class,
        Report::class => ReportPolicy::class,
        User::class => UserPolicy::class,
    ];

    /**
     * Register any authentication / authorization services.
     */
    public function boot(): void
    {
        $this->registerPolicies();
    }
}
