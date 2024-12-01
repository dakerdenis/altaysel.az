<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ArchitectController;

use App\Http\Controllers\ProjectController;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware\AuthenticateAdmin;


/************* Main Routes *************/
Route::get('/', [ArchitectController::class, 'redirectToLanguage'])->defaults('locale', 'az')->name('mainpage');
Route::get('/{locale}', [ArchitectController::class, 'index'])->where('locale', 'az|ru')->name('index');





Route::get('/{locale}/projects', [ArchitectController::class, 'projects'])->name('projects');


Route::get('/{locale}/projects/{year}',[ArchitectController::class,'projects_year'])->name('projects_year');


Route::get('/{locale}/projects/{year}/{id}', [ArchitectController::class, 'single_project'])->name('single_project');


/************* Authentication Routes *************/

Route::get('/admin', [AdminController::class, 'admin'])->name('admin.login');
Route::post('/admin', [AdminController::class, 'login'])->name('admin.login.post');

/*******API************ */
Route::get('/api/project/{id}', [ProjectController::class, 'show']);

Route::get('/api/mainprojects', [ProjectController::class, 'index']);
Route::get('/api/allprojects', [ProjectController::class, 'allprojects']);
Route::get('/api/mapprojects', [ProjectController::class, 'mapprojects']);
Route::get('/api/futureprojects', [ProjectController::class, 'futureprojects']);




