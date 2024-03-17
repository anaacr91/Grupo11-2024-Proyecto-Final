<?php

include_once 'evento.php';
include_once 'user.php';

class ApiCulturalCompass{

    function getAllEvents(){
        $evento=new Evento();
        $res=$evento->get_all_events();
        
        if($res->rowCount()){
            $eventos=array();
            $eventos['eventos']=array();

            while($row = $res->fetch(PDO::FETCH_ASSOC)){
                $item=array(
                    "id"=>$row['id'],
                    "name"=>$row['name'],
                    "description"=>$row['description'],
                    "start_at"=>$row['start_at'],
                    "end_at"=>$row['end_at'],
                    "status"=>$row['status'],
                    "url"=>$row['url'],
                    "category_id"=>$row['category_id'],
                    "location_id"=>$row['location_id'],
                    "organizer_id"=>$row['organizer_id']
                );
                array_push($eventos['eventos'], $item);
            }

            $this->printJSON($eventos);
        }else{
            $this->when_error('No existen eventos');
        }  
    }

    function getFilteredEvents($category_id, $when){
        $evento=new Evento();
        $res=$evento->get_filtered_events($category_id, $when);
        
        if($res->rowCount()){
            $eventos=array();
            $eventos['eventos']=array();

            while($row = $res->fetch(PDO::FETCH_ASSOC)){
                $item=array(
                    "id"=>$row['id'],
                    "name"=>$row['name'],
                    "description"=>$row['description'],
                    "start_at"=>$row['start_at'],
                    "end_at"=>$row['end_at'],
                    "status"=>$row['status'],
                    "url"=>$row['url'],
                    "category_id"=>$row['category_id'],
                    "location_id"=>$row['location_id'],
                    "organizer_id"=>$row['organizer_id']
                );
                array_push($eventos['eventos'], $item);
            }

            $this->printJSON($eventos);
        }else{
            $this->when_error('No existen eventos');
        }  
    }

    function userRegister($username, $password){
        $user=new User();
        $res=$user->user_register($username, $password);
        $this->exito('nueva cuenta creada');
    }

    function userLogin($username, $password){
        $user=new User();
        $res=$user->check_user($username, $password);
        if($res->rowCount()){
            $this->exito('usuario logeado');
        }else{
            $this->when_error('usuario o contraseña incorrectos');
        }
    }

    function when_error($message){
        echo json_encode(array('message' => $message));
    }
    function printJSON($array){
        echo json_encode($array);
    }
    function exito($message){
        echo json_encode(array('message' => $message));
    }
}

?>