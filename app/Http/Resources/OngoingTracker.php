<?php

namespace App\Http\Resources;

use App\Http\Controllers\TrackerController;
use Illuminate\Http\Resources\Json\JsonResource;

class OngoingTracker extends JsonResource
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
            'cartGroupName'=>TrackerController::CartCollectionName($this->cart_collection_id),
            'startTime' => (string)$this->start_time,
            'status' => TrackerController::Status($this->id),
        ];
    }
}