/************* Main Admin Panel Route *************/
Route::middleware([AuthenticateAdmin::class])->group(function () {
    /****main page route*****/
    Route::get('/main', [AdminController::class, 'main'])->name('admin.main');



    /********Projects************ */
    /*****ADD PROJECT******** */
    Route::post('/main/project', [AdminController::class, 'add_project'])->name('admin.add_project');
    /*********PROJECT edit*********** */
    Route::get('/main/project/{id}', [AdminController::class, 'edit_project'])->name('admin.edit_project');
    /*******DELETE PROJECT */
    Route::delete('/main/project/{id}', [AdminController::class, 'delete_project'])->name('admin.delete_project');
    /**********EDIT PROJECT*********** */
    Route::put('/main/project/{id}', [AdminController::class, 'edit_project__form'])->name('admin.edit_project__form');
    /******EDITING ADDITIONAL IMAGES************/
    Route::get('main/project/{id}/images', [AdminController::class, 'edit__additional__images'])->name('admin.edit__additional__images');

    /*************DELETE ADDITIONAL IMAGE OF PROJECT*******************/
    Route::delete('main/project/{id}/{image}', [AdminController::class, 'delete__additional__image'])->name('admin.delete_add_image');
    /*******adding ADDITIONAL IMAGE********** */
    Route::post('main/project/{id}/add_image', [AdminController::class, 'upload__additional_image'])->name('admin.upload__additional_image');


    /********************MAIN PROJECTS ON PAGE******************/
    Route::get('/main/main_projects', [AdminController::class, 'main_projects'])->name('admin.main_projects');
    /****add main project */
    Route::post('/main/main_projects', [AdminController::class, 'add_main_project'])->name('admin.add_main_projects');
    /*****DELETE MAIN PROJECT********* */
    Route::delete('/main/main_projects/{id}', [AdminController::class, 'delete_main_project'])->name('admin.delete_main_project');
    /*********EDIT MAIN PROJECT************ */
    Route::get('/main/main_projects/{id}', [AdminController::class, 'edit_main_project'])->name('admin.edit_main_project');
    /**********EDIT MAIN PROJECT*********** */
    Route::put('/main/main_projects/{id}', [AdminController::class, 'edit_main_project__form'])->name('admin.edit_main_project__form');

    /******EDITING ADDITIONAL IMAGES MAIN************/
    Route::get('main/main_projects/{id}/images', [AdminController::class, 'edit__additional_images__main'])->name('admin.edit__additional_images__main');
    /*************DELETE ADDITIONAL IMAGE OF PROJECT*******************/
    Route::delete('main/main_projects/{id}/{image}', [AdminController::class, 'delete__additional__image__main'])->name('admin.delete__additional__image__main');
    /*******adding ADDITIONAL IMAGE********** */
    Route::post('main/main_projects/{id}/add_image', [AdminController::class, 'upload__additional_image__main'])->name('admin.upload__additional_image__main');




    /**FUTURE projects***/
    Route::get('/main/future_projects', [AdminController::class, 'future_projects'])->name('admin.future_projects');
    /****add FUTURE project */
    Route::post('/main/future_projects', [AdminController::class, 'add_future_projects'])->name('admin.add_future_projects');
    /*********FUTURE edit*********** */
    Route::get('/main/future_projects/{id}', [AdminController::class, 'edit_future_projects'])->name('admin.edit_future_projects');
    /**********FUTURE edit*********** */
    Route::put('/main/future_projects/{id}', [AdminController::class, 'edit__future_project__form'])->name('admin.edit__future_project__form');
    /*******DELETE FUTURE PROJECT */
    Route::delete('/main/future_projects/{id}', [AdminController::class, 'delete_future_project'])->name('admin.delete_future_project');

    /******EDITING ADDITIONAL IMAGES FUTURE************/
    Route::get('main/future_projects/{id}/images', [AdminController::class, 'edit__additional_images__future'])->name('admin.edit__additional_images__future');
    /*************DELETE ADDITIONAL IMAGE OF FUTURE PROJECT*******************/
    Route::delete('main/future_projects/{id}/{image}', [AdminController::class, 'delete__additional__image__future'])->name('admin.delete__additional__image__future');
    /*******adding ADDITIONAL IMAGE FUTURE********** */
    Route::post('main/future_projects/{id}/add_image', [AdminController::class, 'upload__additional_image__future'])->name('admin.upload__additional_image__future');




    /**MAP***/
    Route::get('/main/map', [AdminController::class, 'map'])->name('admin.map');
    /*******MAP ELEMENT ADMIN***** */
    Route::get('/main/map/{id}', [AdminController::class, 'map_element'])->name('admin.map_element');
    /*******ADD new ELEMENT to REGION********* */
    Route::get('/main/map/{id}/add_project', [AdminController::class, 'new_map_project'])->name('admin.new_map_project');
    /****add new project POST REQUEST*/
    Route::post('/main/map/{id}/add_project', [AdminController::class, 'add_map_project'])->name('admin.add_map_project');


    /*******DELETE ELEMENT from REGION********* */
    Route::delete('/main/map/delete/{id}', [AdminController::class, 'delete_map_project'])->name('admin.delete_map_project');



    /*******EDIT ELEMENT from REGION********* */
    Route::get('/main/map/edit/{id}', [AdminController::class, 'edit_map_project'])->name('admin.edit_map_project');
    /*******EDIT ELEMENT from REGION********* */
    Route::put('/main/map/edit/{id}', [AdminController::class, 'edit_map_project_form'])->name('admin.edit_map_project_form');



    /******EDITING ADDITIONAL IMAGES MAP************/
    Route::get('main/map/{project_id}/images', [AdminController::class, 'edit__additional_images__map'])->name('admin.edit__additional_images__map');
    /*************DELETE ADDITIONAL IMAGE OF FUTURE PROJECT*******************/
    Route::delete('main/map/{project_id}/{image}', [AdminController::class, 'delete__additional__image__map'])->name('admin.delete__additional__image__map');
    /*******adding ADDITIONAL IMAGE FUTURE********** */
    Route::post('main/map/{project_id}/add_image', [AdminController::class, 'upload__additional_image__map'])->name('admin.upload__additional_image__map');























    /**contact***/
    Route::get('/main/contact', [AdminController::class, 'contact'])->name('admin.contact');
    Route::post('/main/contact/update', [AdminController::class, 'update_contact'])->name('admin.update_contact');










    /**SLIDER***/
    Route::get('/main/slider', [AdminController::class, 'slider'])->name('admin.slider');
    /*****adding slider */
    Route::post('/main/slider', [AdminController::class, 'add_slider'])->name('admin.add_slider');
    /**! ***delete slider********* */
    Route::delete('/main/slider/{id}', [AdminController::class, 'delete_slider'])->name('admin.delete_slider');



    /**SERVICES***/
    Route::get('/main/services', [AdminController::class, 'services'])->name('admin.services');
    /***add service */
    Route::post('/services/store', [AdminController::class, 'store'])->name('services.store');
    /***services edit***/
    Route::get('/main/services/{id}', [AdminController::class, 'edit_service'])->name('admin.edit_service');
    /****services edit form***/
    Route::put('/main/services/{id}', [AdminController::class, 'edit_service_form'])->name('admin.edit_service_form');
    /*****services delete*******/
    Route::delete('/main/services/{id}', [AdminController::class, 'delete_service'])->name('admin.delete_service');









    Route::post('/logout', [AdminController::class, 'logout'])->name('admin.logout');
});
