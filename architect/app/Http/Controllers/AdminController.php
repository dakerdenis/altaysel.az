<?php

namespace App\Http\Controllers;



use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use App\Http\Controllers\Controller;
use App\Models\FutureProjects;
use App\Models\Service;
use App\Models\MapProjects;
use App\Models\Slider;
use App\Models\Project;
use App\Models\MainProject;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller

{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
    }



    public function admin()
    {
        return view('admin.login');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');
        $credentials['password'] = $request->password; // Add this line to hash the password

        if (Auth::attempt($credentials)) {
            // Authentication was successful
            $all_projects = Project::all();
            return view('admin.main', ['all_projects' => $all_projects]);
        } else {
            // Authentication failed
            return redirect()->route('admin.login')->with('error', 'Invalid credentials');
        }
    }
    public function logout()
    {
        Auth::logout();
        return redirect()->route('admin.login');
    }

    /***main page route****/
    public function main(Request $request, $content = null)
    {
        if (!Auth::check()) {
            return redirect()->route('admin.login');
        }

        $content = $request->input('content', $content); // Use request input if available
        $all_projects = Project::all();
        return view('admin.main', ['content' => $content, 'all_projects' => $all_projects]);
    }

    public function slider()
    {
        $all_sliders = Slider::all();
        return view('admin.main', ['content' => 'slider', 'all_sliders' => $all_sliders]);
    }
    public function add_slider(Request $request)
    {
        // Validate form data
        $request->validate([
            'photo_input' => 'required|image|max:2048', // Max 2MB
        ], [
            'photo_input.max' => 'The image may not be greater than 2 megabytes.',
        ]);

        // Handle image upload
        if ($request->hasFile('photo_input')) {
            $uploadedImage = $request->file('photo_input');
            $imageName = time() . '_' . $uploadedImage->getClientOriginalName();
            $uploadedImage->move(public_path('uploads'), $imageName);

            Slider::create(['image_name' => $imageName]);
        }

        // Redirect with success message or perform other actions
        return redirect()->route('admin.slider')->with('success', 'Slider image uploaded successfully.');
    }

    public function delete_slider($id)
    {
        try {
            // Find the slider by its ID
            $slider = Slider::findOrFail($id);

            // Delete the image file from the uploads folder
            $imagePath = public_path('uploads/' . $slider->image_name);
            if (File::exists($imagePath)) {
                File::delete($imagePath);
            }

            // Delete the slider
            $slider->delete();

            // Redirect back to the sliders page with a success message
            return redirect()->route('admin.slider')->with('success', 'Slider and image deleted successfully.');
        } catch (\Exception $e) {
            // Handle any errors
            return back()->with('error', 'Failed to delete slider.');
        }
    }





    /**!   ****ALL PROJECTS************** */
    /**!   ****ALL PROJECTS************** */
    /**!   ****ALL PROJECTS************** */
    /**!   ****ALL PROJECTS************** */
    public function add_project(Request $request)
    {
        // Validate form data
        $request->validate([
            'project__year' => 'required|digits:4',
            'project_name_az' => 'required',
            'project_name_ru' => 'required',
            'desc_az' => 'required',
            'desc_ru' => 'required',
            'main_photo' => 'required|image|max:2048', // Max 2MB
        ], [
            'main_photo.required' => 'The main image is required.',
            'main_photo.max' => 'The main image may not be greater than 2 megabytes.',
        ]);
    
        // Handle image upload for main photo
        if ($request->hasFile('main_photo')) {
            $mainImage = $request->file('main_photo');
            $mainImageName = time() . '_' . $mainImage->getClientOriginalName();
            $mainImage->move(public_path('uploads/projects'), $mainImageName);
        }
    
        // Handle additional photos
        $additionalPhotos = [];
        if ($request->hasFile('additional_photo_input')) {
            foreach ($request->file('additional_photo_input') as $file) {
                if ($file->isValid()) {
                    $additionalPhotoName = time() . '_' . $file->getClientOriginalName();
                    $file->move(public_path('uploads/projects'), $additionalPhotoName);
                    $additionalPhotos[] = $additionalPhotoName;
                }
            }
        }
    
        // Store additional photos in the database
        $images = array_merge($additionalPhotos);
    
        // Create new project record
        $project = new Project();
        $project->year = $request->project__year;
        $project->location = $request->project__location;
        $project->name_ru = $request->project_name_ru;
        $project->name_az = $request->project_name_az;
        $project->desc_ru = $request->desc_ru;
        $project->desc_az = $request->desc_az;
        $project->main_image = $mainImageName;
        $project->images = json_encode($images); // Store image names as JSON
        $project->video_url = $request->input('project__video_link'); // Store video URL
        $project->save();
    
        // Redirect with success message or perform other actions
        return redirect()->route('admin.main')->with('success', 'Project added successfully.');
    }
    
    public function edit_project($id)
    {
        $project = Project::findOrFail($id);
        return view('admin.main', ['content' => 'edit_project', 'project' => $project]);
    }
    public function edit_project__form(Request $request, $id)
    {
        $project = Project::findOrFail($id);
    
        // Check if a new main photo is uploaded
        if ($request->hasFile('main_photo')) {
            // Delete the existing main image file
            if (file_exists(public_path('uploads/projects/' . $project->main_image))) {
                unlink(public_path('uploads/projects/' . $project->main_image));
            }
    
            // Get the uploaded main photo
            $mainPhoto = $request->file('main_photo');
    
            // Generate a unique name for the main photo using datetime
            $mainPhotoName = now()->format('YmdHis') . '_' . $mainPhoto->getClientOriginalName();
    
            // Move the main photo to the specified directory
            $mainPhoto->move(public_path('uploads/projects'), $mainPhotoName);
    
            // Update the project's main_image attribute
            $project->main_image = $mainPhotoName;
        }
    
        // Update other fields
        $project->year = $request->input('project__year');
        $project->location = $request->input('project__location');
        $project->name_ru = $request->input('project_name_ru');
        $project->name_az = $request->input('project_name_az');
        $project->desc_ru = $request->input('desc_ru');
        $project->desc_az = $request->input('desc_az');
        $project->video_url = $request->input('project__video_link'); // Update video URL
    
        // Retrieve existing additional images and decode them into an array
        $additionalImages = json_decode($project->images, true);
    
        // Handle additional photos
        if ($request->hasFile('additional_photo_input')) {
            foreach ($request->file('additional_photo_input') as $file) {
                if ($file->isValid()) {
                    $additionalPhotoName = now()->format('YmdHis') . '_' . $file->getClientOriginalName();
                    $file->move(public_path('uploads/projects'), $additionalPhotoName);
                    $additionalImages[] = $additionalPhotoName;
                }
            }
        }
    
        // Limit the additional images array to a maximum of 4 images
        $additionalImages = array_slice($additionalImages, 0, 4);
    
        // Store additional photos in the database
        $project->images = json_encode($additionalImages);
    
        // Save the updated project
        $project->save();
    
        // Redirect back with a success message
        return redirect()->back()->with('success', 'Project updated successfully!');
    }
    
    public function edit__additional__images($id)
    {
        $project = Project::findOrFail($id);
        return view('admin.main', ['content' => 'edit__additional_images', 'project' => $project]);
    }
    public function delete__additional__image($id, $image)
    {
        // Find the project
        $project = Project::findOrFail($id);

        // Delete the image from the uploads folder
        $imagePath = public_path('uploads/projects/' . $image);
        if (file_exists($imagePath)) {
            unlink($imagePath);
        }

        // Remove the image filename from the "images" column in the database
        $images = json_decode($project->images, true); // Decode as associative array
        if (is_array($images)) {
            $updatedImages = array_diff($images, [$image]); // Remove the specified image from the array
            $project->images = json_encode(array_values($updatedImages)); // Re-index the array and encode as JSON
            $project->save();
        }

        // Redirect or return a response as needed
        return redirect()->back()->with('success', 'Additional photo deleted successfully!');
    }
    public function upload__additional_image(Request $request, $id)
    {
        // Validate the uploaded file
        $request->validate([
            'additional_photo_input' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Adjust max file size as needed
        ]);

        // Retrieve the project
        $project = Project::findOrFail($id);

        // Check if the request has a file
        if ($request->hasFile('additional_photo_input')) {
            // Get the uploaded file
            $additionalPhoto = $request->file('additional_photo_input');

            // Generate a unique name for the additional photo using datetime
            $additionalPhotoName = now()->format('YmdHis') . '_' . $additionalPhoto->getClientOriginalName();

            // Move the additional photo to the specified directory
            $additionalPhoto->move(public_path('uploads/projects'), $additionalPhotoName);

            // Update the project's images attribute to include the new image
            $images = json_decode($project->images, true);
            $images[] = $additionalPhotoName;
            $project->images = json_encode($images);

            // Save the updated project
            $project->save();

            // Redirect back with a success message
            return redirect()->back()->with('success', 'Additional image uploaded successfully.');
        } else {
            // Redirect back with an error message if no file was uploaded
            return redirect()->back()->with('error', 'No file uploaded.');
        }
    }
    public function delete_project($id)
    {
        // Find the project by ID
        $project = Project::findOrFail($id);

        // Delete the main image
        $mainImagePath = public_path('uploads/projects/' . $project->main_image);
        if (file_exists($mainImagePath)) {
            unlink($mainImagePath);
        }

        // Decode the JSON string of additional images and delete each image
        $additionalImages = json_decode($project->images, true);
        foreach ($additionalImages as $image) {
            $imagePath = public_path('uploads/projects/' . $image);
            if (file_exists($imagePath)) {
                unlink($imagePath);
            }
        }

        // Delete the project record from the database
        $project->delete();

        // Redirect with success message
        return redirect()->route('admin.main')->with('success', 'Project deleted successfully.');
    }





    /********MAIN PROJECTS************** */
        /********MAIN PROJECTS************** */


    public function main_projects()
    {
        $main_projects = MainProject::all();

        return view('admin.main', ['content' => 'main_projects', 'main_projects' => $main_projects]);
    }
    public function add_main_project(Request $request)
    {
        // Validate form data
        $request->validate([
            'project__year' => 'required|digits:4',
            'adress' => 'required',
            'project_name_az' => 'required',
            'project_name_ru' => 'required',
            'desc_az' => 'required',
            'desc_ru' => 'required',
            'main_photo' => 'required|image|max:2048', // Max 2MB
        ], [
            'main_photo.required' => 'The main image is required.',
            'main_photo.max' => 'The main image may not be greater than 2 megabytes.',
        ]);
    
        // Handle image upload for main photo
        if ($request->hasFile('main_photo')) {
            $mainImage = $request->file('main_photo');
            $mainImageName = time() . '_' . $mainImage->getClientOriginalName();
            $mainImage->move(public_path('uploads/projects'), $mainImageName);
        }
    
        // Handle additional photos
        $additionalPhotos = [];
        if ($request->hasFile('additional_photo_input')) {
            foreach ($request->file('additional_photo_input') as $file) {
                if ($file->isValid()) {
                    $additionalPhotoName = time() . '_' . $file->getClientOriginalName();
                    $file->move(public_path('uploads/projects'), $additionalPhotoName);
                    $additionalPhotos[] = $additionalPhotoName;
                }
            }
        }
    
        // Store additional photos in the database
        $images = array_merge($additionalPhotos);
    
        // Use default video link if user does not provide one
        $videoUrl = $request->project__video_link ?? 'https://www.youtube.com/embed/H_ReGaTJ92s?si=yY3Lry_NdsNI_txC';
    
        // Create new project record
        $project = new MainProject();
        $project->year = $request->project__year;
        $project->location = $request->project__location;
        $project->adress = $request->adress;
        $project->name_ru = $request->project_name_ru;
        $project->name_az = $request->project_name_az;
        $project->desc_ru = $request->desc_ru;
        $project->desc_az = $request->desc_az;
        $project->main_image = $mainImageName;
        $project->images = json_encode($images); // Store image names as JSON
        $project->video_url = $videoUrl; // Save the video URL
        $project->save();
    
        // Redirect with success message or perform other actions
        return redirect()->route('admin.main', ['content' => 'new__main_project'])
            ->with('success', 'Main project added successfully.');
    }
    
    public function delete_main_project($id)
    {
        // Find the project by ID
        $main_project = MainProject::findOrFail($id);
        // Delete the main image
        $mainImagePath = public_path('uploads/projects/' . $main_project->main_image);
        if (file_exists($mainImagePath)) {
            unlink($mainImagePath);
        }

        // Decode the JSON string of additional images and delete each image
        $additionalImages = json_decode($main_project->images, true);
        foreach ($additionalImages as $image) {
            $imagePath = public_path('uploads/projects/' . $image);
            if (file_exists($imagePath)) {
                unlink($imagePath);
            }
        }

        // Delete the project record from the database
        $main_project->delete();

        // Redirect with success message
        return redirect()->route('admin.add_main_projects')->with('success', 'Project deleted successfully.');
    }
    public function edit_main_project($id)
    {
        $project = MainProject::findOrFail($id);
        return view('admin.main', ['content' => 'edit_main_project', 'project' => $project]);
    }
    public function edit_main_project__form(Request $request, $id)
    {
        $project = MainProject::findOrFail($id);
    
        // Check if a new main photo is uploaded
        if ($request->hasFile('main_photo')) {
            // Delete the existing main image file
            if (file_exists(public_path('uploads/projects/' . $project->main_image))) {
                unlink(public_path('uploads/projects/' . $project->main_image));
            }
    
            // Get the uploaded main photo
            $mainPhoto = $request->file('main_photo');
    
            // Generate a unique name for the main photo using datetime
            $mainPhotoName = now()->format('YmdHis') . '_' . $mainPhoto->getClientOriginalName();
    
            // Move the main photo to the specified directory
            $mainPhoto->move(public_path('uploads/projects'), $mainPhotoName);
    
            // Update the project's main_image attribute
            $project->main_image = $mainPhotoName;
        }
    
        // Update other fields
        $project->year = $request->input('project__year');
        $project->location = $request->input('project__location');
        $project->adress = $request->input('adress');
        $project->name_ru = $request->input('project_name_ru');
        $project->name_az = $request->input('project_name_az');
        $project->desc_ru = $request->input('desc_ru');
        $project->desc_az = $request->input('desc_az');
    
        // Update the video URL
        $project->video_url = $request->input('project__video_link');
    
        // Retrieve existing additional images and decode them into an array
        $additionalImages = json_decode($project->images, true) ?? [];
    
        // Handle additional photos
        if ($request->hasFile('additional_photo_input')) {
            foreach ($request->file('additional_photo_input') as $file) {
                if ($file->isValid()) {
                    $additionalPhotoName = now()->format('YmdHis') . '_' . $file->getClientOriginalName();
                    $file->move(public_path('uploads/projects'), $additionalPhotoName);
                    $additionalImages[] = $additionalPhotoName;
                }
            }
        }
    
        // Limit the additional images array to a maximum of 4 images
        $additionalImages = array_slice($additionalImages, 0, 4);
    
        // Store additional photos in the database
        $project->images = json_encode($additionalImages);
    
        // Save the updated project
        $project->save();
    
        // Redirect back with a success message
        return redirect()->back()->with('success', 'Project updated successfully!');
    }
    
    public function edit__additional_images__main($id)
    {
        $main_project = MainProject::findOrFail($id);
        return view('admin.main', ['content' => 'edit__additional_images__main', 'project' => $main_project]);
    }
    public function delete__additional__image__main($id, $image)
    {
        // Find the project
        $project = MainProject::findOrFail($id);

        // Delete the image from the uploads folder
        $imagePath = public_path('uploads/projects/' . $image);
        if (file_exists($imagePath)) {
            unlink($imagePath);
        }

        // Remove the image filename from the "images" column in the database
        $images = json_decode($project->images, true); // Decode as associative array
        if (is_array($images)) {
            $updatedImages = array_diff($images, [$image]); // Remove the specified image from the array
            $project->images = json_encode(array_values($updatedImages)); // Re-index the array and encode as JSON
            $project->save();
        }

        // Redirect or return a response as needed
        return redirect()->back()->with('success', 'Additional photo deleted successfully!');
    }
    public function upload__additional_image__main(Request $request, $id)
    {
        // Validate the uploaded file
        $request->validate([
            'additional_photo_input' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Adjust max file size as needed
        ]);

        // Retrieve the project
        $project = MainProject::findOrFail($id);

        // Check if the request has a file
        if ($request->hasFile('additional_photo_input')) {
            // Get the uploaded file
            $additionalPhoto = $request->file('additional_photo_input');

            // Generate a unique name for the additional photo using datetime
            $additionalPhotoName = now()->format('YmdHis') . '_' . $additionalPhoto->getClientOriginalName();

            // Move the additional photo to the specified directory
            $additionalPhoto->move(public_path('uploads/projects'), $additionalPhotoName);

            // Update the project's images attribute to include the new image
            $images = json_decode($project->images, true);
            $images[] = $additionalPhotoName;
            $project->images = json_encode($images);

            // Save the updated project
            $project->save();

            // Redirect back with a success message
            return redirect()->back()->with('success', 'Additional image uploaded successfully.');
        } else {
            // Redirect back with an error message if no file was uploaded
            return redirect()->back()->with('error', 'No file uploaded.');
        }
    }



    /*********FUTURE PROJECTS************************ */

    public function future_projects()
    {
        $future_projects = FutureProjects::all();
        return view('admin.main', ['content' => 'future_projects', 'future_projects' => $future_projects]);
    }
    public function add_future_projects(Request $request)
    {
        //    dd($request);
        // Validate form data
        $request->validate([
            'project__year' => 'required|digits:4',
            'project_name_az' => 'required',
            'project_name_ru' => 'required',
            'desc_az' => 'required',
            'desc_ru' => 'required',
            'main_photo' => 'required|image|max:2048', // Max 2MB
        ], [
            'main_photo.required' => 'The main image is required.',
            'main_photo.max' => 'The main image may not be greater than 2 megabytes.',
        ]);

        // Handle image upload for main photo
        if ($request->hasFile('main_photo')) {
            $mainImage = $request->file('main_photo');
            $mainImageName = time() . '_' . $mainImage->getClientOriginalName();
            $mainImage->move(public_path('uploads/projects'), $mainImageName);
        }

        // Handle additional photos
        $additionalPhotos = [];
        if ($request->hasFile('additional_photo_input')) {
            foreach ($request->file('additional_photo_input') as $file) {
                if ($file->isValid()) {
                    $additionalPhotoName = time() . '_' . $file->getClientOriginalName();
                    $file->move(public_path('uploads/projects'), $additionalPhotoName);
                    $additionalPhotos[] = $additionalPhotoName;
                }
            }
        }

        // Store additional photos in the database
        $images = array_merge($additionalPhotos);

        // Create new project record
        $project = new FutureProjects();
        $project->year = $request->project__year;
        $project->location = $request->project__location;
        $project->name_ru = $request->project_name_ru;
        $project->name_az = $request->project_name_az;
        $project->desc_ru = $request->desc_ru;
        $project->desc_az = $request->desc_az;
        $project->main_image = $mainImageName;
        $project->images = json_encode($images); // Store image names as JSON
        $project->save();

        // Redirect with success message or perform other actions
        return redirect()->route('admin.future_projects')->with('success', 'Project added successfully.');
    }
    public function edit_future_projects($id)
    {
        $project = FutureProjects::findOrFail($id);
        return view('admin.main', ['content' => 'edit_future_projects', 'project' => $project]);
    }
    public function edit__future_project__form(Request $request, $id)
    {
        $project = FutureProjects::findOrFail($id);

        // Check if a new main photo is uploaded
        if ($request->hasFile('main_photo')) {
            // Delete the existing main image file
            if (file_exists(public_path('uploads/projects/' . $project->main_image))) {
                unlink(public_path('uploads/projects/' . $project->main_image));
            }

            // Get the uploaded main photo
            $mainPhoto = $request->file('main_photo');

            // Generate a unique name for the main photo using datetime
            $mainPhotoName = now()->format('YmdHis') . '_' . $mainPhoto->getClientOriginalName();

            // Move the main photo to the specified directory
            $mainPhoto->move(public_path('uploads/projects'), $mainPhotoName);

            // Update the project's main_image attribute
            $project->main_image = $mainPhotoName;
        }

        // Update other fields
        $project->year = $request->input('project__year');
        $project->location = $request->input('project__location');
        $project->name_ru = $request->input('project_name_ru');
        $project->name_az = $request->input('project_name_az');
        $project->desc_ru = $request->input('desc_ru');
        $project->desc_az = $request->input('desc_az');

        // Retrieve existing additional images and decode them into an array
        $additionalImages = json_decode($project->images, true);

        // Handle additional photos
        if ($request->hasFile('additional_photo_input')) {
            foreach ($request->file('additional_photo_input') as $file) {
                if ($file->isValid()) {
                    $additionalPhotoName = now()->format('YmdHis') . '_' . $file->getClientOriginalName();
                    $file->move(public_path('uploads/projects'), $additionalPhotoName);
                    $additionalImages[] = $additionalPhotoName;
                }
            }
        }

        // Limit the additional images array to a maximum of 4 images
        $additionalImages = array_slice($additionalImages, 0, 4);

        // Store additional photos in the database
        $project->images = json_encode($additionalImages);

        // Save the updated project
        $project->save();

        // Redirect back with a success message
        return redirect()->back()->with('success', 'Project updated successfully!');
    }
    public function edit__additional_images__future($id)
    {
        $main_project = FutureProjects::findOrFail($id);
        return view('admin.main', ['content' => 'edit__additional_images__future', 'project' => $main_project]);
    }
    public function delete__additional__image__future($id, $image)
    {
        // Find the project
        $project = FutureProjects::findOrFail($id);

        // Delete the image from the uploads folder
        $imagePath = public_path('uploads/projects/' . $image);
        if (file_exists($imagePath)) {
            unlink($imagePath);
        }

        // Remove the image filename from the "images" column in the database
        $images = json_decode($project->images, true); // Decode as associative array
        if (is_array($images)) {
            $updatedImages = array_diff($images, [$image]); // Remove the specified image from the array
            $project->images = json_encode(array_values($updatedImages)); // Re-index the array and encode as JSON
            $project->save();
        }

        // Redirect or return a response as needed
        return redirect()->back()->with('success', 'Additional photo deleted successfully!');
    }
    public function upload__additional_image__future(Request $request, $id)
    {
        // Validate the uploaded file
        $request->validate([
            'additional_photo_input' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Adjust max file size as needed
        ]);

        // Retrieve the project
        $project = FutureProjects::findOrFail($id);

        // Check if the request has a file
        if ($request->hasFile('additional_photo_input')) {
            // Get the uploaded file
            $additionalPhoto = $request->file('additional_photo_input');

            // Generate a unique name for the additional photo using datetime
            $additionalPhotoName = now()->format('YmdHis') . '_' . $additionalPhoto->getClientOriginalName();

            // Move the additional photo to the specified directory
            $additionalPhoto->move(public_path('uploads/projects'), $additionalPhotoName);

            // Update the project's images attribute to include the new image
            $images = json_decode($project->images, true);
            $images[] = $additionalPhotoName;
            $project->images = json_encode($images);

            // Save the updated project
            $project->save();

            // Redirect back with a success message
            return redirect()->back()->with('success', 'Additional image uploaded successfully.');
        } else {
            // Redirect back with an error message if no file was uploaded
            return redirect()->back()->with('error', 'No file uploaded.');
        }
    }
    public function delete_future_project($id)
    {
        // Find the project by ID
        $project = FutureProjects::findOrFail($id);

        // Delete the main image
        $mainImagePath = public_path('uploads/projects/' . $project->main_image);
        if (file_exists($mainImagePath)) {
            unlink($mainImagePath);
        }

        // Decode the JSON string of additional images and delete each image
        $additionalImages = json_decode($project->images, true);
        foreach ($additionalImages as $image) {
            $imagePath = public_path('uploads/projects/' . $image);
            if (file_exists($imagePath)) {
                unlink($imagePath);
            }
        }

        // Delete the project record from the database
        $project->delete();

        // Redirect with success message
        return redirect()->route('admin.future_projects')->with('success', 'Project deleted successfully.');
    }










    public function map()
    {
        return view('admin.main', ['content' => 'map']);
    }

    public function map_element($id)
    {
        $mapProjects = MapProjects::where('region_id', $id)->get();
        return view('admin.main', ['content' => 'new_map_element', 'region_id' => $id, 'mapProjects' => $mapProjects]);
    }

    public function new_map_project($id)
    {
        //  dd($id);
        return view('admin.main', ['content' => 'new_map_project', 'region_id' => $id]);
    }

    public function add_map_project(Request $request, $id)
    {
        // Validate form data
        $request->validate([
            'project__year' => 'required|digits:4',
            'region_id' => 'required',
            'project_name_az' => 'required',
            'project_name_ru' => 'required',
            'desc_az' => 'required',
            'desc_ru' => 'required',
            'main_photo' => 'required|image|max:2048', // Max 2MB
        ], [
            'main_photo.required' => 'The main image is required.',
            'main_photo.max' => 'The main image may not be greater than 2 megabytes.',
        ]);

        // Handle image upload for main photo
        if ($request->hasFile('main_photo')) {
            $mainImage = $request->file('main_photo');
            $mainImageName = time() . '_' . $mainImage->getClientOriginalName();
            $mainImage->move(public_path('uploads/projects'), $mainImageName);
        }

        // Handle additional photos
        $additionalPhotos = [];
        if ($request->hasFile('additional_photo_input')) {
            foreach ($request->file('additional_photo_input') as $file) {
                if ($file->isValid()) {
                    $additionalPhotoName = time() . '_' . $file->getClientOriginalName();
                    $file->move(public_path('uploads/projects'), $additionalPhotoName);
                    $additionalPhotos[] = $additionalPhotoName;
                }
            }
        }

        // Store additional photos in the database
        $images = array_merge($additionalPhotos);

        // Create new project record
        $project = new MapProjects();
        $project->year = $request->project__year;
        $project->region_id = $request->region_id;
        $project->location = $request->project__location;
        $project->name_ru = $request->project_name_ru;
        $project->name_az = $request->project_name_az;
        $project->desc_ru = $request->desc_ru;
        $project->desc_az = $request->desc_az;
        $project->main_image = $mainImageName;
        $project->images = json_encode($images); // Store image names as JSON
        $project->save();

        // Redirect with success message or perform other actions
        return redirect()->back()->with('success', 'Project added successfully.');
    }

    public function delete_map_project($project_id)
    {
        // Find the project by ID
        $project = MapProjects::findOrFail($project_id);

        // Delete the main image
        $mainImagePath = public_path('uploads/projects/' . $project->main_image);
        if (file_exists($mainImagePath)) {
            unlink($mainImagePath);
        }

        // Decode the JSON string of additional images and delete each image
        $additionalImages = json_decode($project->images, true);
        foreach ($additionalImages as $image) {
            $imagePath = public_path('uploads/projects/' . $image);
            if (file_exists($imagePath)) {
                unlink($imagePath);
            }
        }

        // Delete the project record from the database
        $project->delete();

        // Redirect with success message
        return redirect()->back()->with('success', 'Project DELETED successfully.');
    }
    public function edit_map_project($id)
    {
        $project = MapProjects::findOrFail($id);
        return view('admin.main', ['content' => 'edit_map_project', 'id' => $id, 'project' => $project]);
    }
    public function edit_map_project_form(Request $request, $id)
    {

        $project = MapProjects::findOrFail($id);

        // Check if a new main photo is uploaded
        if ($request->hasFile('main_photo')) {
            // Delete the existing main image file
            if (file_exists(public_path('uploads/projects/' . $project->main_image))) {
                unlink(public_path('uploads/projects/' . $project->main_image));
            }

            // Get the uploaded main photo
            $mainPhoto = $request->file('main_photo');

            // Generate a unique name for the main photo using datetime
            $mainPhotoName = now()->format('YmdHis') . '_' . $mainPhoto->getClientOriginalName();

            // Move the main photo to the specified directory
            $mainPhoto->move(public_path('uploads/projects'), $mainPhotoName);

            // Update the project's main_image attribute
            $project->main_image = $mainPhotoName;
        }

        // Update other fields
        $project->year = $request->input('project__year');
        $project->location = $request->input('project__location');
        $project->name_ru = $request->input('project_name_ru');
        $project->name_az = $request->input('project_name_az');
        $project->desc_ru = $request->input('desc_ru');
        $project->desc_az = $request->input('desc_az');

        // Retrieve existing additional images and decode them into an array
        $additionalImages = json_decode($project->images, true);

        // Handle additional photos
        if ($request->hasFile('additional_photo_input')) {
            foreach ($request->file('additional_photo_input') as $file) {
                if ($file->isValid()) {
                    $additionalPhotoName = now()->format('YmdHis') . '_' . $file->getClientOriginalName();
                    $file->move(public_path('uploads/projects'), $additionalPhotoName);
                    $additionalImages[] = $additionalPhotoName;
                }
            }
        }

        // Limit the additional images array to a maximum of 4 images
        $additionalImages = array_slice($additionalImages, 0, 4);

        // Store additional photos in the database
        $project->images = json_encode($additionalImages);

        // Save the updated project
        $project->save();

        // Redirect back with a success message
        return redirect()->back()->with('success', 'Project updated successfully!');

    }

    public function edit__additional_images__map($id)
    {
        $main_project = MapProjects::findOrFail($id);
        return view('admin.main', ['content' => 'edit__additional_images__map', 'project' => $main_project]);

    }
    public function delete__additional__image__map($id, $image)
    {
        // Find the project
        $project = MapProjects::findOrFail($id);

        // Delete the image from the uploads folder
        $imagePath = public_path('uploads/projects/' . $image);
        if (file_exists($imagePath)) {
            unlink($imagePath);
        }

        // Remove the image filename from the "images" column in the database
        $images = json_decode($project->images, true); // Decode as associative array
        if (is_array($images)) {
            $updatedImages = array_diff($images, [$image]); // Remove the specified image from the array
            $project->images = json_encode(array_values($updatedImages)); // Re-index the array and encode as JSON
            $project->save();
        }

        // Redirect or return a response as needed
        return redirect()->back()->with('success', 'Additional photo deleted successfully!');
    }

    public function upload__additional_image__map(Request $request, $id)
    {
        // Validate the uploaded file
        $request->validate([
            'additional_photo_input' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Adjust max file size as needed
        ]);

        // Retrieve the project
        $project = MapProjects::findOrFail($id);

        // Check if the request has a file
        if ($request->hasFile('additional_photo_input')) {
            // Get the uploaded file
            $additionalPhoto = $request->file('additional_photo_input');

            // Generate a unique name for the additional photo using datetime
            $additionalPhotoName = now()->format('YmdHis') . '_' . $additionalPhoto->getClientOriginalName();

            // Move the additional photo to the specified directory
            $additionalPhoto->move(public_path('uploads/projects'), $additionalPhotoName);

            // Update the project's images attribute to include the new image
            $images = json_decode($project->images, true);
            $images[] = $additionalPhotoName;
            $project->images = json_encode($images);

            // Save the updated project
            $project->save();

            // Redirect back with a success message
            return redirect()->back()->with('success', 'Additional image uploaded successfully.');
        } else {
            // Redirect back with an error message if no file was uploaded
            return redirect()->back()->with('error', 'No file uploaded.');
        }
    }

















    public function contact()
    {
        $contact_data = Contact::first();
        return view('admin.main', ['content' => 'contact', 'contact' => $contact_data]);
    }
    public function update_contact(Request $request)
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







    public function services()
    {
        $all_services = Service::all();
        return view('admin.main', ['content' => 'services', 'all_services' => $all_services]);
    }
    public function edit_service($id)
    {
        $service = Service::findOrFail($id);
        return view('admin.main', ['content' => 'edit_service', 'service' => $service]);
    }

    public function edit_service_form(Request $request, $id)
    {
        // Validate form data
        $validatedData = $request->validate([
            'service_name_az' => 'required|string',
            'service_name_ru' => 'required|string',
            'desc_az' => 'required|string',
            'desc_ru' => 'required|string',
            'photo_input' => 'image|mimes:jpeg,png,jpg,gif|max:2048', // New image validation rule
        ]);

        // Find the service by its ID
        $service = Service::findOrFail($id);

        // Handle image upload
        if ($request->hasFile('photo_input')) {
            // Delete old image if it exists
            if ($service->image) {
                $oldImagePath = public_path('uploads') . '/' . $service->image;
                if (file_exists($oldImagePath)) {
                    unlink($oldImagePath);
                }
            }

            // Upload new image
            $uploadedImage = $request->file('photo_input');
            $imageName = time() . '_' . $uploadedImage->getClientOriginalName();
            $uploadedImage->move(public_path('uploads'), $imageName);

            // Update service with new image path
            $validatedData['image'] = $imageName;
        }

        // Update service data
        $service->update($validatedData);

        // Redirect back to the services page with a success message
        return redirect()->route('admin.services')->with('success', 'Service updated successfully.');
    }

    public function delete_service($id)
    {
        try {
            // Find the service by its ID
            $service = Service::findOrFail($id);

            // Delete the service
            $service->delete();

            // Redirect back to the services page with a success message
            return redirect()->route('admin.services')->with('success', 'Service deleted successfully.');
        } catch (\Exception $e) {
            // Handle any errors
            return back()->with('error', 'Failed to delete service.');
        }
    }
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }



    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Log::info('Request data:', $request->all());
        // Validate form data
        $validatedData = $request->validate([
            'service_name_az' => 'required|string',
            'service_name_ru' => 'required|string',
            'desc_az' => 'required|string',
            'desc_ru' => 'required|string',
            'photo_input' => 'required|image|max:2048', // Max 2MB
        ]);

        // Handle image upload
        $uploadedImage = $request->file('photo_input');
        $imageName = time() . '_' . $uploadedImage->getClientOriginalName();
        $uploadedImage->move(public_path('uploads'), $imageName);

        // Create new service
        $service = new Service();
        $service->service_name_az = $validatedData['service_name_az'];
        $service->service_name_ru = $validatedData['service_name_ru'];
        $service->desc_az = $validatedData['desc_az'];
        $service->desc_ru = $validatedData['desc_ru'];
        $service->image = $imageName;
        $service->save();

        Log::info('Service created successfully.');
        // Redirect with success message
        return redirect()->route('admin.services')->with('success', 'Service created successfully.');
    }



    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
