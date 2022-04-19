// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'plant_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlantDataTearOff {
  const _$PlantDataTearOff();

  _PlantData call(
      {int? identifier,
      required String name,
      required String type,
      required String date}) {
    return _PlantData(
      identifier: identifier,
      name: name,
      type: type,
      date: date,
    );
  }
}

/// @nodoc
const $PlantData = _$PlantDataTearOff();

/// @nodoc
mixin _$PlantData {
  int? get identifier => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantDataCopyWith<PlantData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantDataCopyWith<$Res> {
  factory $PlantDataCopyWith(PlantData value, $Res Function(PlantData) then) =
      _$PlantDataCopyWithImpl<$Res>;
  $Res call({int? identifier, String name, String type, String date});
}

/// @nodoc
class _$PlantDataCopyWithImpl<$Res> implements $PlantDataCopyWith<$Res> {
  _$PlantDataCopyWithImpl(this._value, this._then);

  final PlantData _value;
  // ignore: unused_field
  final $Res Function(PlantData) _then;

  @override
  $Res call({
    Object? identifier = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PlantDataCopyWith<$Res> implements $PlantDataCopyWith<$Res> {
  factory _$PlantDataCopyWith(
          _PlantData value, $Res Function(_PlantData) then) =
      __$PlantDataCopyWithImpl<$Res>;
  @override
  $Res call({int? identifier, String name, String type, String date});
}

/// @nodoc
class __$PlantDataCopyWithImpl<$Res> extends _$PlantDataCopyWithImpl<$Res>
    implements _$PlantDataCopyWith<$Res> {
  __$PlantDataCopyWithImpl(_PlantData _value, $Res Function(_PlantData) _then)
      : super(_value, (v) => _then(v as _PlantData));

  @override
  _PlantData get _value => super._value as _PlantData;

  @override
  $Res call({
    Object? identifier = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? date = freezed,
  }) {
    return _then(_PlantData(
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlantData implements _PlantData {
  _$_PlantData(
      {this.identifier,
      required this.name,
      required this.type,
      required this.date});

  @override
  final int? identifier;
  @override
  final String name;
  @override
  final String type;
  @override
  final String date;

  @override
  String toString() {
    return 'PlantData(identifier: $identifier, name: $name, type: $type, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlantData &&
            const DeepCollectionEquality()
                .equals(other.identifier, identifier) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(identifier),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$PlantDataCopyWith<_PlantData> get copyWith =>
      __$PlantDataCopyWithImpl<_PlantData>(this, _$identity);
}

abstract class _PlantData implements PlantData {
  factory _PlantData(
      {int? identifier,
      required String name,
      required String type,
      required String date}) = _$_PlantData;

  @override
  int? get identifier;
  @override
  String get name;
  @override
  String get type;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$PlantDataCopyWith<_PlantData> get copyWith =>
      throw _privateConstructorUsedError;
}
