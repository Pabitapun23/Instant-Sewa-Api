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
    public function Search()
    {
   $category = Category::select('name')->get();
    $subcategory = SubCategory::select('name')->get();
    $service = Service::select('name')->get();
    //$operation = Operation::where('address_address','LIKE','%'.$q.'%')->orWhere('start_time','LIKE','%'.$q.'%')->orWhere('end_time','LIKE','%'.$q.'%')->orWhere('completed_time','LIKE','%'.$q.'%')->where('end_time','LIKE','%'.$q.'%')->get();
    return response(
            ['category' => $category,
            'subcategory'=>$subcategory,
    		'service'=>$service],200);
}
}
