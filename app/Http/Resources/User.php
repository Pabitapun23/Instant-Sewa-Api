<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class User extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return['identifier' =>$this->id,
            'username' =>$this->username,
            'fullname'=>$this->fullname,
            'email' =>$this->email,
            'isVerified' =>$this->verified,
            'address'=>$this->address_address,
            'phoneno'=>$this->phoneno,
            'avatar'=>$this->avatar,
            'user_type'=>$this->user_type,
            'creationDate' =>$this->created_at,
            'lastChange' =>$this->updated_at,
            'deletedDate' => isset($this->deleted_at) ? $this->deleted_at : null,];
    }
}
