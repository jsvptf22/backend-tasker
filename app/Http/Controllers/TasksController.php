<?php

namespace App\Http\Controllers;

use App\Tasks;
use Illuminate\Http\Request;

class TasksController extends Controller
{
    public function index()
    {
        return Tasks::all();
    }

    public function filterByUser($userId)
    {
        return Tasks::where('userId', $userId)->get();
    }

    public function show(Tasks $tasks)
    {
        return $tasks;
    }

    public function store(Request $request)
    {
        $tasks = Tasks::create($request->all());

        return response()->json($tasks, 201);
    }

    public function update(Request $request, Tasks $tasks)
    {
        $tasks->update($request->all());

        return response()->json($tasks, 200);
    }

    public function delete(Tasks $tasks)
    {
        $tasks->delete();

        return response()->json(null, 204);
    }
}
