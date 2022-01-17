import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/domain/todo/todo_state.dart';

final Reducer<AppState> appReducer = combineReducers<AppState>([
  TypedReducer<AppState, SuccessDeleteTodoAction>(deleteTodo),
  TypedReducer<AppState, SuccessReadTodoAction>(readTodo),
  TypedReducer<AppState, SuccessCreateTodoAction>(createTodo),
  TypedReducer<AppState, SuccessUpdateTodoAction>(updateTodo),
  TypedReducer<AppState, SetTodoStatusAction>(setStatus)
]);

AppState deleteTodo(AppState state, SuccessDeleteTodoAction action) {
  final todosBuilder = state.todosState.toBuilder();
  final isComplete = action.deletedTodo.isComplete;
  final id = action.deletedTodo.id;

  if (isComplete) {
    todosBuilder.completeIds.removeWhere((_id) => _id == id);
  } else {
    todosBuilder.incompleteIds.removeWhere((_id) => _id == id);
  }
  todosBuilder.todos.remove(id);

  return state
      .rebuild((stateBuilder) => stateBuilder..todosState = todosBuilder);
}

AppState readTodo(AppState state, SuccessReadTodoAction action) {
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

  return state.rebuild(
      (stateBuilder) => stateBuilder..todosState = todoState.toBuilder());
}

AppState createTodo(AppState state, SuccessCreateTodoAction action) {
  final todo = action.todo;
  final todosBuilder = state.todosState.toBuilder();
  todosBuilder.incompleteIds.add(todo.id);
  todosBuilder.todos[todo.id] = todo;

  return state
      .rebuild((stateBuilder) => stateBuilder..todosState = todosBuilder);
}

//Refactor to split into change status function and change name
AppState updateTodo(AppState state, SuccessUpdateTodoAction action) {
  final updatedTodo = action.updatedTodo;
  final oldTodo = state.todosState.todos[updatedTodo.id];
  final todosBuilder = state.todosState.toBuilder();

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

  return state
      .rebuild((stateBuilder) => stateBuilder..todosState = todosBuilder);
}

AppState setStatus(AppState state, SetTodoStatusAction action) {
  return state.rebuild((stateBuilder) =>
      stateBuilder..statuses[action.statusKey] = action.status);
}
