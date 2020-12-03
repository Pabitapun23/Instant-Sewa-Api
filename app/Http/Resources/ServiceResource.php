<?php

namespace App\Http\Resources;
use Illuminate\Http\Resources\Json\JsonResource;

class ServiceResource extends JsonResource
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
            'time_need'=>$this->quantity,
             'picture' => $this->image,
            'price' => $this->payment,
            'creationDate' =>$this->created_at,
            'lastChange' => $this->updated_at,
            'deletedDate' => isset($this->deleted_at) ?  $this->deleted_at : null,
            //
        ];
    }
}
