// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'asana.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AsanaTearOff {
  const _$AsanaTearOff();

  _Asana call(
      {required String imagePath,
      required String name,
      required String category}) {
    return _Asana(
      imagePath: imagePath,
      name: name,
      category: category,
    );
  }
}

/// @nodoc
const $Asana = _$AsanaTearOff();

/// @nodoc
mixin _$Asana {
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AsanaCopyWith<Asana> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsanaCopyWith<$Res> {
  factory $AsanaCopyWith(Asana value, $Res Function(Asana) then) =
      _$AsanaCopyWithImpl<$Res>;
  $Res call({String imagePath, String name, String category});
}

/// @nodoc
class _$AsanaCopyWithImpl<$Res> implements $AsanaCopyWith<$Res> {
  _$AsanaCopyWithImpl(this._value, this._then);

  final Asana _value;
  // ignore: unused_field
  final $Res Function(Asana) _then;

  @override
  $Res call({
    Object? imagePath = freezed,
    Object? name = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AsanaCopyWith<$Res> implements $AsanaCopyWith<$Res> {
  factory _$AsanaCopyWith(_Asana value, $Res Function(_Asana) then) =
      __$AsanaCopyWithImpl<$Res>;
  @override
  $Res call({String imagePath, String name, String category});
}

/// @nodoc
class __$AsanaCopyWithImpl<$Res> extends _$AsanaCopyWithImpl<$Res>
    implements _$AsanaCopyWith<$Res> {
  __$AsanaCopyWithImpl(_Asana _value, $Res Function(_Asana) _then)
      : super(_value, (v) => _then(v as _Asana));

  @override
  _Asana get _value => super._value as _Asana;

  @override
  $Res call({
    Object? imagePath = freezed,
    Object? name = freezed,
    Object? category = freezed,
  }) {
    return _then(_Asana(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Asana implements _Asana {
  const _$_Asana(
      {required this.imagePath, required this.name, required this.category});

  @override
  final String imagePath;
  @override
  final String name;
  @override
  final String category;

  @override
  String toString() {
    return 'Asana(imagePath: $imagePath, name: $name, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Asana &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$AsanaCopyWith<_Asana> get copyWith =>
      __$AsanaCopyWithImpl<_Asana>(this, _$identity);
}

abstract class _Asana implements Asana {
  const factory _Asana(
      {required String imagePath,
      required String name,
      required String category}) = _$_Asana;

  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AsanaCopyWith<_Asana> get copyWith => throw _privateConstructorUsedError;
}
