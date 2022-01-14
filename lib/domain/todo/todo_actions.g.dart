// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoCreateMiddlewareTodoAction extends DoCreateMiddlewareTodoAction {
  @override
  final String statusKey;
  @override
  final String name;
  @override
  final bool isComplete;

  factory _$DoCreateMiddlewareTodoAction(
          [void Function(DoCreateMiddlewareTodoActionBuilder)? updates]) =>
      (new DoCreateMiddlewareTodoActionBuilder()..update(updates)).build();

  _$DoCreateMiddlewareTodoAction._(
      {required this.statusKey, required this.name, required this.isComplete})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'DoCreateMiddlewareTodoAction', 'statusKey');
    BuiltValueNullFieldError.checkNotNull(
        name, 'DoCreateMiddlewareTodoAction', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isComplete, 'DoCreateMiddlewareTodoAction', 'isComplete');
  }

  @override
  DoCreateMiddlewareTodoAction rebuild(
          void Function(DoCreateMiddlewareTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoCreateMiddlewareTodoActionBuilder toBuilder() =>
      new DoCreateMiddlewareTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoCreateMiddlewareTodoAction &&
        statusKey == other.statusKey &&
        name == other.name &&
        isComplete == other.isComplete;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, statusKey.hashCode), name.hashCode), isComplete.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoCreateMiddlewareTodoAction')
          ..add('statusKey', statusKey)
          ..add('name', name)
          ..add('isComplete', isComplete))
        .toString();
  }
}

