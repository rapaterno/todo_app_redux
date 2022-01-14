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

class _$SetDeleteStatus extends SetDeleteStatus {
  @override
  final Status status;

  factory _$SetDeleteStatus([void Function(SetDeleteStatusBuilder)? updates]) =>
      (new SetDeleteStatusBuilder()..update(updates)).build();

  _$SetDeleteStatus._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'SetDeleteStatus', 'status');
  }

  @override
  SetDeleteStatus rebuild(void Function(SetDeleteStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetDeleteStatusBuilder toBuilder() =>
      new SetDeleteStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetDeleteStatus && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetDeleteStatus')
          ..add('status', status))
        .toString();
  }
}

class SetDeleteStatusBuilder
    implements Builder<SetDeleteStatus, SetDeleteStatusBuilder> {
  _$SetDeleteStatus? _$v;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  SetDeleteStatusBuilder();

  SetDeleteStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetDeleteStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetDeleteStatus;
  }

  @override
  void update(void Function(SetDeleteStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetDeleteStatus build() {
    final _$result = _$v ??
        new _$SetDeleteStatus._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'SetDeleteStatus', 'status'));
    replace(_$result);
    return _$result;
  }
}

class _$SetUpdateStatus extends SetUpdateStatus {
  @override
  final Status status;
  @override
  final int id;

  factory _$SetUpdateStatus([void Function(SetUpdateStatusBuilder)? updates]) =>
      (new SetUpdateStatusBuilder()..update(updates)).build();

  _$SetUpdateStatus._({required this.status, required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'SetUpdateStatus', 'status');
    BuiltValueNullFieldError.checkNotNull(id, 'SetUpdateStatus', 'id');
  }

  @override
  SetUpdateStatus rebuild(void Function(SetUpdateStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetUpdateStatusBuilder toBuilder() =>
      new SetUpdateStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetUpdateStatus && status == other.status && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetUpdateStatus')
          ..add('status', status)
          ..add('id', id))
        .toString();
  }
}

class SetUpdateStatusBuilder
    implements Builder<SetUpdateStatus, SetUpdateStatusBuilder> {
  _$SetUpdateStatus? _$v;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  SetUpdateStatusBuilder();

  SetUpdateStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetUpdateStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetUpdateStatus;
  }

  @override
  void update(void Function(SetUpdateStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetUpdateStatus build() {
    final _$result = _$v ??
        new _$SetUpdateStatus._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'SetUpdateStatus', 'status'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'SetUpdateStatus', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$SetReadTodosStatus extends SetReadTodosStatus {
  @override
  final Status status;

  factory _$SetReadTodosStatus(
          [void Function(SetReadTodosStatusBuilder)? updates]) =>
      (new SetReadTodosStatusBuilder()..update(updates)).build();

  _$SetReadTodosStatus._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'SetReadTodosStatus', 'status');
  }

  @override
  SetReadTodosStatus rebuild(
          void Function(SetReadTodosStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetReadTodosStatusBuilder toBuilder() =>
      new SetReadTodosStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetReadTodosStatus && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetReadTodosStatus')
          ..add('status', status))
        .toString();
  }
}

class SetReadTodosStatusBuilder
    implements Builder<SetReadTodosStatus, SetReadTodosStatusBuilder> {
  _$SetReadTodosStatus? _$v;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  SetReadTodosStatusBuilder();

  SetReadTodosStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetReadTodosStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetReadTodosStatus;
  }

  @override
  void update(void Function(SetReadTodosStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetReadTodosStatus build() {
    final _$result = _$v ??
        new _$SetReadTodosStatus._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'SetReadTodosStatus', 'status'));
    replace(_$result);
    return _$result;
  }
}

class _$SetSaveStatus extends SetSaveStatus {
  @override
  final Status status;

  factory _$SetSaveStatus([void Function(SetSaveStatusBuilder)? updates]) =>
      (new SetSaveStatusBuilder()..update(updates)).build();

  _$SetSaveStatus._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'SetSaveStatus', 'status');
  }

  @override
  SetSaveStatus rebuild(void Function(SetSaveStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetSaveStatusBuilder toBuilder() => new SetSaveStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetSaveStatus && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetSaveStatus')..add('status', status))
        .toString();
  }
}

class SetSaveStatusBuilder
    implements Builder<SetSaveStatus, SetSaveStatusBuilder> {
  _$SetSaveStatus? _$v;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  SetSaveStatusBuilder();

  SetSaveStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSaveStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetSaveStatus;
  }

  @override
  void update(void Function(SetSaveStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetSaveStatus build() {
    final _$result = _$v ??
        new _$SetSaveStatus._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'SetSaveStatus', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
