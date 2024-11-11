<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{

 /**
     * Get details of the authenticated user.
     */
    public function getAuthenticatedUser()
    {
        return response()->json(Auth::user(), Response::HTTP_OK);
    }

    /**
     * List all users (Admin-only).
     */
    public function index()
    {
        $this->authorize('viewAny', User::class);
        $users = User::all();
        return response()->json($users, Response::HTTP_OK);
    }

    /**
     * Get user details (Admin or Self).
     */
    public function show($id)
    {
        $user = User::findOrFail($id);
        $this->authorize('view', $user);
        return response()->json($user, Response::HTTP_OK);
    }

    /**
     * Update user information (Admin or Self).
     */
    public function update($id, Request $request)
    {
        $user = User::findOrFail($id);
        $this->authorize('update', $user);

        $validated = $request->validate([
            'first_name' => 'sometimes|string|max:50',
            'last_name'  => 'sometimes|string|max:50',
            'email'      => 'sometimes|email|max:255|unique:users,email,' . $user->id,
            'phone'      => 'sometimes|string|max:20',
            'password'   => 'sometimes|string|min:8|confirmed',
            'role'       => 'sometimes|string|in:Admin,Customer',
        ]);

        if (isset($validated['password'])) {
            $validated['password'] = Hash::make($validated['password']);
        }

        // Update user data
        $user->update($validated);

        return response()->json($user, Response::HTTP_OK);
    }

    /**
     * Delete a user (Admin-only).
     */
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $this->authorize('delete', $user);
        $user->delete();

        return response()->json(['message' => 'User deleted successfully.'], Response::HTTP_OK);
    }

    /**
     * List reservations by user (Admin or Self).
     */
    public function reservations($user_id)
    {
        $user = User::findOrFail($user_id);
        $this->authorize('viewReservations', $user);

        return response()->json($user->reservations, Response::HTTP_OK);
    }

    /**
     * List testimonials by user (Admin or Self).
     */
    public function testimonials($user_id)
    {
        $user = User::findOrFail($user_id);
        $this->authorize('viewTestimonials', $user);

        return response()->json($user->testimonials, Response::HTTP_OK);
    }
}
