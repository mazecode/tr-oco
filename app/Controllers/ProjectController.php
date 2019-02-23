<?php
namespace App\Controllers;

use App\Models\Project;
use \TypeRocket\Controllers\Controller;

class ProjectController extends Controller
{
    protected $modelClass = Project::class;

    public function index() {
        $projects = Project::all();
        dd($projects);
    }
}
