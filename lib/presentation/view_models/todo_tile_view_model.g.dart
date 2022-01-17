// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_tile_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoTileViewModel extends TodoTileViewModel {
  @override
  final Status status;

  factory _$TodoTileViewModel(
          [void Function(TodoTileViewModelBuilder)? updates]) =>
      (new TodoTileViewModelBuilder()..update(updates)).build();

  _$TodoTileViewModel._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'TodoTileViewModel', 'status');
  }

  @override
  TodoTileViewModel rebuild(void Function(TodoTileViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoTileViewModelBuilder toBuilder() =>
      new TodoTileViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoTileViewModel && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoTileViewModel')
          ..add('status', status))
        .toString();
  }
}

class TodoTileViewModelBuilder
    implements Builder<TodoTileViewModel, TodoTileViewModelBuilder> {
  _$TodoTileViewModel? _$v;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  TodoTileViewModelBuilder();

  TodoTileViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoTileViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoTileViewModel;
  }

  @override
  void update(void Function(TodoTileViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoTileViewModel build() {
    final _$result = _$v ??
        new _$TodoTileViewModel._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'TodoTileViewModel', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
