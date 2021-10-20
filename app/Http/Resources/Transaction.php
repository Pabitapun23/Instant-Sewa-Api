<?php

namespace App\Http\Resources;

use App\Http\Controllers\OperationController;
use Illuminate\Http\Resources\Json\JsonResource;

class Transaction extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
         return [
            'identifier' => $this->id,
            'payment' => $this->payment,
            'serviceProviderName'=>OperationController::serviceProviderName($this->service_provider_id),
            'creationDate' =>$this->created_at,
            'lastChange' => $this->updated_at,
        ];
    }
}
