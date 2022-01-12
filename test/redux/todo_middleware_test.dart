import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import 'package:todo_app_redux/data/model/todo.dart';
import 'package:todo_app_redux/data/provider/uuid_provider.dart';
import 'package:todo_app_redux/data/repository/todo_repository.dart';
import 'package:todo_app_redux/domain/todo/todo_actions.dart';
import 'package:todo_app_redux/domain/todo/todo_middleware.dart';
import 'package:todo_app_redux/domain/todo/todo_reducer.dart';

import 'todo_middleware_test.mocks.dart';

@GenerateMocks([AbstractTodoRepository, AbstractUuidProvider])
void main() {
  late MockAbstractTodoRepository mockRepository;
  late MockAbstractUuidProvider mockUuidProvider;
  late TodoMiddleware middleware;

  setUpAll(() {
    mockRepository = MockAbstractTodoRepository();
    mockUuidProvider = MockAbstractUuidProvider();
    middleware = TodoMiddleware(mockRepository, mockUuidProvider);
  });

  tearDownAll(() {});
  group('TodoMiddleware', () {
    test('should create todo in response to DoCreateTodoAction', () {
      // Given
      final store = new Store<BuiltList<Todo>>(todoReducer,
          initialState: <Todo>[].build(), middleware: [middleware]);

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
      //Then
      store.dispatch(action);

      verify(mockRepository.create(todo));
    });
  });
}
