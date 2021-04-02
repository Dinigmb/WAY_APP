// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'saved_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SavedFlowTearOff {
  const _$SavedFlowTearOff();

  _SavedFlow call({required List<List<Asana>> savedList}) {
    return _SavedFlow(
      savedList: savedList,
    );
  }
}

/// @nodoc
const $SavedFlow = _$SavedFlowTearOff();

/// @nodoc
mixin _$SavedFlow {
  List<List<Asana>> get savedList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedFlowCopyWith<SavedFlow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedFlowCopyWith<$Res> {
  factory $SavedFlowCopyWith(SavedFlow value, $Res Function(SavedFlow) then) =
      _$SavedFlowCopyWithImpl<$Res>;
  $Res call({List<List<Asana>> savedList});
}

/// @nodoc
class _$SavedFlowCopyWithImpl<$Res> implements $SavedFlowCopyWith<$Res> {
  _$SavedFlowCopyWithImpl(this._value, this._then);

  final SavedFlow _value;
  // ignore: unused_field
  final $Res Function(SavedFlow) _then;

  @override
  $Res call({
    Object? savedList = freezed,
  }) {
    return _then(_value.copyWith(
      savedList: savedList == freezed
          ? _value.savedList
          : savedList // ignore: cast_nullable_to_non_nullable
              as List<List<Asana>>,
    ));
  }
}

/// @nodoc
abstract class _$SavedFlowCopyWith<$Res> implements $SavedFlowCopyWith<$Res> {
  factory _$SavedFlowCopyWith(
          _SavedFlow value, $Res Function(_SavedFlow) then) =
      __$SavedFlowCopyWithImpl<$Res>;
  @override
  $Res call({List<List<Asana>> savedList});
}

/// @nodoc
class __$SavedFlowCopyWithImpl<$Res> extends _$SavedFlowCopyWithImpl<$Res>
    implements _$SavedFlowCopyWith<$Res> {
  __$SavedFlowCopyWithImpl(_SavedFlow _value, $Res Function(_SavedFlow) _then)
      : super(_value, (v) => _then(v as _SavedFlow));

  @override
  _SavedFlow get _value => super._value as _SavedFlow;

  @override
  $Res call({
    Object? savedList = freezed,
  }) {
    return _then(_SavedFlow(
      savedList: savedList == freezed
          ? _value.savedList
          : savedList // ignore: cast_nullable_to_non_nullable
              as List<List<Asana>>,
    ));
  }
}

/// @nodoc
class _$_SavedFlow implements _SavedFlow {
  const _$_SavedFlow({required this.savedList});

  @override
  final List<List<Asana>> savedList;

  @override
  String toString() {
    return 'SavedFlow(savedList: $savedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavedFlow &&
            (identical(other.savedList, savedList) ||
                const DeepCollectionEquality()
                    .equals(other.savedList, savedList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(savedList);

  @JsonKey(ignore: true)
  @override
  _$SavedFlowCopyWith<_SavedFlow> get copyWith =>
      __$SavedFlowCopyWithImpl<_SavedFlow>(this, _$identity);
}

abstract class _SavedFlow implements SavedFlow {
  const factory _SavedFlow({required List<List<Asana>> savedList}) =
      _$_SavedFlow;

  @override
  List<List<Asana>> get savedList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SavedFlowCopyWith<_SavedFlow> get copyWith =>
      throw _privateConstructorUsedError;
}
