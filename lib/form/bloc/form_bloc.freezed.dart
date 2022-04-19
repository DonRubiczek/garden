// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FormEventTearOff {
  const _$FormEventTearOff();

  FormChangePlantProperty changePlantProperty({required PlantData plant}) {
    return FormChangePlantProperty(
      plant: plant,
    );
  }

  FormAddPlant addPlant({required PlantData plant}) {
    return FormAddPlant(
      plant: plant,
    );
  }

  FormEditPlant editPlant({required PlantData plant}) {
    return FormEditPlant(
      plant: plant,
    );
  }
}

/// @nodoc
const $FormEvent = _$FormEventTearOff();

/// @nodoc
mixin _$FormEvent {
  PlantData get plant => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlantData plant) changePlantProperty,
    required TResult Function(PlantData plant) addPlant,
    required TResult Function(PlantData plant) editPlant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlantData plant)? changePlantProperty,
    TResult Function(PlantData plant)? addPlant,
    TResult Function(PlantData plant)? editPlant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlantData plant)? changePlantProperty,
    TResult Function(PlantData plant)? addPlant,
    TResult Function(PlantData plant)? editPlant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormChangePlantProperty value)
        changePlantProperty,
    required TResult Function(FormAddPlant value) addPlant,
    required TResult Function(FormEditPlant value) editPlant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormChangePlantProperty value)? changePlantProperty,
    TResult Function(FormAddPlant value)? addPlant,
    TResult Function(FormEditPlant value)? editPlant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormChangePlantProperty value)? changePlantProperty,
    TResult Function(FormAddPlant value)? addPlant,
    TResult Function(FormEditPlant value)? editPlant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormEventCopyWith<FormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEventCopyWith<$Res> {
  factory $FormEventCopyWith(FormEvent value, $Res Function(FormEvent) then) =
      _$FormEventCopyWithImpl<$Res>;
  $Res call({PlantData plant});

  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$FormEventCopyWithImpl<$Res> implements $FormEventCopyWith<$Res> {
  _$FormEventCopyWithImpl(this._value, this._then);

  final FormEvent _value;
  // ignore: unused_field
  final $Res Function(FormEvent) _then;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(_value.copyWith(
      plant: plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as PlantData,
    ));
  }

  @override
  $PlantDataCopyWith<$Res> get plant {
    return $PlantDataCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value));
    });
  }
}

/// @nodoc
abstract class $FormChangePlantPropertyCopyWith<$Res>
    implements $FormEventCopyWith<$Res> {
  factory $FormChangePlantPropertyCopyWith(FormChangePlantProperty value,
          $Res Function(FormChangePlantProperty) then) =
      _$FormChangePlantPropertyCopyWithImpl<$Res>;
  @override
  $Res call({PlantData plant});

  @override
  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$FormChangePlantPropertyCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res>
    implements $FormChangePlantPropertyCopyWith<$Res> {
  _$FormChangePlantPropertyCopyWithImpl(FormChangePlantProperty _value,
      $Res Function(FormChangePlantProperty) _then)
      : super(_value, (v) => _then(v as FormChangePlantProperty));

  @override
  FormChangePlantProperty get _value => super._value as FormChangePlantProperty;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(FormChangePlantProperty(
      plant: plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as PlantData,
    ));
  }
}

/// @nodoc

class _$FormChangePlantProperty implements FormChangePlantProperty {
  const _$FormChangePlantProperty({required this.plant});

  @override
  final PlantData plant;

  @override
  String toString() {
    return 'FormEvent.changePlantProperty(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormChangePlantProperty &&
            const DeepCollectionEquality().equals(other.plant, plant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plant));

