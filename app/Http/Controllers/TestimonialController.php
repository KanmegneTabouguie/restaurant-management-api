<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreTestimonialRequest;
use App\Http\Requests\UpdateTestimonialRequest;
use App\Models\Testimonial;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class TestimonialController extends Controller
{
    /**
     * List all approved testimonials.
     * Accessible by Public and Admin.
     */
    public function index()
    {
        if (Auth::check() && Auth::user()->role === 'Admin') {
            $testimonials = Testimonial::with('user')->get();
        } else {
            $testimonials = Testimonial::with('user')->where('approved', true)->get();
        }

        return response()->json($testimonials, Response::HTTP_OK);
    }

    /**
     * Get testimonial details.
     * Accessible by Public (only approved) and Admin.
     */
    public function show($id)
    {
        $testimonial = Testimonial::with('user')->find($id);

        if (!$testimonial) {
            return response()->json(['message' => 'Testimonial not found.'], Response::HTTP_NOT_FOUND);
        }

        if ((!Auth::check() || Auth::user()->role !== 'Admin') && !$testimonial->approved) {
            return response()->json(['message' => 'Testimonial not available.'], Response::HTTP_FORBIDDEN);
        }

        return response()->json($testimonial, Response::HTTP_OK);
    }

    /**
     * Submit a new testimonial.
     * Accessible by Authenticated users (Customers).
     */
    public function store(StoreTestimonialRequest $request)
    {
        $validated = $request->validated();

        $testimonial = Testimonial::create([
            'user_id' => Auth::id(),
            'rating' => $validated['rating'],
            'comment' => $validated['comment'],
            'approved' => false, // Default to not approved
        ]);

        return response()->json($testimonial, Response::HTTP_CREATED);
    }

    /**
     * Approve or update a testimonial.
     * Accessible by Admin only.
     */
    public function update(UpdateTestimonialRequest $request, $id)
    {
        $testimonial = Testimonial::find($id);

        if (!$testimonial) {
            return response()->json(['message' => 'Testimonial not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('update', $testimonial);

        $validated = $request->validated();

        $testimonial->update([
            'rating' => $validated['rating'] ?? $testimonial->rating,
            'comment' => $validated['comment'] ?? $testimonial->comment,
            'approved' => $validated['approved'] ?? $testimonial->approved,
        ]);

        return response()->json($testimonial, Response::HTTP_OK);
    }

    /**
     * Delete a testimonial.
     * Accessible by Admin only.
     */
    public function destroy($id)
    {
        $testimonial = Testimonial::find($id);

        if (!$testimonial) {
            return response()->json(['message' => 'Testimonial not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('delete', $testimonial);

        $testimonial->delete();

        return response()->json(['message' => 'Testimonial deleted successfully.'], Response::HTTP_OK);
    }

    /**
     * List testimonials by a specific user.
     * Accessible by Admin or the user themselves.
     */
    public function testimonialsByUser($user_id)
    {
        $user = Auth::user();

        // Check if the authenticated user is Admin or the owner
        if ($user->role !== 'Admin' && $user->id != $user_id) {
            return response()->json(['message' => 'Forbidden.'], Response::HTTP_FORBIDDEN);
        }

        $testimonials = Testimonial::where('user_id', $user_id)->with('user')->get();

        return response()->json($testimonials, Response::HTTP_OK);
    }
}
