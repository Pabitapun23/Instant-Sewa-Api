<?php

namespace App\Http\Resources;

use App\Http\Controllers\OperationController;
use App\Http\Controllers\TrackerController;
use Illuminate\Http\Resources\Json\JsonResource;

class OperationResource extends JsonResource
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
            'serviceProviderId'=>$this->service_provider_id,
            'serviceProviderName'=>OperationController::serviceProviderName($this->service_provider_id),
            'service'=>OperationController::CartDetails($this->cart_collection_id),
            'completedTime'=> (string)$this->completed_time,
            'startTime' => (string)$this->start_time,
            'endTime' => (string)$this->end_time,
            'status' => TrackerController::Status($this->id),
            'creationDate' => (string)$this->created_at,
            'lastChange' => (string)$this->updated_at,
            'deletedDate' => isset($this->deleted_at) ? (string) $this->deleted_at : null,
            //
        ];
    }
}
