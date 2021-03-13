<?php

namespace App\Http\Controllers;

use App\Models\Lookups\Category;
use App\Models\Operation;
use App\Models\Service;
use App\Models\SubCategory;
use App\Models\User;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function Search($q)
    {
   $category = Category::where('name','LIKE','%'.$q.'%')->orWhere('description','LIKE','%'.$q.'%')->get();
    $subcategory = SubCategory::where('name','LIKE','%'.$q.'%')->orWhere('description','LIKE','%'.$q.'%')->get();
    $service = Service::where('name','LIKE','%'.$q.'%')->orWhere('description','LIKE','%'.$q.'%')->get();
    //$operation = Operation::where('address_address','LIKE','%'.$q.'%')->orWhere('start_time','LIKE','%'.$q.'%')->orWhere('end_time','LIKE','%'.$q.'%')->orWhere('completed_time','LIKE','%'.$q.'%')->where('end_time','LIKE','%'.$q.'%')->get();
    return response(
            ['category' => $category,
            'subcategory'=>$subcategory,
    		'service'=>$service],200);
}
}
