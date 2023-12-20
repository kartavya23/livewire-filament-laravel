<?php

namespace App\Livewire;

use App\Models\service;
use Livewire\Component;

class ShowServicePage extends Component
{
    public function render()
    {
        $services = service::orderBy('title','ASC',)->where('status',1)->get();
        return view('livewire.show-service-page',[
            'services' => $services
        ]);
    }
}
