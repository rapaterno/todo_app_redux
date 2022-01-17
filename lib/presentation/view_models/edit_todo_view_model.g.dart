// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_todo_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditTodoViewModel extends EditTodoViewModel {
  @override
  final Function(Todo) onTodoDelete;
  @override
  final Function(Todo) onTodoUpdate;
  @override
  final Map<String, Status> statuses;

  factory _$EditTodoViewModel(
          [void Function(EditTodoViewModelBuilder)? updates]) =>
      (new EditTodoViewModelBuilder()..update(updates)).build();

  _$EditTodoViewModel._(
      {required this.onTodoDelete,
      required this.onTodoUpdate,
      required this.statuses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onTodoDelete, 'EditTodoViewModel', 'onTodoDelete');
    BuiltValueNullFieldError.checkNotNull(
        onTodoUpdate, 'EditTodoViewModel', 'onTodoUpdate');
    BuiltValueNullFieldError.checkNotNull(
        statuses, 'EditTodoViewModel', 'statuses');
  }

  @override
  EditTodoViewModel rebuild(void Function(EditTodoViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditTodoViewModelBuilder toBuilder() =>
      new EditTodoViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is EditTodoViewModel &&
        onTodoDelete == _$dynamicOther.onTodoDelete &&
        onTodoUpdate == _$dynamicOther.onTodoUpdate &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, onTodoDelete.hashCode), onTodoUpdate.hashCode),
        statuses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditTodoViewModel')
          ..add('onTodoDelete', onTodoDelete)
          ..add('onTodoUpdate', onTodoUpdate)
          ..add('statuses', statuses))
        .toString();
  }
}

class EditTodoViewModelBuilder
    implements Builder<EditTodoViewModel, EditTodoViewModelBuilder> {
  _$EditTodoViewModel? _$v;

  Function(Todo)? _onTodoDelete;
  Function(Todo)? get onTodoDelete => _$this._onTodoDelete;
  set onTodoDelete(Function(Todo)? onTodoDelete) =>
      _$this._onTodoDelete = onTodoDelete;

  Function(Todo)? _onTodoUpdate;
  Function(Todo)? get onTodoUpdate => _$this._onTodoUpdate;
  set onTodoUpdate(Function(Todo)? onTodoUpdate) =>
      _$this._onTodoUpdate = onTodoUpdate;

  Map<String, Status>? _statuses;
  Map<String, Status>? get statuses => _$this._statuses;
  set statuses(Map<String, Status>? statuses) => _$this._statuses = statuses;

  EditTodoViewModelBuilder();

  EditTodoViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onTodoDelete = $v.onTodoDelete;
      _onTodoUpdate = $v.onTodoUpdate;
      _statuses = $v.statuses;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditTodoViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditTodoViewModel;
  }

  @override
  void update(void Function(EditTodoViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditTodoViewModel build() {
    final _$result = _$v ??
        new _$EditTodoViewModel._(
            onTodoDelete: BuiltValueNullFieldError.checkNotNull(
                onTodoDelete, 'EditTodoViewModel', 'onTodoDelete'),
            onTodoUpdate: BuiltValueNullFieldError.checkNotNull(
                onTodoUpdate, 'EditTodoViewModel', 'onTodoUpdate'),
            statuses: BuiltValueNullFieldError.checkNotNull(
                statuses, 'EditTodoViewModel', 'statuses'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
