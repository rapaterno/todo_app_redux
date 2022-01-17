// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final TodoState todosState;
  @override
  final BuiltMap<String, Status> statuses;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({required this.todosState, required this.statuses}) : super._() {
    BuiltValueNullFieldError.checkNotNull(todosState, 'AppState', 'todosState');
    BuiltValueNullFieldError.checkNotNull(statuses, 'AppState', 'statuses');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        todosState == other.todosState &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, todosState.hashCode), statuses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('todosState', todosState)
          ..add('statuses', statuses))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  TodoStateBuilder? _todosState;
  TodoStateBuilder get todosState =>
      _$this._todosState ??= new TodoStateBuilder();
  set todosState(TodoStateBuilder? todosState) =>
      _$this._todosState = todosState;

  MapBuilder<String, Status>? _statuses;
  MapBuilder<String, Status> get statuses =>
      _$this._statuses ??= new MapBuilder<String, Status>();
  set statuses(MapBuilder<String, Status>? statuses) =>
      _$this._statuses = statuses;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todosState = $v.todosState.toBuilder();
      _statuses = $v.statuses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              todosState: todosState.build(), statuses: statuses.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todosState';
        todosState.build();
        _$failedField = 'statuses';
        statuses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