  @JsonKey(ignore: true)
  @override
  $FormChangePlantPropertyCopyWith<FormChangePlantProperty> get copyWith =>
      _$FormChangePlantPropertyCopyWithImpl<FormChangePlantProperty>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlantData plant) changePlantProperty,
    required TResult Function(PlantData plant) addPlant,
    required TResult Function(PlantData plant) editPlant,
  }) {
    return changePlantProperty(plant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlantData plant)? changePlantProperty,
    TResult Function(PlantData plant)? addPlant,
    TResult Function(PlantData plant)? editPlant,
  }) {
    return changePlantProperty?.call(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlantData plant)? changePlantProperty,
    TResult Function(PlantData plant)? addPlant,
    TResult Function(PlantData plant)? editPlant,
    required TResult orElse(),
  }) {
    if (changePlantProperty != null) {
      return changePlantProperty(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormChangePlantProperty value)
        changePlantProperty,
    required TResult Function(FormAddPlant value) addPlant,
    required TResult Function(FormEditPlant value) editPlant,
  }) {
    return changePlantProperty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormChangePlantProperty value)? changePlantProperty,
    TResult Function(FormAddPlant value)? addPlant,
    TResult Function(FormEditPlant value)? editPlant,
  }) {
    return changePlantProperty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormChangePlantProperty value)? changePlantProperty,
    TResult Function(FormAddPlant value)? addPlant,
    TResult Function(FormEditPlant value)? editPlant,
    required TResult orElse(),
  }) {
    if (changePlantProperty != null) {
      return changePlantProperty(this);
    }
    return orElse();
  }
}

abstract class FormChangePlantProperty implements FormEvent {
  const factory FormChangePlantProperty({required PlantData plant}) =
      _$FormChangePlantProperty;

  @override
  PlantData get plant;
  @override
  @JsonKey(ignore: true)
  $FormChangePlantPropertyCopyWith<FormChangePlantProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormAddPlantCopyWith<$Res> implements $FormEventCopyWith<$Res> {
  factory $FormAddPlantCopyWith(
          FormAddPlant value, $Res Function(FormAddPlant) then) =
      _$FormAddPlantCopyWithImpl<$Res>;
  @override
  $Res call({PlantData plant});

  @override
  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$FormAddPlantCopyWithImpl<$Res> extends _$FormEventCopyWithImpl<$Res>
    implements $FormAddPlantCopyWith<$Res> {
  _$FormAddPlantCopyWithImpl(
      FormAddPlant _value, $Res Function(FormAddPlant) _then)
      : super(_value, (v) => _then(v as FormAddPlant));

  @override
  FormAddPlant get _value => super._value as FormAddPlant;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(FormAddPlant(
      plant: plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as PlantData,
    ));
  }
}

/// @nodoc

class _$FormAddPlant implements FormAddPlant {
  const _$FormAddPlant({required this.plant});

  @override
  final PlantData plant;

  @override
  String toString() {
    return 'FormEvent.addPlant(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormAddPlant &&
            const DeepCollectionEquality().equals(other.plant, plant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plant));

  @JsonKey(ignore: true)
  @override
  $FormAddPlantCopyWith<FormAddPlant> get copyWith =>
      _$FormAddPlantCopyWithImpl<FormAddPlant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlantData plant) changePlantProperty,
    required TResult Function(PlantData plant) addPlant,
    required TResult Function(PlantData plant) editPlant,
  }) {
    return addPlant(plant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlantData plant)? changePlantProperty,
    TResult Function(PlantData plant)? addPlant,
    TResult Function(PlantData plant)? editPlant,
  }) {
    return addPlant?.call(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlantData plant)? changePlantProperty,
    TResult Function(PlantData plant)? addPlant,
    TResult Function(PlantData plant)? editPlant,
    required TResult orElse(),
  }) {
    if (addPlant != null) {
      return addPlant(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormChangePlantProperty value)
        changePlantProperty,
    required TResult Function(FormAddPlant value) addPlant,
    required TResult Function(FormEditPlant value) editPlant,
  }) {
    return addPlant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormChangePlantProperty value)? changePlantProperty,
    TResult Function(FormAddPlant value)? addPlant,
    TResult Function(FormEditPlant value)? editPlant,
  }) {
    return addPlant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormChangePlantProperty value)? changePlantProperty,
    TResult Function(FormAddPlant value)? addPlant,
    TResult Function(FormEditPlant value)? editPlant,
    required TResult orElse(),
  }) {
    if (addPlant != null) {
      return addPlant(this);
    }
    return orElse();
  }
}

abstract class FormAddPlant implements FormEvent {
  const factory FormAddPlant({required PlantData plant}) = _$FormAddPlant;

