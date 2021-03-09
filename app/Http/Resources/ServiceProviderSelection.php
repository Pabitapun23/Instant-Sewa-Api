<?php

namespace App\Http\Resources;

use App\Http\Controllers\ServiceProviderController;
use Illuminate\Http\Resources\Json\JsonResource;

class ServiceProviderSelection extends JsonResource
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
            'username' => $this->username,
            'latitude'=>$this->address_latitude,
            'longitude' => $this->address_longitude,
            'address'=>$this->address_address,
            'distance'=>$this->distance,
            'rate'=>ServiceProviderController::rating($this->id)
        ];
    }
}
