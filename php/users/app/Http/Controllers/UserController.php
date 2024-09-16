<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User; // Не забудьте подключить модель User
use Illuminate\Database\Eloquent\ModelNotFoundException;

class UserController extends Controller
{
    
    // Метод для поиска пользователей по id или name
    public function search(Request $request)
    {
        // Получаем параметры запроса
        $query = $request->input('query');

        if (!$query) {
            return response()->json(['error' => 'Query is required'], 400);
        }

        // Выполняем поиск по ID или вхождению в name
        $users = User::where('id', $query)
            ->orWhere('name', 'like', '%' . $query . '%')
            ->get();

        if ($users->isEmpty()) {
            return response()->json(['error' => 'No users found'], 404);
        }

        return response()->json($users, 200);
    }

    // Метод для получения пользователя по ID
    public function show($id)
    {
        try {
            // Получаем пользователя по ID
            $user = User::findOrFail($id);
            return response()->json($user, 200);
        } catch (ModelNotFoundException $e) {
            return response()->json(['error' => 'User not found'], 404);
        }
    }
}