<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Task_model extends CI_Model
{

	public function addTask($task)
	{
		$this->db->insert("date", $task);
	}

	public function listTasks()
	{
		$response = $this->db->query("SELECT * FROM date")->result();
		return $response;
	}

	public function updateTask($task)
	{
		$this->db->query("UPDATE date SET name = '{$task['name']}', lastname = '{$task['lastname']}', identification = '{$task['identification']}', date = '{$task['date']}', city = '{$task['city']}', neighborhood = '{$task['neighborhood']}', cellphone = '{$task['cellphone']}' WHERE id = {$task['id']}");
	}

	public function deleteTask($id)
	{
		$this->db->query("DELETE FROM date WHERE id = {$id}");
	}
}
