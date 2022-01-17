// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoViewModel extends TodoViewModel {
  @override
  final BuiltList<Todo> todos;
  @override
  final Function(Todo) onCheckboxTapped;
  @override
  final Function(Todo, String) onTodoEdited;
  @override
  final Status status;

  factory _$TodoViewModel([void Function(TodoViewModelBuilder)? updates]) =>
      (new TodoViewModelBuilder()..update(updates)).build();

  _$TodoViewModel._(
      {required this.todos,
      required this.onCheckboxTapped,
      required this.onTodoEdited,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(todos, 'TodoViewModel', 'todos');
    BuiltValueNullFieldError.checkNotNull(
        onCheckboxTapped, 'TodoViewModel', 'onCheckboxTapped');
    BuiltValueNullFieldError.checkNotNull(
        onTodoEdited, 'TodoViewModel', 'onTodoEdited');
    BuiltValueNullFieldError.checkNotNull(status, 'TodoViewModel', 'status');
  }

  @override
  TodoViewModel rebuild(void Function(TodoViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoViewModelBuilder toBuilder() => new TodoViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is TodoViewModel &&
        todos == other.todos &&
        onCheckboxTapped == _$dynamicOther.onCheckboxTapped &&
        onTodoEdited == _$dynamicOther.onTodoEdited &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, todos.hashCode), onCheckboxTapped.hashCode),
            onTodoEdited.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoViewModel')
          ..add('todos', todos)
          ..add('onCheckboxTapped', onCheckboxTapped)
          ..add('onTodoEdited', onTodoEdited)
          ..add('status', status))
        .toString();
  }
}

class TodoViewModelBuilder
    implements Builder<TodoViewModel, TodoViewModelBuilder> {
  _$TodoViewModel? _$v;

  ListBuilder<Todo>? _todos;
  ListBuilder<Todo> get todos => _$this._todos ??= new ListBuilder<Todo>();
  set todos(ListBuilder<Todo>? todos) => _$this._todos = todos;

  Function(Todo)? _onCheckboxTapped;
  Function(Todo)? get onCheckboxTapped => _$this._onCheckboxTapped;
  set onCheckboxTapped(Function(Todo)? onCheckboxTapped) =>
      _$this._onCheckboxTapped = onCheckboxTapped;

  Function(Todo, String)? _onTodoEdited;
  Function(Todo, String)? get onTodoEdited => _$this._onTodoEdited;
  set onTodoEdited(Function(Todo, String)? onTodoEdited) =>
      _$this._onTodoEdited = onTodoEdited;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  TodoViewModelBuilder();

  TodoViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todos = $v.todos.toBuilder();
      _onCheckboxTapped = $v.onCheckboxTapped;
      _onTodoEdited = $v.onTodoEdited;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoViewModel;
  }

  @override
  void update(void Function(TodoViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoViewModel build() {
    _$TodoViewModel _$result;
    try {
      _$result = _$v ??
          new _$TodoViewModel._(
              todos: todos.build(),
              onCheckboxTapped: BuiltValueNullFieldError.checkNotNull(
                  onCheckboxTapped, 'TodoViewModel', 'onCheckboxTapped'),
              onTodoEdited: BuiltValueNullFieldError.checkNotNull(
                  onTodoEdited, 'TodoViewModel', 'onTodoEdited'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'TodoViewModel', 'status'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TodoViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
