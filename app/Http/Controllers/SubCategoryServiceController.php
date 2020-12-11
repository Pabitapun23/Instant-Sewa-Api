<?php

namespace App\Http\Controllers;

use App\Http\Resources\ServiceResourceCollection;
use App\Models\Models\SubCategoryService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubCategoryServiceController extends Controller
{
    public function index( $id)
    {
        $services = DB::table('services')->where('sub_categories_id', $id)->get();
       return new ServiceResourceCollection($services);
    }
     public function store(Request $request)
    {
    	 $rules = [
            'service_provider_id' => 'required',
            'subcategories_id' =>'required',
        ];
        $this->validate($request, $rules);
         $services = SubCategoryService::create($request->all());
        return $services;

    }
    
}
