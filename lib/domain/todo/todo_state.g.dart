// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoState extends TodoState {
  @override
  final BuiltMap<String, Todo> todos;
  @override
  final BuiltList<String> completeIds;
  @override
  final BuiltList<String> incompleteIds;

  factory _$TodoState([void Function(TodoStateBuilder)? updates]) =>
      (new TodoStateBuilder()..update(updates)).build();

  _$TodoState._(
      {required this.todos,
      required this.completeIds,
      required this.incompleteIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(todos, 'TodoState', 'todos');
    BuiltValueNullFieldError.checkNotNull(
        completeIds, 'TodoState', 'completeIds');
    BuiltValueNullFieldError.checkNotNull(
        incompleteIds, 'TodoState', 'incompleteIds');
  }

  @override
  TodoState rebuild(void Function(TodoStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoStateBuilder toBuilder() => new TodoStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoState &&
        todos == other.todos &&
        completeIds == other.completeIds &&
        incompleteIds == other.incompleteIds;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, todos.hashCode), completeIds.hashCode),
        incompleteIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoState')
          ..add('todos', todos)
          ..add('completeIds', completeIds)
          ..add('incompleteIds', incompleteIds))
        .toString();
  }
}

class TodoStateBuilder implements Builder<TodoState, TodoStateBuilder> {
  _$TodoState? _$v;

  MapBuilder<String, Todo>? _todos;
  MapBuilder<String, Todo> get todos =>
      _$this._todos ??= new MapBuilder<String, Todo>();
  set todos(MapBuilder<String, Todo>? todos) => _$this._todos = todos;

  ListBuilder<String>? _completeIds;
  ListBuilder<String> get completeIds =>
      _$this._completeIds ??= new ListBuilder<String>();
  set completeIds(ListBuilder<String>? completeIds) =>
      _$this._completeIds = completeIds;

  ListBuilder<String>? _incompleteIds;
  ListBuilder<String> get incompleteIds =>
      _$this._incompleteIds ??= new ListBuilder<String>();
  set incompleteIds(ListBuilder<String>? incompleteIds) =>
      _$this._incompleteIds = incompleteIds;

  TodoStateBuilder();

  TodoStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todos = $v.todos.toBuilder();
      _completeIds = $v.completeIds.toBuilder();
      _incompleteIds = $v.incompleteIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoState;
  }

  @override
  void update(void Function(TodoStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoState build() {
    _$TodoState _$result;
    try {
      _$result = _$v ??
          new _$TodoState._(
              todos: todos.build(),
              completeIds: completeIds.build(),
              incompleteIds: incompleteIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
        _$failedField = 'completeIds';
        completeIds.build();
        _$failedField = 'incompleteIds';
        incompleteIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TodoState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
