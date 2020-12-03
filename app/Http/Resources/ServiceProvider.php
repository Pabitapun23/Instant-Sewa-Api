<?php

namespace App\Http\Resources;

use App\Http\Controllers\ServiceProviderController;
use Illuminate\Http\Resources\Json\JsonResource;

class ServiceProvider extends JsonResource
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
            'fullname'=>$this->fullname,
            'email' => $this->email,
            'isVerified' =>isset($this->verified)? $this->verified:'not_verified',
            'address'=>$this->address_address,
            'phoneno'=>$this->phoneno,
            'occupation' =>ServiceProviderController::categoryName($this->id),
            'rate'=>2,
            'avatar'=>$this->avatar,
            'user_type'=>$this->user_type,
            'creationDate' => (string)$this->created_at,
            'lastChange' => (string)$this->updated_at,
            'deletedDate' => isset($this->deleted_at) ? (string) $this->deleted_at : null,
            //
        ];
    }
}
