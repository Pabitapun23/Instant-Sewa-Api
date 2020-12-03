<?php

namespace App\Http\Resources;

use App\Http\Controllers\ServiceProviderSelectionController;
use Illuminate\Http\Resources\Json\JsonResource;

class ServiceSelection extends JsonResource
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
            'categoryName' => $this->name,
            'serviceList'=>ServiceProviderSelectionController::ServiceList($this->id),
        ];
    }
}
