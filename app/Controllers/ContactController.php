<?php

namespace App\Controllers;

use TypeRocket\Controllers\Controller;
use App\Models\Contact;

class ContactController extends Controller
{
    protected $model = Contact::class;

    public function send()
    {
        $options = [
            'email' => 'required|email'
        ];

        $fields = $this->request->getFields();

        $validator = tr_validator($options, $fields);

        if ($validator->getErrors()) {
            return $this->response->flashNow('Email no valido, vuelve a intentarlo', 'danger');
            // return $this->response->setStatus(400);
        }
        
        $model = new Contact();
        $model->email = $fields['email'];
        $model->save();

        add_filter('wp_mail_content_type', function () {
            return 'text/html';
        });

        wp_mail($fields['email'], 'Gracias por contactarnos', "<h3>Estamos contentos que nos hayas contactado</h3><p>Nos pondremos en contacto contigo lo antes posible. Saludos cordiales</p>");
        $this->response->flashNext('Test created!')
            ->setMessage('Mensaje enviado')
            ->withFields(['email' => ''])
            ->exitJson(200);
    }

    public function thanks()
    {
    }
}
