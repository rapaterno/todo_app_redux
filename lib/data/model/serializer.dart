import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:todo_app_redux/data/model/todo.dart';

part 'serializer.g.dart';

@SerializersFor(const [
  Todo,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
