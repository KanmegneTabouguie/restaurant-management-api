<?php

namespace App\Http\Controllers;

use App\Models\Analytics;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class AnalyticsController extends Controller
{
    /**
     * Get analytics overview.
     * Accessible by Admin only.
     */
    public function overview()
    {
        $this->authorize('viewAny', Analytics::class);

        // Example: Summarized data such as total reservations, total users, etc.
        $overview = [
            'total_reservations' => DB::table('reservations')->count(),
            'total_users' => DB::table('users')->count(),
            'total_menu_items' => DB::table('menu_items')->count(),
            'total_testimonials' => DB::table('testimonials')->count(),
            'total_contacts' => DB::table('contacts')->count(),
        ];

        return response()->json($overview, Response::HTTP_OK);
    }

    /**
     * Get daily analytics.
     * Accessible by Admin only.
     */
    public function daily()
    {
        $this->authorize('viewAny', Analytics::class);

        // Example: Number of reservations per day
        $dailyReservations = Analytics::select(DB::raw('DATE(timestamp) as date'), DB::raw('count(*) as count'))
            ->where('action', 'reservation_created')
            ->groupBy('date')
            ->get();

        return response()->json($dailyReservations, Response::HTTP_OK);
    }

    /**
     * Get weekly analytics.
     * Accessible by Admin only.
     */
    public function weekly()
    {
        $this->authorize('viewAny', Analytics::class);

        // Example: Number of reservations per week
        $weeklyReservations = Analytics::select(DB::raw('YEARWEEK(timestamp, 1) as week'), DB::raw('count(*) as count'))
            ->where('action', 'reservation_created')
            ->groupBy('week')
            ->get();

        return response()->json($weeklyReservations, Response::HTTP_OK);
    }

    /**
     * Get monthly analytics.
     * Accessible by Admin only.
     */
    public function monthly()
    {
        $this->authorize('viewAny', Analytics::class);

        // Example: Number of reservations per month
        $monthlyReservations = Analytics::select(DB::raw('YEAR(timestamp) as year'), DB::raw('MONTH(timestamp) as month'), DB::raw('count(*) as count'))
            ->where('action', 'reservation_created')
            ->groupBy('year', 'month')
            ->get();

        return response()->json($monthlyReservations, Response::HTTP_OK);
    }

    /**
     * Get user-specific analytics.
     * Accessible by Admin only.
     */
    public function userAnalytics($id)
    {
        $this->authorize('view', Analytics::class);

        $userAnalytics = Analytics::where('user_id', $id)->get();

        return response()->json($userAnalytics, Response::HTTP_OK);
    }

    /**
     * Get page-specific analytics.
     * Accessible by Admin only.
     */
    public function pageAnalytics($page)
    {
        $this->authorize('view', Analytics::class);

        $pageAnalytics = Analytics::where('page', $page)->get();

        return response()->json($pageAnalytics, Response::HTTP_OK);
    }
}