  @override
  PlantData get plant;
  @override
  @JsonKey(ignore: true)
  $FormAddPlantCopyWith<FormAddPlant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEditPlantCopyWith<$Res>
    implements $FormEventCopyWith<$Res> {
  factory $FormEditPlantCopyWith(
          FormEditPlant value, $Res Function(FormEditPlant) then) =
      _$FormEditPlantCopyWithImpl<$Res>;
  @override
  $Res call({PlantData plant});

  @override
  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$FormEditPlantCopyWithImpl<$Res> extends _$FormEventCopyWithImpl<$Res>
    implements $FormEditPlantCopyWith<$Res> {
  _$FormEditPlantCopyWithImpl(
      FormEditPlant _value, $Res Function(FormEditPlant) _then)
      : super(_value, (v) => _then(v as FormEditPlant));

  @override
  FormEditPlant get _value => super._value as FormEditPlant;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(FormEditPlant(
      plant: plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as PlantData,
    ));
  }
}

/// @nodoc

class _$FormEditPlant implements FormEditPlant {
  const _$FormEditPlant({required this.plant});

  @override
  final PlantData plant;

  @override
  String toString() {
    return 'FormEvent.editPlant(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormEditPlant &&
            const DeepCollectionEquality().equals(other.plant, plant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plant));

  @JsonKey(ignore: true)
  @override
  $FormEditPlantCopyWith<FormEditPlant> get copyWith =>
      _$FormEditPlantCopyWithImpl<FormEditPlant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlantData plant) changePlantProperty,
    required TResult Function(PlantData plant) addPlant,
    required TResult Function(PlantData plant) editPlant,
  }) {
    return editPlant(plant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlantData plant)? changePlantProperty,
    TResult Function(PlantData plant)? addPlant,
    TResult Function(PlantData plant)? editPlant,
  }) {
    return editPlant?.call(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlantData plant)? changePlantProperty,
    TResult Function(PlantData plant)? addPlant,
    TResult Function(PlantData plant)? editPlant,
    required TResult orElse(),
  }) {
    if (editPlant != null) {
      return editPlant(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormChangePlantProperty value)
        changePlantProperty,
    required TResult Function(FormAddPlant value) addPlant,
    required TResult Function(FormEditPlant value) editPlant,
  }) {
    return editPlant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormChangePlantProperty value)? changePlantProperty,
    TResult Function(FormAddPlant value)? addPlant,
    TResult Function(FormEditPlant value)? editPlant,
  }) {
    return editPlant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormChangePlantProperty value)? changePlantProperty,
    TResult Function(FormAddPlant value)? addPlant,
    TResult Function(FormEditPlant value)? editPlant,
    required TResult orElse(),
  }) {
    if (editPlant != null) {
      return editPlant(this);
    }
    return orElse();
  }
}

abstract class FormEditPlant implements FormEvent {
  const factory FormEditPlant({required PlantData plant}) = _$FormEditPlant;

