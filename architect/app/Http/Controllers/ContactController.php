<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
class ContactController extends Controller
{
    public function edit()
    {
        $contact = Contact::first(); // Assuming you only have one row for contact information
        return view('admin.edit_contact', compact('contact'));
    }

    public function update(Request $request)
    {
        $validatedData = $request->validate([
            'number_1' => 'nullable|string',
            'number_2' => 'nullable|string',
            'email' => 'nullable|email',
            'linkdin' => 'nullable|string',
            'facebook' => 'nullable|string',
            'instagram' => 'nullable|string',
            'telegram' => 'nullable|string',
            'behance' => 'nullable|string',
            'pinterest' => 'nullable|string'
        ]);

        $contact = Contact::first();
        if ($contact) {
            $contact->update($validatedData);
        } else {
            Contact::create($validatedData);
        }

        return redirect()->back()->with('success', 'Contact information updated successfully');
    }
}
