<?php

namespace App\Http\Controllers;

use App\Models\FutureProjects;
use App\Models\MainProject;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use App\Models\Service;
use App\Models\MapProjects;
use App\Models\Slider;
use App\Models\Contact;
use Illuminate\Support\Facades\Log;
use App\Models\Project;

class ArchitectController extends Controller
{
    public function redirectToLanguage($locale)
    {
            // Collect query parameters, such as `projectId`
    $queryParams = request()->query();
        // Check if the requested locale is valid
        if ($locale === 'az' || $locale === 'ru') {
            return Redirect::route('index', array_merge(['locale' => $locale], $queryParams));
        } else {
            // Redirect to the default locale if the requested one is invalid
            return Redirect::route('index', array_merge(['locale' => 'az'], $queryParams));
        }
    }

    public function projects($locale)
    {
        $all_projects = Project::all();
        return view('projects', ['locale' => $locale, 'all_projects' => $all_projects]);
    }

    public function index($locale)
    {
        $all_sliders = Slider::all();
        $all_main_projects = MainProject::all();
        $all_services = Service::all();
        $future_projects = FutureProjects::all();
        $map_projects = MapProjects::all();
        $contacts = Contact::first(); 
        // Group projects by region_id
        $grouped_projects = $map_projects->groupBy('region_id');

        return view('index', [
            'locale' => $locale,
            'future_projects' => $future_projects,
            'map_projects' => $grouped_projects,
            'all_main_projects' => $all_main_projects,
            'all_services' => $all_services,
            'all_sliders' => $all_sliders,
            'contacts'=>$contacts
        ]);
    }

    public function projects_year($locale, $year)
    {
        $contacts = Contact::first(); 
        switch ($year) {
            case 1970:
                $projects = Project::where('year', '<=', 1970)->get();
                break;
            case 1980:
                $projects = Project::whereBetween('year', [1970, 1980])->get();
                break;
            case 1990:
                $projects = Project::whereBetween('year', [1980, 1990])->get();
                break;
            case 2000:
                $projects = Project::whereBetween('year', [1990, 2000])->get();
                break;
            case 2010:
                $projects = Project::whereBetween('year', [2000, 2010])->get();
                break;
            case 2020:
                $projects = Project::whereBetween('year', [2010, 2020])->get();
                break;
            case 2030:
                $projects = Project::where('year', '>=', 2020)->get();
                break;
            default:
                $projects = collect(); // Return an empty collection if the year does not match any case
                break;
        }


        return view('year', ['locale' => $locale, 'all_projects' => $projects, 'year' => $year, 'contacts'=>$contacts]);
    }
    public function single_project($locale, $year, $id){
        $contacts = Contact::first(); 
        $project = Project::findOrFail($id);

        return view('single_project',['locale' => $locale, 'project' => $project, 'year' => $year, 'contacts'=>$contacts]);
    }


}

