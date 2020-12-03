<?php

namespace App\Http\Resources;

use App\Http\Controllers\CategorySubCategoryController;
use App\Http\Resources\Lookups\Category;
use Illuminate\Http\Resources\Json\JsonResource;

class SubCategory extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
         return [
            'identifier' => $this->id,
            'title' => $this->name,
            'details'=>$this->description,
            'image' => $this->image,
           'category' => CategorySubCategoryController::categoryName($this->category_id),
            'creationDate' =>$this->created_at,
            'lastChange' => $this->updated_at,
            'deletedDate' => isset($this->deleted_at) ? $this->deleted_at : null,
        ];
    }
}
