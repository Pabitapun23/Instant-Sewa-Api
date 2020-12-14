<?php

namespace App\Http\Resources\Lookups;

use App\Http\Controllers\CategorySubCategoryController;
use Illuminate\Http\Resources\Json\JsonResource;

class Category extends JsonResource
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
            'image'=>$this->image,
            'details'=>$this->description,
            'creationDate' =>$this->created_at,
            'lastChange' => $this->updated_at,
            'deletedDate' => isset($this->deleted_at) ? $this->deleted_at : null,
        ];
    }
}
