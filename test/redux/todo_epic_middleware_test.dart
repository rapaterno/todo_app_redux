import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/domain/todo/todo_epic_middleware.dart';

import '../mocks.dart';
import 'mock_todos.dart';
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
        'should respond SuccessCreateTodoAction in response to DoCreateTodoAction',
        () async {
      // Given
      final todo = Todo((todo) => todo
        ..id = 'id'
        ..name = 'Todo 1'
        ..isComplete = false);

      final action = DoCreateTodoAction((updates) => updates
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
        SuccessCreateTodoAction((updates) => updates..todo = todo.toBuilder())
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

      final action = DoCreateTodoAction((updates) => updates
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
        ErrorCreateTodoAction((updates) => updates..error = Error().toString())
      ]);
    });
    test(
        'should respond SuccessReadTodoAction in response to DoReadTodosAction',
        () async {
      // Given

      final action = DoReadTodoAction((updates) => updates);

      // When
      when(mockRepository.read())
          .thenAnswer((realInvocation) => Future.value(mockTodos));

      Stream<dynamic> actual = middleware.call(
        Stream.fromIterable([action]).asBroadcastStream(),
        EpicStore<AppState>(mockStore),
      );

      //Then
      expect(await actual.toList(), [
        SuccessReadTodoAction(
            (updates) => updates..todos = mockTodos.build().toBuilder())
      ]);
    });

    test(
        'should respond SuccessUpdateTodoAction in response to DoUpdateTodosAction',
        () async {
      // Given
      final modifiedTodoBuilder = mockTodos[1].toBuilder();
      modifiedTodoBuilder.isComplete = !mockTodos[1].isComplete;

      final action = DoUpdateTodoAction(
          (updates) => updates..updatedTodo = modifiedTodoBuilder);

      // When
      when(mockRepository.update(modifiedTodoBuilder.build()))
          .thenAnswer((realInvocation) => Future.value());

      Stream<dynamic> actual = middleware.call(
        Stream.fromIterable([action]).asBroadcastStream(),
        EpicStore<AppState>(mockStore),
      );

      //Then
      expect(await actual.toList(), [
        SuccessUpdateTodoAction(
            (updates) => updates..updatedTodo = modifiedTodoBuilder)
      ]);
    });

    test(
        'should respond SuccessDeleteTodoAction in response to DoDeleteTodoAction',
        () async {
      //Given
      final deletedTodo = mockTodos[1].toBuilder();
      final action =
          DoDeleteTodoAction((updates) => updates..deletedTodo = deletedTodo);

      // When
      when(mockRepository.delete(deletedTodo.build()))
          .thenAnswer((realInvocation) => Future.value());

      Stream<dynamic> actual = middleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore(mockStore));

      // Then
      expect(await actual.toList(), [
        SuccessDeleteTodoAction((updates) => updates..deletedTodo = deletedTodo)
      ]);
    });
  });
}
