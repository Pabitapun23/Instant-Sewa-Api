<?php

namespace App\Http\Controllers;

use App\Http\Resources\ServiceResourceCollection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubCategoryServiceController extends Controller
{
    public function index( $id)
    {
        $services = DB::table('services')->where('sub_categories_id', $id)->get();
       return new ServiceResourceCollection($services);
    }
    
}
