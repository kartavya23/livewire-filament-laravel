<?php

namespace App\Livewire;

use App\Models\service;
use Livewire\Component;

class ShowService extends Component
{

    public $service;

    public function mount($id){
        $this->service = service::findOrFail($id);

    }


    public function render()
    {
        return view('livewire.show-service',[
            'service' => $this->service
        ]);

    }
}