  @override
  PlantData get plant;
  @override
  @JsonKey(ignore: true)
  $FormEditPlantCopyWith<FormEditPlant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FormStateTearOff {
  const _$FormStateTearOff();

  FormInitial initial() {
    return const FormInitial();
  }

  FormPlantPropertiesChanged plantPropertiesChanged(
      {required PlantData plant}) {
    return FormPlantPropertiesChanged(
      plant: plant,
    );
  }

  FormPlantUpdated plantUpdated({required PlantData plant}) {
    return FormPlantUpdated(
      plant: plant,
    );
  }

  FormPlantCreated plantCreated({required PlantData plant}) {
    return FormPlantCreated(
      plant: plant,
    );
  }

  FormError error({required String message}) {
    return FormError(
      message: message,
    );
  }

  FormLoading loading() {
    return const FormLoading();
  }
}

/// @nodoc
const $FormState = _$FormStateTearOff();

/// @nodoc
mixin _$FormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlantData plant) plantPropertiesChanged,
    required TResult Function(PlantData plant) plantUpdated,
    required TResult Function(PlantData plant) plantCreated,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormPlantPropertiesChanged value)
        plantPropertiesChanged,
    required TResult Function(FormPlantUpdated value) plantUpdated,
    required TResult Function(FormPlantCreated value) plantCreated,
    required TResult Function(FormError value) error,
    required TResult Function(FormLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormStateCopyWith<$Res> {
  factory $FormStateCopyWith(FormState value, $Res Function(FormState) then) =
      _$FormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormStateCopyWithImpl<$Res> implements $FormStateCopyWith<$Res> {
  _$FormStateCopyWithImpl(this._value, this._then);

  final FormState _value;
  // ignore: unused_field
  final $Res Function(FormState) _then;
}

/// @nodoc
abstract class $FormInitialCopyWith<$Res> {
  factory $FormInitialCopyWith(
          FormInitial value, $Res Function(FormInitial) then) =
      _$FormInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormInitialCopyWithImpl<$Res> extends _$FormStateCopyWithImpl<$Res>
    implements $FormInitialCopyWith<$Res> {
  _$FormInitialCopyWithImpl(
      FormInitial _value, $Res Function(FormInitial) _then)
      : super(_value, (v) => _then(v as FormInitial));

  @override
  FormInitial get _value => super._value as FormInitial;
}

/// @nodoc

class _$FormInitial implements FormInitial {
  const _$FormInitial();

  @override
  String toString() {
    return 'FormState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlantData plant) plantPropertiesChanged,
    required TResult Function(PlantData plant) plantUpdated,
    required TResult Function(PlantData plant) plantCreated,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormPlantPropertiesChanged value)
        plantPropertiesChanged,
    required TResult Function(FormPlantUpdated value) plantUpdated,
    required TResult Function(FormPlantCreated value) plantCreated,
    required TResult Function(FormError value) error,
    required TResult Function(FormLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FormInitial implements FormState {
  const factory FormInitial() = _$FormInitial;
}

/// @nodoc
abstract class $FormPlantPropertiesChangedCopyWith<$Res> {
  factory $FormPlantPropertiesChangedCopyWith(FormPlantPropertiesChanged value,
          $Res Function(FormPlantPropertiesChanged) then) =
      _$FormPlantPropertiesChangedCopyWithImpl<$Res>;
  $Res call({PlantData plant});

  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$FormPlantPropertiesChangedCopyWithImpl<$Res>
    extends _$FormStateCopyWithImpl<$Res>
    implements $FormPlantPropertiesChangedCopyWith<$Res> {
  _$FormPlantPropertiesChangedCopyWithImpl(FormPlantPropertiesChanged _value,
      $Res Function(FormPlantPropertiesChanged) _then)
      : super(_value, (v) => _then(v as FormPlantPropertiesChanged));

  @override
  FormPlantPropertiesChanged get _value =>
      super._value as FormPlantPropertiesChanged;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(FormPlantPropertiesChanged(
      plant: plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as PlantData,
    ));
  }

  @override
  $PlantDataCopyWith<$Res> get plant {
    return $PlantDataCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value));
    });
  }
}

/// @nodoc

class _$FormPlantPropertiesChanged implements FormPlantPropertiesChanged {
  const _$FormPlantPropertiesChanged({required this.plant});

  @override
  final PlantData plant;

  @override
  String toString() {
    return 'FormState.plantPropertiesChanged(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormPlantPropertiesChanged &&
            const DeepCollectionEquality().equals(other.plant, plant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plant));

  @JsonKey(ignore: true)
  @override
  $FormPlantPropertiesChangedCopyWith<FormPlantPropertiesChanged>
      get copyWith =>
          _$FormPlantPropertiesChangedCopyWithImpl<FormPlantPropertiesChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlantData plant) plantPropertiesChanged,
    required TResult Function(PlantData plant) plantUpdated,
    required TResult Function(PlantData plant) plantCreated,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return plantPropertiesChanged(plant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
  }) {
    return plantPropertiesChanged?.call(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (plantPropertiesChanged != null) {
      return plantPropertiesChanged(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormPlantPropertiesChanged value)
        plantPropertiesChanged,
    required TResult Function(FormPlantUpdated value) plantUpdated,
    required TResult Function(FormPlantCreated value) plantCreated,
    required TResult Function(FormError value) error,
    required TResult Function(FormLoading value) loading,
  }) {
    return plantPropertiesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
  }) {
    return plantPropertiesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
    required TResult orElse(),
  }) {
    if (plantPropertiesChanged != null) {
      return plantPropertiesChanged(this);
    }
    return orElse();
  }
}

