// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoCreateTodoAction extends DoCreateTodoAction {
  @override
  final String name;
  @override
  final bool isComplete;

  factory _$DoCreateTodoAction(
          [void Function(DoCreateTodoActionBuilder)? updates]) =>
      (new DoCreateTodoActionBuilder()..update(updates)).build();

  _$DoCreateTodoAction._({required this.name, required this.isComplete})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'DoCreateTodoAction', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isComplete, 'DoCreateTodoAction', 'isComplete');
  }

  @override
  DoCreateTodoAction rebuild(
          void Function(DoCreateTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoCreateTodoActionBuilder toBuilder() =>
      new DoCreateTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoCreateTodoAction &&
        name == other.name &&
        isComplete == other.isComplete;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), isComplete.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoCreateTodoAction')
          ..add('name', name)
          ..add('isComplete', isComplete))
        .toString();
  }
}

class DoCreateTodoActionBuilder
    implements Builder<DoCreateTodoAction, DoCreateTodoActionBuilder> {
  _$DoCreateTodoAction? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isComplete;
  bool? get isComplete => _$this._isComplete;
  set isComplete(bool? isComplete) => _$this._isComplete = isComplete;

  DoCreateTodoActionBuilder();

  DoCreateTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _isComplete = $v.isComplete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoCreateTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoCreateTodoAction;
  }

  @override
  void update(void Function(DoCreateTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoCreateTodoAction build() {
    final _$result = _$v ??
        new _$DoCreateTodoAction._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'DoCreateTodoAction', 'name'),
            isComplete: BuiltValueNullFieldError.checkNotNull(
                isComplete, 'DoCreateTodoAction', 'isComplete'));
    replace(_$result);
    return _$result;
  }
}

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

class _$DoReadTodoAction extends DoReadTodoAction {
  factory _$DoReadTodoAction(
          [void Function(DoReadTodoActionBuilder)? updates]) =>
      (new DoReadTodoActionBuilder()..update(updates)).build();

  _$DoReadTodoAction._() : super._();

  @override
  DoReadTodoAction rebuild(void Function(DoReadTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoReadTodoActionBuilder toBuilder() =>
      new DoReadTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoReadTodoAction;
  }

  @override
  int get hashCode {
    return 588908073;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DoReadTodoAction').toString();
  }
}

class DoReadTodoActionBuilder
    implements Builder<DoReadTodoAction, DoReadTodoActionBuilder> {
  _$DoReadTodoAction? _$v;

  DoReadTodoActionBuilder();

  @override
  void replace(DoReadTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoReadTodoAction;
  }

  @override
  void update(void Function(DoReadTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoReadTodoAction build() {
    final _$result = _$v ?? new _$DoReadTodoAction._();
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

class _$DoUpdateTodoAction extends DoUpdateTodoAction {
  @override
  final Todo updatedTodo;

  factory _$DoUpdateTodoAction(
          [void Function(DoUpdateTodoActionBuilder)? updates]) =>
      (new DoUpdateTodoActionBuilder()..update(updates)).build();

  _$DoUpdateTodoAction._({required this.updatedTodo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        updatedTodo, 'DoUpdateTodoAction', 'updatedTodo');
  }

  @override
  DoUpdateTodoAction rebuild(
          void Function(DoUpdateTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoUpdateTodoActionBuilder toBuilder() =>
      new DoUpdateTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoUpdateTodoAction && updatedTodo == other.updatedTodo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, updatedTodo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoUpdateTodoAction')
          ..add('updatedTodo', updatedTodo))
        .toString();
  }
}

class DoUpdateTodoActionBuilder
    implements Builder<DoUpdateTodoAction, DoUpdateTodoActionBuilder> {
  _$DoUpdateTodoAction? _$v;

  TodoBuilder? _updatedTodo;
  TodoBuilder get updatedTodo => _$this._updatedTodo ??= new TodoBuilder();
  set updatedTodo(TodoBuilder? updatedTodo) =>
      _$this._updatedTodo = updatedTodo;

  DoUpdateTodoActionBuilder();

  DoUpdateTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _updatedTodo = $v.updatedTodo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoUpdateTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoUpdateTodoAction;
  }

  @override
  void update(void Function(DoUpdateTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoUpdateTodoAction build() {
    _$DoUpdateTodoAction _$result;
    try {
      _$result =
          _$v ?? new _$DoUpdateTodoAction._(updatedTodo: updatedTodo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatedTodo';
        updatedTodo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoUpdateTodoAction', _$failedField, e.toString());
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

class _$DoDeleteTodoAction extends DoDeleteTodoAction {
  @override
  final Todo deletedTodo;

  factory _$DoDeleteTodoAction(
          [void Function(DoDeleteTodoActionBuilder)? updates]) =>
      (new DoDeleteTodoActionBuilder()..update(updates)).build();

  _$DoDeleteTodoAction._({required this.deletedTodo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deletedTodo, 'DoDeleteTodoAction', 'deletedTodo');
  }

  @override
  DoDeleteTodoAction rebuild(
          void Function(DoDeleteTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoDeleteTodoActionBuilder toBuilder() =>
      new DoDeleteTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoDeleteTodoAction && deletedTodo == other.deletedTodo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, deletedTodo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoDeleteTodoAction')
          ..add('deletedTodo', deletedTodo))
        .toString();
  }
}

class DoDeleteTodoActionBuilder
    implements Builder<DoDeleteTodoAction, DoDeleteTodoActionBuilder> {
  _$DoDeleteTodoAction? _$v;

  TodoBuilder? _deletedTodo;
  TodoBuilder get deletedTodo => _$this._deletedTodo ??= new TodoBuilder();
  set deletedTodo(TodoBuilder? deletedTodo) =>
      _$this._deletedTodo = deletedTodo;

  DoDeleteTodoActionBuilder();

  DoDeleteTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deletedTodo = $v.deletedTodo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoDeleteTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoDeleteTodoAction;
  }

  @override
  void update(void Function(DoDeleteTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoDeleteTodoAction build() {
    _$DoDeleteTodoAction _$result;
    try {
      _$result =
          _$v ?? new _$DoDeleteTodoAction._(deletedTodo: deletedTodo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deletedTodo';
        deletedTodo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoDeleteTodoAction', _$failedField, e.toString());
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
