// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'flow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FlowStateTearOff {
  const _$FlowStateTearOff();

  _FlowState call({required List<Asana> selectedAsanas}) {
    return _FlowState(
      selectedAsanas: selectedAsanas,
    );
  }
}

/// @nodoc
const $FlowState = _$FlowStateTearOff();

/// @nodoc
mixin _$FlowState {
  List<Asana> get selectedAsanas => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlowStateCopyWith<FlowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowStateCopyWith<$Res> {
  factory $FlowStateCopyWith(FlowState value, $Res Function(FlowState) then) =
      _$FlowStateCopyWithImpl<$Res>;
  $Res call({List<Asana> selectedAsanas});
}

/// @nodoc
class _$FlowStateCopyWithImpl<$Res> implements $FlowStateCopyWith<$Res> {
  _$FlowStateCopyWithImpl(this._value, this._then);

  final FlowState _value;
  // ignore: unused_field
  final $Res Function(FlowState) _then;

  @override
  $Res call({
    Object? selectedAsanas = freezed,
  }) {
    return _then(_value.copyWith(
      selectedAsanas: selectedAsanas == freezed
          ? _value.selectedAsanas
          : selectedAsanas // ignore: cast_nullable_to_non_nullable
              as List<Asana>,
    ));
  }
}

/// @nodoc
abstract class _$FlowStateCopyWith<$Res> implements $FlowStateCopyWith<$Res> {
  factory _$FlowStateCopyWith(
          _FlowState value, $Res Function(_FlowState) then) =
      __$FlowStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Asana> selectedAsanas});
}

/// @nodoc
class __$FlowStateCopyWithImpl<$Res> extends _$FlowStateCopyWithImpl<$Res>
    implements _$FlowStateCopyWith<$Res> {
  __$FlowStateCopyWithImpl(_FlowState _value, $Res Function(_FlowState) _then)
      : super(_value, (v) => _then(v as _FlowState));

  @override
  _FlowState get _value => super._value as _FlowState;

  @override
  $Res call({
    Object? selectedAsanas = freezed,
  }) {
    return _then(_FlowState(
      selectedAsanas: selectedAsanas == freezed
          ? _value.selectedAsanas
          : selectedAsanas // ignore: cast_nullable_to_non_nullable
              as List<Asana>,
    ));
  }
}

/// @nodoc
class _$_FlowState implements _FlowState {
  const _$_FlowState({required this.selectedAsanas});

  @override
  final List<Asana> selectedAsanas;

  @override
  String toString() {
    return 'FlowState(selectedAsanas: $selectedAsanas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlowState &&
            (identical(other.selectedAsanas, selectedAsanas) ||
                const DeepCollectionEquality()
                    .equals(other.selectedAsanas, selectedAsanas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedAsanas);

  @JsonKey(ignore: true)
  @override
  _$FlowStateCopyWith<_FlowState> get copyWith =>
      __$FlowStateCopyWithImpl<_FlowState>(this, _$identity);
}

abstract class _FlowState implements FlowState {
  const factory _FlowState({required List<Asana> selectedAsanas}) =
      _$_FlowState;

  @override
  List<Asana> get selectedAsanas => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FlowStateCopyWith<_FlowState> get copyWith =>
      throw _privateConstructorUsedError;
}