abstract class FormPlantPropertiesChanged implements FormState {
  const factory FormPlantPropertiesChanged({required PlantData plant}) =
      _$FormPlantPropertiesChanged;

  PlantData get plant;
  @JsonKey(ignore: true)
  $FormPlantPropertiesChangedCopyWith<FormPlantPropertiesChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormPlantUpdatedCopyWith<$Res> {
  factory $FormPlantUpdatedCopyWith(
          FormPlantUpdated value, $Res Function(FormPlantUpdated) then) =
      _$FormPlantUpdatedCopyWithImpl<$Res>;
  $Res call({PlantData plant});

  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$FormPlantUpdatedCopyWithImpl<$Res> extends _$FormStateCopyWithImpl<$Res>
    implements $FormPlantUpdatedCopyWith<$Res> {
  _$FormPlantUpdatedCopyWithImpl(
      FormPlantUpdated _value, $Res Function(FormPlantUpdated) _then)
      : super(_value, (v) => _then(v as FormPlantUpdated));

  @override
  FormPlantUpdated get _value => super._value as FormPlantUpdated;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(FormPlantUpdated(
      plant: plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as PlantData,
    ));
  }

  @override
  $PlantDataCopyWith<$Res> get plant {
    return $PlantDataCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value));
    });
  }
}

/// @nodoc

class _$FormPlantUpdated implements FormPlantUpdated {
  const _$FormPlantUpdated({required this.plant});

  @override
  final PlantData plant;

  @override
  String toString() {
    return 'FormState.plantUpdated(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormPlantUpdated &&
            const DeepCollectionEquality().equals(other.plant, plant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plant));

  @JsonKey(ignore: true)
  @override
  $FormPlantUpdatedCopyWith<FormPlantUpdated> get copyWith =>
      _$FormPlantUpdatedCopyWithImpl<FormPlantUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlantData plant) plantPropertiesChanged,
    required TResult Function(PlantData plant) plantUpdated,
    required TResult Function(PlantData plant) plantCreated,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return plantUpdated(plant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
  }) {
    return plantUpdated?.call(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (plantUpdated != null) {
      return plantUpdated(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormPlantPropertiesChanged value)
        plantPropertiesChanged,
    required TResult Function(FormPlantUpdated value) plantUpdated,
    required TResult Function(FormPlantCreated value) plantCreated,
    required TResult Function(FormError value) error,
    required TResult Function(FormLoading value) loading,
  }) {
    return plantUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
  }) {
    return plantUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
    required TResult orElse(),
  }) {
    if (plantUpdated != null) {
      return plantUpdated(this);
    }
    return orElse();
  }
}

abstract class FormPlantUpdated implements FormState {
  const factory FormPlantUpdated({required PlantData plant}) =
      _$FormPlantUpdated;

  PlantData get plant;
  @JsonKey(ignore: true)
  $FormPlantUpdatedCopyWith<FormPlantUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormPlantCreatedCopyWith<$Res> {
  factory $FormPlantCreatedCopyWith(
          FormPlantCreated value, $Res Function(FormPlantCreated) then) =
      _$FormPlantCreatedCopyWithImpl<$Res>;
  $Res call({PlantData plant});

  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$FormPlantCreatedCopyWithImpl<$Res> extends _$FormStateCopyWithImpl<$Res>
    implements $FormPlantCreatedCopyWith<$Res> {
  _$FormPlantCreatedCopyWithImpl(
      FormPlantCreated _value, $Res Function(FormPlantCreated) _then)
      : super(_value, (v) => _then(v as FormPlantCreated));

  @override
  FormPlantCreated get _value => super._value as FormPlantCreated;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(FormPlantCreated(
      plant: plant == freezed
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as PlantData,
    ));
  }

  @override
  $PlantDataCopyWith<$Res> get plant {
    return $PlantDataCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value));
    });
  }
}

/// @nodoc

class _$FormPlantCreated implements FormPlantCreated {
  const _$FormPlantCreated({required this.plant});

  @override
  final PlantData plant;

  @override
  String toString() {
    return 'FormState.plantCreated(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormPlantCreated &&
            const DeepCollectionEquality().equals(other.plant, plant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plant));

