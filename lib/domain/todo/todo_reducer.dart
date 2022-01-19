import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/domain/todo/todo_state.dart';

final Reducer<TodoState> todoReducer = combineReducers<TodoState>([
  TypedReducer<TodoState, SuccessDeleteTodoAction>(deleteTodo),
  TypedReducer<TodoState, SuccessReadTodoAction>(readTodo),
  TypedReducer<TodoState, SuccessCreateTodoAction>(createTodo),
  TypedReducer<TodoState, SuccessUpdateTodoAction>(updateTodo),
]);

TodoState deleteTodo(TodoState state, SuccessDeleteTodoAction action) {
  final todosBuilder = state.toBuilder();
  final isComplete = action.deletedTodo.isComplete;
  final id = action.deletedTodo.id;

  if (isComplete) {
    todosBuilder.completeIds.removeWhere((_id) => _id == id);
  } else {
    todosBuilder.incompleteIds.removeWhere((_id) => _id == id);
  }
  todosBuilder.todos.remove(id);

  return todosBuilder.build();
}

TodoState readTodo(TodoState state, SuccessReadTodoAction action) {
  List<String> completeIds = <String>[];
  List<String> incompleteIds = <String>[];
  Map<String, Todo> todos = <String, Todo>{};
  action.todos.forEach((todo) {
    todos[todo.id] = todo;

    if (todo.isComplete) {
      completeIds.add(todo.id);
    } else {
      incompleteIds.add(todo.id);
    }
  });

  final TodoState todoState = TodoState((builder) => builder
    ..todos = todos.build().toBuilder()
    ..completeIds = completeIds.build().toBuilder()
    ..incompleteIds = incompleteIds.build().toBuilder());

  return todoState;
}

TodoState createTodo(TodoState state, SuccessCreateTodoAction action) {
  final todo = action.todo;
  final todosBuilder = state.toBuilder();
  todosBuilder.incompleteIds.add(todo.id);
  todosBuilder.todos[todo.id] = todo;

  return todosBuilder.build();
}

//Refactor to split into change status function and change name
TodoState updateTodo(TodoState state, SuccessUpdateTodoAction action) {
  final updatedTodo = action.updatedTodo;
  final oldTodo = state.todos[updatedTodo.id];
  final todosBuilder = state.toBuilder();

  if (oldTodo != null) {
    //Change Status
    if (updatedTodo.isComplete != oldTodo.isComplete) {
      if (updatedTodo.isComplete) {
        todosBuilder.completeIds.add(updatedTodo.id);
        todosBuilder.incompleteIds.remove(updatedTodo.id);
      } else {
        todosBuilder.incompleteIds.add(updatedTodo.id);
        todosBuilder.completeIds.remove(updatedTodo.id);
      }
      //Change Name
    }
    todosBuilder.todos[updatedTodo.id] = updatedTodo;
  }

  return todosBuilder.build();
}
