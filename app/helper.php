<?php
use App\Models\service;
  function getServices(){
   $services = service::orderBy('title','ASC',)->where('status',1)->get();
   return $services;
  }
?>