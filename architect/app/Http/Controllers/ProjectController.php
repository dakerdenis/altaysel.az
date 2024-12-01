<?php

namespace App\Http\Controllers;

use App\Models\FutureProjects;
use App\Models\MainProject;
use App\Models\MapProjects;
use Illuminate\Http\Request;
use App\Models\Project;

class ProjectController extends Controller
{
        public function index()
        {
            $projects = MainProject::all();
            return response()->json($projects);
        }

        public function allprojects(){
            $allprojects = Project::all();
            return response()->json($allprojects);
        }
        public function mapprojects(){
            $allprojects = MapProjects::all();
            return response()->json($allprojects);
        }
        public function futureprojects(){
            $allprojects = FutureProjects::all();
            return response()->json($allprojects);
        }

        public function show($id)
        {
            $project = Project::find($id);
    
            if (!$project) {
                return response()->json(['error' => 'Project not found'], 404);
            }
    
            return response()->json($project);
        }

}
