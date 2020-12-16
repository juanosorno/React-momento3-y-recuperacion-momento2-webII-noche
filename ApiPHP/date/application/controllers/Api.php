<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Api extends CI_Controller
{

	public function index()
	{
		echo 'Welcome to taskapp api made with codeigniter';
	}
	public function addTask()
	{
		header("Access-Control-Allow-Origin: *");
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method === 'POST') {
			$request = file_get_contents('php://input');
			$data = json_decode($request);
			$task = array("name" => $data->name, "lastname" => $data->lastname, "identification" => $data->identification, "date" => $data->date, "city" => $data->city, "neighborhood" => $data->neighborhood, "cellphone" => $data->cellphone);
			$this->Task_model->addTask($task);
			$response = array('response' => 'Task added succesfully');
			http_response_code(200);
			header('Content-type: application/json');
			echo json_encode($task);
		} else {
			echo json_encode(array('response' => 'error'));
		}
	}

	public function listTasks()
	{
		header("Access-Control-Allow-Origin: *");
		$tasks = array("tasks" => $this->Task_model->listTasks());
		http_response_code(200);
		header('Content-type: application/json');
		echo json_encode($tasks);
	}

	public function updateTask()
	{
		header("Access-Control-Allow-Origin: *");
		$method = $_SERVER['REQUEST_METHOD'];
		if($method == "PUT"){
			$request = file_get_contents('php://input');
			$data = json_decode($request);
			$task = array('id' => $data->id,'name' => $data->name,'lastname' => $data->lastname, 'identification' => $data->identification, 'date' => $data->date, 'city' => $data->city, 'neighborhood' => $data->neighborhood, 'cellphone' => $data->cellphone);
			$this->Task_model->updateTask($task);
			http_response_code(200);
			header('Content-type: application/json');
			echo json_encode(array('response' => 'Update task successfully'));
		}else{
			echo json_encode(array('response'=> 'error'));
		}

	}

	public function deleteTask()
	{
		header("Access-Control-Allow-Origin: *");
		$method = $_SERVER['REQUEST_METHOD'];
		if($method == "DELETE"){
			$request = file_get_contents('php://input');
			$data = json_decode($request);
			$id = $data->id;
			$this->Task_model->deleteTask($id);
			http_response_code(200);
			header('Content-type: application/json');
			echo json_encode(array('response' => 'Delete task successfully'));
		}else{
			echo json_encode(array('response'=> 'error'));
		}

	}
}
