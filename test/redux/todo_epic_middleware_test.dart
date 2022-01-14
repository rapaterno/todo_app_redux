import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_app_redux/data/enum/status.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/domain/todo/todo_epic_middleware.dart';

import '../mocks.dart';
import '../mock_todos.dart';
import 'todo_middleware_test.mocks.dart';

class MockStore extends Mock implements Store<AppState> {
  final BuiltList<Todo> todos;

  MockStore(this.todos);
}

void main() {
  late MockAbstractTodoRepository mockRepository;
  late MockAbstractUuidProvider mockUuidProvider;
  late TodoMiddleware middleware;
  late MockStore mockStore;

  setUpAll(() {
    mockRepository = MockAbstractTodoRepository();
    mockUuidProvider = MockAbstractUuidProvider();
    middleware = TodoMiddleware(mockRepository, mockUuidProvider);
  });

  setUp(() {
    mockStore = MockStore(<Todo>[].build());
  });

  group('TodoMiddleware', () {
    test(
        'should respond SuccessCreateTodoAction in response to DoCreateMiddlewareTodoAction',
        () async {
      // Given
      final todo = Todo((todo) => todo
        ..id = 'id'
        ..name = 'Todo 1'
        ..isComplete = false);

      final action = DoCreateMiddlewareTodoAction((updates) => updates
        ..statusKey = DoCreateMiddlewareTodoAction.createStatusKey()
        ..name = todo.name
        ..isComplete = todo.isComplete);

      // When
      when(mockRepository.create(todo))
          .thenAnswer((realInvocation) => Future.value());
      when(mockUuidProvider.generateUuid())
          .thenAnswer((realInvocation) => 'id');

      Stream<dynamic> actual = middleware.call(
        Stream.fromIterable([action]).asBroadcastStream(),
        EpicStore<AppState>(mockStore),
      );

      //Then
      expect(await actual.toList(), [
        SetTodoStatusAction((builder) => builder
          ..status = Status.loading
          ..statusKey = DoCreateMiddlewareTodoAction.createStatusKey()),
        SuccessCreateTodoAction((updates) => updates..todo = todo.toBuilder()),
        SetTodoStatusAction((builder) => builder
          ..status = Status.success
          ..statusKey = DoCreateMiddlewareTodoAction.createStatusKey()),
      ]);
    });

    test(
        'should respond with ErrorCreateTodoAction in response to repository error',
        () async {
      // Given
      final todo = Todo((todo) => todo
        ..id = 'id'
        ..name = 'Todo 1'
        ..isComplete = false);

      final action = DoCreateMiddlewareTodoAction((updates) => updates
        ..statusKey = DoCreateMiddlewareTodoAction.createStatusKey()
        ..name = todo.name
        ..isComplete = todo.isComplete);

      // When
      when(mockRepository.create(todo)).thenThrow(Error());
      when(mockUuidProvider.generateUuid())
          .thenAnswer((realInvocation) => 'id');

      Stream<dynamic> actual = middleware.call(
        Stream.fromIterable([action]).asBroadcastStream(),
        EpicStore<AppState>(mockStore),
      );

      //Then
      expect(await actual.toList(), [
        SetTodoStatusAction((builder) => builder
          ..status = Status.loading
          ..statusKey = DoCreateMiddlewareTodoAction.createStatusKey()),
        ErrorCreateTodoAction((updates) => updates..error = Error().toString()),
        SetTodoStatusAction((builder) => builder
          ..status = Status.error
          ..statusKey = DoCreateMiddlewareTodoAction.createStatusKey()),
      ]);
    });
    test(
        'should respond SuccessReadTodoAction in response to DoReadTodosAction',
        () async {
      // Given

      final action = DoReadTodoMiddlewareAction((updates) =>
          updates..statusKey = DoReadTodoMiddlewareAction.createStatusKey());

      // When
      when(mockRepository.read())
          .thenAnswer((realInvocation) => Future.value(mockTodos));

      Stream<dynamic> actual = middleware.call(
        Stream.fromIterable([action]).asBroadcastStream(),
        EpicStore<AppState>(mockStore),
      );

      //Then
      expect(await actual.toList(), [
        SetTodoStatusAction((builder) => builder
          ..status = Status.loading
          ..statusKey = DoReadTodoMiddlewareAction.createStatusKey()),
        SuccessReadTodoAction(
            (updates) => updates..todos = mockTodos.build().toBuilder()),
        SetTodoStatusAction((builder) => builder
          ..status = Status.success
          ..statusKey = DoReadTodoMiddlewareAction.createStatusKey()),
      ]);
    });

    test(
        'should respond SuccessUpdateTodoAction in response to DoUpdateTodosAction',
        () async {
      // Given
      final modifiedTodoBuilder = mockTodos[1].toBuilder();
      modifiedTodoBuilder.isComplete = !mockTodos[1].isComplete;
      final updatedTodo = modifiedTodoBuilder.build();
      final action = DoUpdateTodoMiddlewareAction((updates) => updates
        ..updatedTodo = modifiedTodoBuilder
        ..statusKey =
            DoUpdateTodoMiddlewareAction.createStatusKey(updatedTodo));

      // When
      when(mockRepository.update(modifiedTodoBuilder.build()))
          .thenAnswer((realInvocation) => Future.value());

      Stream<dynamic> actual = middleware.call(
        Stream.fromIterable([action]).asBroadcastStream(),
        EpicStore<AppState>(mockStore),
      );

      //Then
      expect(await actual.toList(), [
        SetTodoStatusAction((builder) => builder
          ..status = Status.loading
          ..statusKey =
              DoUpdateTodoMiddlewareAction.createStatusKey(updatedTodo)),
        SuccessUpdateTodoAction(
            (updates) => updates..updatedTodo = modifiedTodoBuilder),
        SetTodoStatusAction((builder) => builder
          ..status = Status.success
          ..statusKey =
              DoUpdateTodoMiddlewareAction.createStatusKey(updatedTodo)),
      ]);
    });

    test(
        'should respond SuccessDeleteTodoAction in response to DoDeleteTodoMiddlewareAction',
        () async {
      //Given
      final deletedTodo = mockTodos[1].toBuilder();
      final action = DoDeleteTodoMiddlewareAction((updates) => updates
        ..deletedTodo = deletedTodo
        ..statusKey = DoDeleteTodoMiddlewareAction.createStatusKey());

      // When
      when(mockRepository.delete(deletedTodo.build()))
          .thenAnswer((realInvocation) => Future.value());

      Stream<dynamic> actual = middleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore(mockStore));

      // Then
      expect(await actual.toList(), [
        SetTodoStatusAction((builder) => builder
          ..status = Status.loading
          ..statusKey = DoDeleteTodoMiddlewareAction.createStatusKey()),
        SuccessDeleteTodoAction(
            (updates) => updates..deletedTodo = deletedTodo),
        SetTodoStatusAction((builder) => builder
          ..status = Status.success
          ..statusKey = DoDeleteTodoMiddlewareAction.createStatusKey()),
      ]);
    });
  });
}
