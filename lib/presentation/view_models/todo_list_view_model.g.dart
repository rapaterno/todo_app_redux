// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoListViewModel extends TodoListViewModel {
  @override
  final Status status;

  factory _$TodoListViewModel(
          [void Function(TodoListViewModelBuilder)? updates]) =>
      (new TodoListViewModelBuilder()..update(updates)).build();

  _$TodoListViewModel._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'TodoListViewModel', 'status');
  }

  @override
  TodoListViewModel rebuild(void Function(TodoListViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoListViewModelBuilder toBuilder() =>
      new TodoListViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoListViewModel && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoListViewModel')
          ..add('status', status))
        .toString();
  }
}

class TodoListViewModelBuilder
    implements Builder<TodoListViewModel, TodoListViewModelBuilder> {
  _$TodoListViewModel? _$v;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  TodoListViewModelBuilder();

  TodoListViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoListViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoListViewModel;
  }

  @override
  void update(void Function(TodoListViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoListViewModel build() {
    final _$result = _$v ??
        new _$TodoListViewModel._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'TodoListViewModel', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