class DoCreateMiddlewareTodoActionBuilder
    implements
        Builder<DoCreateMiddlewareTodoAction,
            DoCreateMiddlewareTodoActionBuilder> {
  _$DoCreateMiddlewareTodoAction? _$v;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isComplete;
  bool? get isComplete => _$this._isComplete;
  set isComplete(bool? isComplete) => _$this._isComplete = isComplete;

  DoCreateMiddlewareTodoActionBuilder();

  DoCreateMiddlewareTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusKey = $v.statusKey;
      _name = $v.name;
      _isComplete = $v.isComplete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoCreateMiddlewareTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoCreateMiddlewareTodoAction;
  }

  @override
  void update(void Function(DoCreateMiddlewareTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoCreateMiddlewareTodoAction build() {
    final _$result = _$v ??
        new _$DoCreateMiddlewareTodoAction._(
            statusKey: BuiltValueNullFieldError.checkNotNull(
                statusKey, 'DoCreateMiddlewareTodoAction', 'statusKey'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'DoCreateMiddlewareTodoAction', 'name'),
            isComplete: BuiltValueNullFieldError.checkNotNull(
                isComplete, 'DoCreateMiddlewareTodoAction', 'isComplete'));
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

class _$ErrorCreateTodoAction extends ErrorCreateTodoAction {
  @override
  final String error;

  factory _$ErrorCreateTodoAction(
          [void Function(ErrorCreateTodoActionBuilder)? updates]) =>
      (new ErrorCreateTodoActionBuilder()..update(updates)).build();

  _$ErrorCreateTodoAction._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'ErrorCreateTodoAction', 'error');
  }

  @override
  ErrorCreateTodoAction rebuild(
          void Function(ErrorCreateTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorCreateTodoActionBuilder toBuilder() =>
      new ErrorCreateTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorCreateTodoAction && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorCreateTodoAction')
          ..add('error', error))
        .toString();
  }
}

class ErrorCreateTodoActionBuilder
    implements Builder<ErrorCreateTodoAction, ErrorCreateTodoActionBuilder> {
  _$ErrorCreateTodoAction? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ErrorCreateTodoActionBuilder();

  ErrorCreateTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorCreateTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorCreateTodoAction;
  }

  @override
  void update(void Function(ErrorCreateTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorCreateTodoAction build() {
    final _$result = _$v ??
        new _$ErrorCreateTodoAction._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'ErrorCreateTodoAction', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$DoReadTodoMiddlewareAction extends DoReadTodoMiddlewareAction {
  @override
  final String statusKey;

  factory _$DoReadTodoMiddlewareAction(
          [void Function(DoReadTodoMiddlewareActionBuilder)? updates]) =>
      (new DoReadTodoMiddlewareActionBuilder()..update(updates)).build();

  _$DoReadTodoMiddlewareAction._({required this.statusKey}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'DoReadTodoMiddlewareAction', 'statusKey');
  }

  @override
  DoReadTodoMiddlewareAction rebuild(
          void Function(DoReadTodoMiddlewareActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoReadTodoMiddlewareActionBuilder toBuilder() =>
      new DoReadTodoMiddlewareActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoReadTodoMiddlewareAction && statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc(0, statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoReadTodoMiddlewareAction')
          ..add('statusKey', statusKey))
        .toString();
  }
}

class DoReadTodoMiddlewareActionBuilder
    implements
        Builder<DoReadTodoMiddlewareAction, DoReadTodoMiddlewareActionBuilder> {
  _$DoReadTodoMiddlewareAction? _$v;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  DoReadTodoMiddlewareActionBuilder();

  DoReadTodoMiddlewareActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoReadTodoMiddlewareAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoReadTodoMiddlewareAction;
  }

  @override
  void update(void Function(DoReadTodoMiddlewareActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoReadTodoMiddlewareAction build() {
    final _$result = _$v ??
        new _$DoReadTodoMiddlewareAction._(
            statusKey: BuiltValueNullFieldError.checkNotNull(
                statusKey, 'DoReadTodoMiddlewareAction', 'statusKey'));
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

class _$ErrorReadTodoAction extends ErrorReadTodoAction {
  @override
  final String error;

  factory _$ErrorReadTodoAction(
          [void Function(ErrorReadTodoActionBuilder)? updates]) =>
      (new ErrorReadTodoActionBuilder()..update(updates)).build();

  _$ErrorReadTodoAction._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'ErrorReadTodoAction', 'error');
  }

  @override
  ErrorReadTodoAction rebuild(
          void Function(ErrorReadTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorReadTodoActionBuilder toBuilder() =>
      new ErrorReadTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorReadTodoAction && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorReadTodoAction')
          ..add('error', error))
        .toString();
  }
}

class ErrorReadTodoActionBuilder
    implements Builder<ErrorReadTodoAction, ErrorReadTodoActionBuilder> {
  _$ErrorReadTodoAction? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ErrorReadTodoActionBuilder();

  ErrorReadTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorReadTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorReadTodoAction;
  }

  @override
  void update(void Function(ErrorReadTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorReadTodoAction build() {
    final _$result = _$v ??
        new _$ErrorReadTodoAction._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'ErrorReadTodoAction', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$DoUpdateTodoMiddlewareAction extends DoUpdateTodoMiddlewareAction {
  @override
  final String statusKey;
  @override
  final Todo updatedTodo;

  factory _$DoUpdateTodoMiddlewareAction(
          [void Function(DoUpdateTodoMiddlewareActionBuilder)? updates]) =>
      (new DoUpdateTodoMiddlewareActionBuilder()..update(updates)).build();

  _$DoUpdateTodoMiddlewareAction._(
      {required this.statusKey, required this.updatedTodo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'DoUpdateTodoMiddlewareAction', 'statusKey');
    BuiltValueNullFieldError.checkNotNull(
        updatedTodo, 'DoUpdateTodoMiddlewareAction', 'updatedTodo');
  }

  @override
  DoUpdateTodoMiddlewareAction rebuild(
          void Function(DoUpdateTodoMiddlewareActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoUpdateTodoMiddlewareActionBuilder toBuilder() =>
      new DoUpdateTodoMiddlewareActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoUpdateTodoMiddlewareAction &&
        statusKey == other.statusKey &&
        updatedTodo == other.updatedTodo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusKey.hashCode), updatedTodo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoUpdateTodoMiddlewareAction')
          ..add('statusKey', statusKey)
          ..add('updatedTodo', updatedTodo))
        .toString();
  }
}

class DoUpdateTodoMiddlewareActionBuilder
    implements
        Builder<DoUpdateTodoMiddlewareAction,
            DoUpdateTodoMiddlewareActionBuilder> {
  _$DoUpdateTodoMiddlewareAction? _$v;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  TodoBuilder? _updatedTodo;
  TodoBuilder get updatedTodo => _$this._updatedTodo ??= new TodoBuilder();
  set updatedTodo(TodoBuilder? updatedTodo) =>
      _$this._updatedTodo = updatedTodo;

  DoUpdateTodoMiddlewareActionBuilder();

  DoUpdateTodoMiddlewareActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusKey = $v.statusKey;
      _updatedTodo = $v.updatedTodo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoUpdateTodoMiddlewareAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoUpdateTodoMiddlewareAction;
  }

  @override
  void update(void Function(DoUpdateTodoMiddlewareActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoUpdateTodoMiddlewareAction build() {
    _$DoUpdateTodoMiddlewareAction _$result;
    try {
      _$result = _$v ??
          new _$DoUpdateTodoMiddlewareAction._(
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'DoUpdateTodoMiddlewareAction', 'statusKey'),
              updatedTodo: updatedTodo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatedTodo';
        updatedTodo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoUpdateTodoMiddlewareAction', _$failedField, e.toString());
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

class _$ErrorUpdateTodoAction extends ErrorUpdateTodoAction {
  @override
  final String error;

  factory _$ErrorUpdateTodoAction(
          [void Function(ErrorUpdateTodoActionBuilder)? updates]) =>
      (new ErrorUpdateTodoActionBuilder()..update(updates)).build();

  _$ErrorUpdateTodoAction._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'ErrorUpdateTodoAction', 'error');
  }

  @override
  ErrorUpdateTodoAction rebuild(
          void Function(ErrorUpdateTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorUpdateTodoActionBuilder toBuilder() =>
      new ErrorUpdateTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorUpdateTodoAction && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorUpdateTodoAction')
          ..add('error', error))
        .toString();
  }
}

class ErrorUpdateTodoActionBuilder
    implements Builder<ErrorUpdateTodoAction, ErrorUpdateTodoActionBuilder> {
  _$ErrorUpdateTodoAction? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ErrorUpdateTodoActionBuilder();

  ErrorUpdateTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorUpdateTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorUpdateTodoAction;
  }

  @override
  void update(void Function(ErrorUpdateTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorUpdateTodoAction build() {
    final _$result = _$v ??
        new _$ErrorUpdateTodoAction._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'ErrorUpdateTodoAction', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$DoDeleteTodoMiddlewareAction extends DoDeleteTodoMiddlewareAction {
  @override
  final String statusKey;
  @override
  final Todo deletedTodo;

  factory _$DoDeleteTodoMiddlewareAction(
          [void Function(DoDeleteTodoMiddlewareActionBuilder)? updates]) =>
      (new DoDeleteTodoMiddlewareActionBuilder()..update(updates)).build();

  _$DoDeleteTodoMiddlewareAction._(
      {required this.statusKey, required this.deletedTodo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'DoDeleteTodoMiddlewareAction', 'statusKey');
    BuiltValueNullFieldError.checkNotNull(
        deletedTodo, 'DoDeleteTodoMiddlewareAction', 'deletedTodo');
  }

  @override
  DoDeleteTodoMiddlewareAction rebuild(
          void Function(DoDeleteTodoMiddlewareActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoDeleteTodoMiddlewareActionBuilder toBuilder() =>
      new DoDeleteTodoMiddlewareActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoDeleteTodoMiddlewareAction &&
        statusKey == other.statusKey &&
        deletedTodo == other.deletedTodo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusKey.hashCode), deletedTodo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoDeleteTodoMiddlewareAction')
          ..add('statusKey', statusKey)
          ..add('deletedTodo', deletedTodo))
        .toString();
  }
}

class DoDeleteTodoMiddlewareActionBuilder
    implements
        Builder<DoDeleteTodoMiddlewareAction,
            DoDeleteTodoMiddlewareActionBuilder> {
  _$DoDeleteTodoMiddlewareAction? _$v;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  TodoBuilder? _deletedTodo;
  TodoBuilder get deletedTodo => _$this._deletedTodo ??= new TodoBuilder();
  set deletedTodo(TodoBuilder? deletedTodo) =>
      _$this._deletedTodo = deletedTodo;

  DoDeleteTodoMiddlewareActionBuilder();

  DoDeleteTodoMiddlewareActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusKey = $v.statusKey;
      _deletedTodo = $v.deletedTodo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoDeleteTodoMiddlewareAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoDeleteTodoMiddlewareAction;
  }

  @override
  void update(void Function(DoDeleteTodoMiddlewareActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoDeleteTodoMiddlewareAction build() {
    _$DoDeleteTodoMiddlewareAction _$result;
    try {
      _$result = _$v ??
          new _$DoDeleteTodoMiddlewareAction._(
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'DoDeleteTodoMiddlewareAction', 'statusKey'),
              deletedTodo: deletedTodo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deletedTodo';
        deletedTodo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoDeleteTodoMiddlewareAction', _$failedField, e.toString());
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

class _$ErrorDeleteTodoAction extends ErrorDeleteTodoAction {
  @override
  final String error;

  factory _$ErrorDeleteTodoAction(
          [void Function(ErrorDeleteTodoActionBuilder)? updates]) =>
      (new ErrorDeleteTodoActionBuilder()..update(updates)).build();

  _$ErrorDeleteTodoAction._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'ErrorDeleteTodoAction', 'error');
  }

  @override
  ErrorDeleteTodoAction rebuild(
          void Function(ErrorDeleteTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorDeleteTodoActionBuilder toBuilder() =>
      new ErrorDeleteTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorDeleteTodoAction && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorDeleteTodoAction')
          ..add('error', error))
        .toString();
  }
}

class ErrorDeleteTodoActionBuilder
    implements Builder<ErrorDeleteTodoAction, ErrorDeleteTodoActionBuilder> {
  _$ErrorDeleteTodoAction? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ErrorDeleteTodoActionBuilder();

  ErrorDeleteTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorDeleteTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorDeleteTodoAction;
  }

  @override
  void update(void Function(ErrorDeleteTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorDeleteTodoAction build() {
    final _$result = _$v ??
        new _$ErrorDeleteTodoAction._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'ErrorDeleteTodoAction', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$SetTodoStatusAction extends SetTodoStatusAction {
  @override
  final Status status;
  @override
  final String statusKey;

  factory _$SetTodoStatusAction(
          [void Function(SetTodoStatusActionBuilder)? updates]) =>
      (new SetTodoStatusActionBuilder()..update(updates)).build();

  _$SetTodoStatusAction._({required this.status, required this.statusKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'SetTodoStatusAction', 'status');
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'SetTodoStatusAction', 'statusKey');
  }

  @override
  SetTodoStatusAction rebuild(
          void Function(SetTodoStatusActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetTodoStatusActionBuilder toBuilder() =>
      new SetTodoStatusActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetTodoStatusAction &&
        status == other.status &&
        statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetTodoStatusAction')
          ..add('status', status)
          ..add('statusKey', statusKey))
        .toString();
  }
}

class SetTodoStatusActionBuilder
    implements Builder<SetTodoStatusAction, SetTodoStatusActionBuilder> {
  _$SetTodoStatusAction? _$v;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  SetTodoStatusActionBuilder();

  SetTodoStatusActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetTodoStatusAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetTodoStatusAction;
  }

  @override
  void update(void Function(SetTodoStatusActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetTodoStatusAction build() {
    final _$result = _$v ??
        new _$SetTodoStatusAction._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'SetTodoStatusAction', 'status'),
            statusKey: BuiltValueNullFieldError.checkNotNull(
                statusKey, 'SetTodoStatusAction', 'statusKey'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
