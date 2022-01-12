import 'package:mockito/mockito.dart';
import 'package:todo_app_redux/data/provider/uuid_provider.dart';
import 'package:todo_app_redux/data/repository/todo_repository.dart';

class MockTodoRepository extends Mock implements AbstractTodoRepository {}

class MockUuidProvider extends Mock implements AbstractUuidProvider {}
