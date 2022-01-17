// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_todo_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTodoViewModel extends CreateTodoViewModel {
  @override
  final Function(String) onTodoCreate;
  @override
  final Status status;

  factory _$CreateTodoViewModel(
          [void Function(CreateTodoViewModelBuilder)? updates]) =>
      (new CreateTodoViewModelBuilder()..update(updates)).build();

  _$CreateTodoViewModel._({required this.onTodoCreate, required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onTodoCreate, 'CreateTodoViewModel', 'onTodoCreate');
    BuiltValueNullFieldError.checkNotNull(
        status, 'CreateTodoViewModel', 'status');
  }

  @override
  CreateTodoViewModel rebuild(
          void Function(CreateTodoViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTodoViewModelBuilder toBuilder() =>
      new CreateTodoViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is CreateTodoViewModel &&
        onTodoCreate == _$dynamicOther.onTodoCreate &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, onTodoCreate.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateTodoViewModel')
          ..add('onTodoCreate', onTodoCreate)
          ..add('status', status))
        .toString();
  }
}

class CreateTodoViewModelBuilder
    implements Builder<CreateTodoViewModel, CreateTodoViewModelBuilder> {
  _$CreateTodoViewModel? _$v;

  Function(String)? _onTodoCreate;
  Function(String)? get onTodoCreate => _$this._onTodoCreate;
  set onTodoCreate(Function(String)? onTodoCreate) =>
      _$this._onTodoCreate = onTodoCreate;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  CreateTodoViewModelBuilder();

  CreateTodoViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onTodoCreate = $v.onTodoCreate;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTodoViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTodoViewModel;
  }

  @override
  void update(void Function(CreateTodoViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateTodoViewModel build() {
    final _$result = _$v ??
        new _$CreateTodoViewModel._(
            onTodoCreate: BuiltValueNullFieldError.checkNotNull(
                onTodoCreate, 'CreateTodoViewModel', 'onTodoCreate'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'CreateTodoViewModel', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
