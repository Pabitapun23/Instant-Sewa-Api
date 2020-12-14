<?php

namespace App\Http\Resources;
use App\Http\Controllers\SubCategoryServiceProviderController;
use Illuminate\Http\Resources\Json\JsonResource;

class SubCategoryServiceProvider extends JsonResource
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
            'subCategory' => SubCategoryServiceProviderController::subCategory($this->id),
            'image'=>$this->image,
            'details'=>$this->description,
            'creationDate' =>$this->created_at,
            'lastChange' => $this->updated_at,
            'deletedDate' => isset($this->deleted_at) ? $this->deleted_at : null,
        ];
    }
}
