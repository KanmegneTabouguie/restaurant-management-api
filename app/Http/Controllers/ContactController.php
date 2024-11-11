<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreContactRequest;
use App\Http\Requests\UpdateContactRequest;
use App\Models\Contact;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class ContactController extends Controller
{
    /**
     * List all contact messages.
     * Accessible by Admin only.
     */
    public function index()
    {
        $this->authorize('viewAny', Contact::class);

        $contacts = Contact::all();

        return response()->json($contacts, Response::HTTP_OK);
    }

    /**
     * Get contact message details.
     * Accessible by Admin only.
     */
    public function show($id)
    {
        $contact = Contact::find($id);

        if (!$contact) {
            return response()->json(['message' => 'Contact message not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('view', $contact);

        return response()->json($contact, Response::HTTP_OK);
    }

    /**
     * Submit a new contact message.
     * Accessible by Public (Unauthenticated users can submit).
     */
    public function store(StoreContactRequest $request)
    {
        $validated = $request->validated();

        $contact = Contact::create($validated);

        // Optionally, trigger email notifications or other actions here.

        return response()->json($contact, Response::HTTP_CREATED);
    }

    /**
     * Delete a contact message.
     * Accessible by Admin only.
     */
    public function destroy($id)
    {
        $contact = Contact::find($id);

        if (!$contact) {
            return response()->json(['message' => 'Contact message not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('delete', $contact);

        $contact->delete();

        return response()->json(['message' => 'Contact message deleted successfully.'], Response::HTTP_OK);
    }
}
