<?php

namespace App\Http\Resources;

use App\Http\Controllers\CartController;
use Illuminate\Http\Resources\Json\JsonResource;

class CartResource extends JsonResource
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
            'service_name' => CartController::ServiceName($this->service_id),
            'image'=>CartController::ServiceImage($this->service_id),
            'quantity'=>$this->quantity,
            'price'=>CartController::ServicePrice($this->service_id),
            'creationDate' =>$this->created_at,
            'lastChange' => $this->updated_at
        ];
    }
}
