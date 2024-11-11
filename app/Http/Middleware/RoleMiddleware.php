<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     * @param  string  $role
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function handle(Request $request, Closure $next, $role): Response
    {
        if (!$request->user()) {
            return response()->json(['message' => 'Unauthorized.'], 401);
        }

        // If role is 'Admin', allow access
        if ($role === 'Admin' && $request->user()->role === 'Admin') {
            return $next($request);
        }

        // For other roles or custom logic, proceed to controller
        return $next($request);
    }
}

