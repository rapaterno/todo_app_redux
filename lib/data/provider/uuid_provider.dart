import 'package:uuid/uuid.dart';

abstract class AbstractUuidProvider {
  String generateUuid();
}

class UuidProvider implements AbstractUuidProvider {
  @override
  String generateUuid() {
    final uuid = Uuid();
    final id = uuid.v1();
    return id;
  }
}
