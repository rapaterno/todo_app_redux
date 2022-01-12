// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Todo> _$todoSerializer = new _$TodoSerializer();

class _$TodoSerializer implements StructuredSerializer<Todo> {
  @override
  final Iterable<Type> types = const [Todo, _$Todo];
  @override
  final String wireName = 'Todo';

  @override
  Iterable<Object?> serialize(Serializers serializers, Todo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'isComplete',
      serializers.serialize(object.isComplete,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Todo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isComplete':
          result.isComplete = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Todo extends Todo {
  @override
  final String id;
  @override
  final String name;
  @override
  final bool isComplete;

  factory _$Todo([void Function(TodoBuilder)? updates]) =>
      (new TodoBuilder()..update(updates)).build();

  _$Todo._({required this.id, required this.name, required this.isComplete})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Todo', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Todo', 'name');
    BuiltValueNullFieldError.checkNotNull(isComplete, 'Todo', 'isComplete');
  }

  @override
  Todo rebuild(void Function(TodoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoBuilder toBuilder() => new TodoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Todo &&
        id == other.id &&
        name == other.name &&
        isComplete == other.isComplete;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), name.hashCode), isComplete.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Todo')
          ..add('id', id)
          ..add('name', name)
          ..add('isComplete', isComplete))
        .toString();
  }
}

class TodoBuilder implements Builder<Todo, TodoBuilder> {
  _$Todo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isComplete;
  bool? get isComplete => _$this._isComplete;
  set isComplete(bool? isComplete) => _$this._isComplete = isComplete;

  TodoBuilder();

  TodoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _isComplete = $v.isComplete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Todo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Todo;
  }

  @override
  void update(void Function(TodoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Todo build() {
    final _$result = _$v ??
        new _$Todo._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Todo', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, 'Todo', 'name'),
            isComplete: BuiltValueNullFieldError.checkNotNull(
                isComplete, 'Todo', 'isComplete'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
