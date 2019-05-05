<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $table = "companies";

    protected $fillable = [
    	"company_name", "phone_number", "fax_number", "address", "description", "logo_url", "user_id"
    ];

    public function users()
    {
    	return $this->belongsTo("App\User", "user_id", "id");
    }

}