  @JsonKey(ignore: true)
  @override
  $FormPlantCreatedCopyWith<FormPlantCreated> get copyWith =>
      _$FormPlantCreatedCopyWithImpl<FormPlantCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlantData plant) plantPropertiesChanged,
    required TResult Function(PlantData plant) plantUpdated,
    required TResult Function(PlantData plant) plantCreated,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return plantCreated(plant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
  }) {
    return plantCreated?.call(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (plantCreated != null) {
      return plantCreated(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormPlantPropertiesChanged value)
        plantPropertiesChanged,
    required TResult Function(FormPlantUpdated value) plantUpdated,
    required TResult Function(FormPlantCreated value) plantCreated,
    required TResult Function(FormError value) error,
    required TResult Function(FormLoading value) loading,
  }) {
    return plantCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
  }) {
    return plantCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
    required TResult orElse(),
  }) {
    if (plantCreated != null) {
      return plantCreated(this);
    }
    return orElse();
  }
}

abstract class FormPlantCreated implements FormState {
  const factory FormPlantCreated({required PlantData plant}) =
      _$FormPlantCreated;

  PlantData get plant;
  @JsonKey(ignore: true)
  $FormPlantCreatedCopyWith<FormPlantCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormErrorCopyWith<$Res> {
  factory $FormErrorCopyWith(FormError value, $Res Function(FormError) then) =
      _$FormErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FormErrorCopyWithImpl<$Res> extends _$FormStateCopyWithImpl<$Res>
    implements $FormErrorCopyWith<$Res> {
  _$FormErrorCopyWithImpl(FormError _value, $Res Function(FormError) _then)
      : super(_value, (v) => _then(v as FormError));

  @override
  FormError get _value => super._value as FormError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FormError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormError implements FormError {
  const _$FormError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FormState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FormErrorCopyWith<FormError> get copyWith =>
      _$FormErrorCopyWithImpl<FormError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlantData plant) plantPropertiesChanged,
    required TResult Function(PlantData plant) plantUpdated,
    required TResult Function(PlantData plant) plantCreated,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormPlantPropertiesChanged value)
        plantPropertiesChanged,
    required TResult Function(FormPlantUpdated value) plantUpdated,
    required TResult Function(FormPlantCreated value) plantCreated,
    required TResult Function(FormError value) error,
    required TResult Function(FormLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FormError implements FormState {
  const factory FormError({required String message}) = _$FormError;

  String get message;
  @JsonKey(ignore: true)
  $FormErrorCopyWith<FormError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormLoadingCopyWith<$Res> {
  factory $FormLoadingCopyWith(
          FormLoading value, $Res Function(FormLoading) then) =
      _$FormLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormLoadingCopyWithImpl<$Res> extends _$FormStateCopyWithImpl<$Res>
    implements $FormLoadingCopyWith<$Res> {
  _$FormLoadingCopyWithImpl(
      FormLoading _value, $Res Function(FormLoading) _then)
      : super(_value, (v) => _then(v as FormLoading));

  @override
  FormLoading get _value => super._value as FormLoading;
}

/// @nodoc

class _$FormLoading implements FormLoading {
  const _$FormLoading();

  @override
  String toString() {
    return 'FormState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlantData plant) plantPropertiesChanged,
    required TResult Function(PlantData plant) plantUpdated,
    required TResult Function(PlantData plant) plantCreated,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlantData plant)? plantPropertiesChanged,
    TResult Function(PlantData plant)? plantUpdated,
    TResult Function(PlantData plant)? plantCreated,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormPlantPropertiesChanged value)
        plantPropertiesChanged,
    required TResult Function(FormPlantUpdated value) plantUpdated,
    required TResult Function(FormPlantCreated value) plantCreated,
    required TResult Function(FormError value) error,
    required TResult Function(FormLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormPlantPropertiesChanged value)? plantPropertiesChanged,
    TResult Function(FormPlantUpdated value)? plantUpdated,
    TResult Function(FormPlantCreated value)? plantCreated,
    TResult Function(FormError value)? error,
    TResult Function(FormLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FormLoading implements FormState {
  const factory FormLoading() = _$FormLoading;
}
