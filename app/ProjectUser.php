<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProjectUser extends Models
{
  protected $table = "projects_user";
  protected $fillable =[
    'project_id',
    'user_id'
  ];
}
