<?php

namespace App\Http\Controllers;

use App\Http\Resources\SubCategoryCollection;
use App\Models\Lookups\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CategorySubCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index( $id)
    {
        $subcategories = DB::table('sub_categories')->where('category_id', $id)->get();
       return new SubCategoryCollection($subcategories);
    }

    public static  function categoryName($id)
    {
       $categoryname = DB::table('categories')->where('id', $id)->get()->pluck('name');
       return $categoryname;
    }

}
