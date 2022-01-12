// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SuccessCreateTodoAction extends SuccessCreateTodoAction {
  @override
  final Todo todo;

  factory _$SuccessCreateTodoAction(
          [void Function(SuccessCreateTodoActionBuilder)? updates]) =>
      (new SuccessCreateTodoActionBuilder()..update(updates)).build();

  _$SuccessCreateTodoAction._({required this.todo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todo, 'SuccessCreateTodoAction', 'todo');
  }

  @override
  SuccessCreateTodoAction rebuild(
          void Function(SuccessCreateTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessCreateTodoActionBuilder toBuilder() =>
      new SuccessCreateTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessCreateTodoAction && todo == other.todo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SuccessCreateTodoAction')
          ..add('todo', todo))
        .toString();
  }
}

class SuccessCreateTodoActionBuilder
    implements
        Builder<SuccessCreateTodoAction, SuccessCreateTodoActionBuilder> {
  _$SuccessCreateTodoAction? _$v;

  TodoBuilder? _todo;
  TodoBuilder get todo => _$this._todo ??= new TodoBuilder();
  set todo(TodoBuilder? todo) => _$this._todo = todo;

  SuccessCreateTodoActionBuilder();

  SuccessCreateTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessCreateTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessCreateTodoAction;
  }

  @override
  void update(void Function(SuccessCreateTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SuccessCreateTodoAction build() {
    _$SuccessCreateTodoAction _$result;
    try {
      _$result = _$v ?? new _$SuccessCreateTodoAction._(todo: todo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SuccessCreateTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SuccessReadTodoAction extends SuccessReadTodoAction {
  @override
  final BuiltList<Todo> todos;

  factory _$SuccessReadTodoAction(
          [void Function(SuccessReadTodoActionBuilder)? updates]) =>
      (new SuccessReadTodoActionBuilder()..update(updates)).build();

  _$SuccessReadTodoAction._({required this.todos}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todos, 'SuccessReadTodoAction', 'todos');
  }

  @override
  SuccessReadTodoAction rebuild(
          void Function(SuccessReadTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessReadTodoActionBuilder toBuilder() =>
      new SuccessReadTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessReadTodoAction && todos == other.todos;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SuccessReadTodoAction')
          ..add('todos', todos))
        .toString();
  }
}

class SuccessReadTodoActionBuilder
    implements Builder<SuccessReadTodoAction, SuccessReadTodoActionBuilder> {
  _$SuccessReadTodoAction? _$v;

  ListBuilder<Todo>? _todos;
  ListBuilder<Todo> get todos => _$this._todos ??= new ListBuilder<Todo>();
  set todos(ListBuilder<Todo>? todos) => _$this._todos = todos;

  SuccessReadTodoActionBuilder();

  SuccessReadTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todos = $v.todos.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessReadTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessReadTodoAction;
  }

  @override
  void update(void Function(SuccessReadTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SuccessReadTodoAction build() {
    _$SuccessReadTodoAction _$result;
    try {
      _$result = _$v ?? new _$SuccessReadTodoAction._(todos: todos.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SuccessReadTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SuccessUpdateTodoAction extends SuccessUpdateTodoAction {
  @override
  final Todo updatedTodo;

  factory _$SuccessUpdateTodoAction(
          [void Function(SuccessUpdateTodoActionBuilder)? updates]) =>
      (new SuccessUpdateTodoActionBuilder()..update(updates)).build();

  _$SuccessUpdateTodoAction._({required this.updatedTodo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        updatedTodo, 'SuccessUpdateTodoAction', 'updatedTodo');
  }

  @override
  SuccessUpdateTodoAction rebuild(
          void Function(SuccessUpdateTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessUpdateTodoActionBuilder toBuilder() =>
      new SuccessUpdateTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessUpdateTodoAction && updatedTodo == other.updatedTodo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, updatedTodo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SuccessUpdateTodoAction')
          ..add('updatedTodo', updatedTodo))
        .toString();
  }
}

class SuccessUpdateTodoActionBuilder
    implements
        Builder<SuccessUpdateTodoAction, SuccessUpdateTodoActionBuilder> {
  _$SuccessUpdateTodoAction? _$v;

  TodoBuilder? _updatedTodo;
  TodoBuilder get updatedTodo => _$this._updatedTodo ??= new TodoBuilder();
  set updatedTodo(TodoBuilder? updatedTodo) =>
      _$this._updatedTodo = updatedTodo;

  SuccessUpdateTodoActionBuilder();

  SuccessUpdateTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _updatedTodo = $v.updatedTodo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessUpdateTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessUpdateTodoAction;
  }

  @override
  void update(void Function(SuccessUpdateTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SuccessUpdateTodoAction build() {
    _$SuccessUpdateTodoAction _$result;
    try {
      _$result = _$v ??
          new _$SuccessUpdateTodoAction._(updatedTodo: updatedTodo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatedTodo';
        updatedTodo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SuccessUpdateTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SuccessDeleteTodoAction extends SuccessDeleteTodoAction {
  @override
  final Todo deletedTodo;

  factory _$SuccessDeleteTodoAction(
          [void Function(SuccessDeleteTodoActionBuilder)? updates]) =>
      (new SuccessDeleteTodoActionBuilder()..update(updates)).build();

  _$SuccessDeleteTodoAction._({required this.deletedTodo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deletedTodo, 'SuccessDeleteTodoAction', 'deletedTodo');
  }

  @override
  SuccessDeleteTodoAction rebuild(
          void Function(SuccessDeleteTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessDeleteTodoActionBuilder toBuilder() =>
      new SuccessDeleteTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessDeleteTodoAction && deletedTodo == other.deletedTodo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, deletedTodo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SuccessDeleteTodoAction')
          ..add('deletedTodo', deletedTodo))
        .toString();
  }
}

class SuccessDeleteTodoActionBuilder
    implements
        Builder<SuccessDeleteTodoAction, SuccessDeleteTodoActionBuilder> {
  _$SuccessDeleteTodoAction? _$v;

  TodoBuilder? _deletedTodo;
  TodoBuilder get deletedTodo => _$this._deletedTodo ??= new TodoBuilder();
  set deletedTodo(TodoBuilder? deletedTodo) =>
      _$this._deletedTodo = deletedTodo;

  SuccessDeleteTodoActionBuilder();

  SuccessDeleteTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deletedTodo = $v.deletedTodo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessDeleteTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessDeleteTodoAction;
  }

  @override
  void update(void Function(SuccessDeleteTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SuccessDeleteTodoAction build() {
    _$SuccessDeleteTodoAction _$result;
    try {
      _$result = _$v ??
          new _$SuccessDeleteTodoAction._(deletedTodo: deletedTodo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deletedTodo';
        deletedTodo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SuccessDeleteTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
