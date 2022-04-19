// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use,
//deprecated_member_use_from_same_package,
// use_function_type_syntax_for_parameters,
// unnecessary_const, avoid_init_to_null,
// invalid_override_different_default_values_named,
// prefer_expression_function_bodies,
//annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  HomeFetchPage fetchPage({required int id, required String plantName}) {
    return HomeFetchPage(
      id: id,
      plantName: plantName,
    );
  }

  HomePlantAdded plantAdded({required PlantData plant}) {
    return HomePlantAdded(
      plant: plant,
    );
  }

  HomePlantEdited plantEdited({required PlantData plant}) {
    return HomePlantEdited(
      plant: plant,
    );
  }

  HomeFindPlantByName findPlantByName({required String plantName}) {
    return HomeFindPlantByName(
      plantName: plantName,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String plantName) fetchPage,
    required TResult Function(PlantData plant) plantAdded,
    required TResult Function(PlantData plant) plantEdited,
    required TResult Function(String plantName) findPlantByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, String plantName)? fetchPage,
    TResult Function(PlantData plant)? plantAdded,
    TResult Function(PlantData plant)? plantEdited,
    TResult Function(String plantName)? findPlantByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String plantName)? fetchPage,
    TResult Function(PlantData plant)? plantAdded,
    TResult Function(PlantData plant)? plantEdited,
    TResult Function(String plantName)? findPlantByName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeFetchPage value) fetchPage,
    required TResult Function(HomePlantAdded value) plantAdded,
    required TResult Function(HomePlantEdited value) plantEdited,
    required TResult Function(HomeFindPlantByName value) findPlantByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeFetchPage value)? fetchPage,
    TResult Function(HomePlantAdded value)? plantAdded,
    TResult Function(HomePlantEdited value)? plantEdited,
    TResult Function(HomeFindPlantByName value)? findPlantByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeFetchPage value)? fetchPage,
    TResult Function(HomePlantAdded value)? plantAdded,
    TResult Function(HomePlantEdited value)? plantEdited,
    TResult Function(HomeFindPlantByName value)? findPlantByName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $HomeFetchPageCopyWith<$Res> {
  factory $HomeFetchPageCopyWith(
    HomeFetchPage value,
    $Res Function(HomeFetchPage) then,
  ) = _$HomeFetchPageCopyWithImpl<$Res>;
  $Res call({int id, String plantName});
}

/// @nodoc
class _$HomeFetchPageCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeFetchPageCopyWith<$Res> {
  _$HomeFetchPageCopyWithImpl(
    HomeFetchPage _value,
    $Res Function(HomeFetchPage) _then,
  ) : super(_value, (v) => _then(v as HomeFetchPage));

  @override
  HomeFetchPage get _value => super._value as HomeFetchPage;

  @override
  $Res call({
    Object? id = freezed,
    Object? plantName = freezed,
  }) {
    return _then(
      HomeFetchPage(
        id: id == freezed
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
        plantName: plantName == freezed
            ? _value.plantName
            : plantName // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$HomeFetchPage implements HomeFetchPage {
  const _$HomeFetchPage({required this.id, required this.plantName});

  @override
  final int id;
  @override
  final String plantName;

  @override
  String toString() {
    return 'HomeEvent.fetchPage(id: $id, plantName: $plantName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeFetchPage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.plantName, plantName));
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(plantName),
      );

  @JsonKey(ignore: true)
  @override
  $HomeFetchPageCopyWith<HomeFetchPage> get copyWith =>
      _$HomeFetchPageCopyWithImpl<HomeFetchPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String plantName) fetchPage,
    required TResult Function(PlantData plant) plantAdded,
    required TResult Function(PlantData plant) plantEdited,
    required TResult Function(String plantName) findPlantByName,
  }) {
    return fetchPage(id, plantName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, String plantName)? fetchPage,
    TResult Function(PlantData plant)? plantAdded,
    TResult Function(PlantData plant)? plantEdited,
    TResult Function(String plantName)? findPlantByName,
  }) {
    return fetchPage?.call(id, plantName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String plantName)? fetchPage,
    TResult Function(PlantData plant)? plantAdded,
    TResult Function(PlantData plant)? plantEdited,
    TResult Function(String plantName)? findPlantByName,
    required TResult orElse(),
  }) {
    if (fetchPage != null) {
      return fetchPage(id, plantName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeFetchPage value) fetchPage,
    required TResult Function(HomePlantAdded value) plantAdded,
    required TResult Function(HomePlantEdited value) plantEdited,
    required TResult Function(HomeFindPlantByName value) findPlantByName,
  }) {
    return fetchPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeFetchPage value)? fetchPage,
    TResult Function(HomePlantAdded value)? plantAdded,
    TResult Function(HomePlantEdited value)? plantEdited,
    TResult Function(HomeFindPlantByName value)? findPlantByName,
  }) {
    return fetchPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeFetchPage value)? fetchPage,
    TResult Function(HomePlantAdded value)? plantAdded,
    TResult Function(HomePlantEdited value)? plantEdited,
    TResult Function(HomeFindPlantByName value)? findPlantByName,
    required TResult orElse(),
  }) {
    if (fetchPage != null) {
      return fetchPage(this);
    }
    return orElse();
  }
}

abstract class HomeFetchPage implements HomeEvent {
  const factory HomeFetchPage({required int id, required String plantName}) =
      _$HomeFetchPage;

  int get id;
  String get plantName;
  @JsonKey(ignore: true)
  $HomeFetchPageCopyWith<HomeFetchPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePlantAddedCopyWith<$Res> {
  factory $HomePlantAddedCopyWith(
          HomePlantAdded value, $Res Function(HomePlantAdded) then) =
      _$HomePlantAddedCopyWithImpl<$Res>;
  $Res call({PlantData plant});

  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$HomePlantAddedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomePlantAddedCopyWith<$Res> {
  _$HomePlantAddedCopyWithImpl(
    HomePlantAdded _value,
    $Res Function(HomePlantAdded) _then,
  ) : super(_value, (v) => _then(v as HomePlantAdded));

  @override
  HomePlantAdded get _value => super._value as HomePlantAdded;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(HomePlantAdded(
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

class _$HomePlantAdded implements HomePlantAdded {
  const _$HomePlantAdded({required this.plant});

  @override
  final PlantData plant;

  @override
  String toString() {
    return 'HomeEvent.plantAdded(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomePlantAdded &&
            const DeepCollectionEquality().equals(other.plant, plant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plant));

  @JsonKey(ignore: true)
  @override
  $HomePlantAddedCopyWith<HomePlantAdded> get copyWith =>
      _$HomePlantAddedCopyWithImpl<HomePlantAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String plantName) fetchPage,
    required TResult Function(PlantData plant) plantAdded,
    required TResult Function(PlantData plant) plantEdited,
    required TResult Function(String plantName) findPlantByName,
  }) {
    return plantAdded(plant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, String plantName)? fetchPage,
    TResult Function(PlantData plant)? plantAdded,
    TResult Function(PlantData plant)? plantEdited,
    TResult Function(String plantName)? findPlantByName,
  }) {
    return plantAdded?.call(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String plantName)? fetchPage,
    TResult Function(PlantData plant)? plantAdded,
    TResult Function(PlantData plant)? plantEdited,
    TResult Function(String plantName)? findPlantByName,
    required TResult orElse(),
  }) {
    if (plantAdded != null) {
      return plantAdded(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeFetchPage value) fetchPage,
    required TResult Function(HomePlantAdded value) plantAdded,
    required TResult Function(HomePlantEdited value) plantEdited,
    required TResult Function(HomeFindPlantByName value) findPlantByName,
  }) {
    return plantAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeFetchPage value)? fetchPage,
    TResult Function(HomePlantAdded value)? plantAdded,
    TResult Function(HomePlantEdited value)? plantEdited,
    TResult Function(HomeFindPlantByName value)? findPlantByName,
  }) {
    return plantAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeFetchPage value)? fetchPage,
    TResult Function(HomePlantAdded value)? plantAdded,
    TResult Function(HomePlantEdited value)? plantEdited,
    TResult Function(HomeFindPlantByName value)? findPlantByName,
    required TResult orElse(),
  }) {
    if (plantAdded != null) {
      return plantAdded(this);
    }
    return orElse();
  }
}

abstract class HomePlantAdded implements HomeEvent {
  const factory HomePlantAdded({required PlantData plant}) = _$HomePlantAdded;

  PlantData get plant;
  @JsonKey(ignore: true)
  $HomePlantAddedCopyWith<HomePlantAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePlantEditedCopyWith<$Res> {
  factory $HomePlantEditedCopyWith(
          HomePlantEdited value, $Res Function(HomePlantEdited) then) =
      _$HomePlantEditedCopyWithImpl<$Res>;
  $Res call({PlantData plant});

  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$HomePlantEditedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomePlantEditedCopyWith<$Res> {
  _$HomePlantEditedCopyWithImpl(
      HomePlantEdited _value, $Res Function(HomePlantEdited) _then)
      : super(_value, (v) => _then(v as HomePlantEdited));

  @override
  HomePlantEdited get _value => super._value as HomePlantEdited;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(
      HomePlantEdited(
        plant: plant == freezed
            ? _value.plant
            : plant // ignore: cast_nullable_to_non_nullable
                as PlantData,
      ),
    );
  }

  @override
  $PlantDataCopyWith<$Res> get plant {
    return $PlantDataCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value));
    });
  }
}

/// @nodoc

class _$HomePlantEdited implements HomePlantEdited {
  const _$HomePlantEdited({required this.plant});

  @override
  final PlantData plant;

  @override
  String toString() {
    return 'HomeEvent.plantEdited(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomePlantEdited &&
            const DeepCollectionEquality().equals(other.plant, plant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plant));

  @JsonKey(ignore: true)
  @override
  $HomePlantEditedCopyWith<HomePlantEdited> get copyWith =>
      _$HomePlantEditedCopyWithImpl<HomePlantEdited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String plantName) fetchPage,
    required TResult Function(PlantData plant) plantAdded,
    required TResult Function(PlantData plant) plantEdited,
    required TResult Function(String plantName) findPlantByName,
  }) {
    return plantEdited(plant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, String plantName)? fetchPage,
    TResult Function(PlantData plant)? plantAdded,
    TResult Function(PlantData plant)? plantEdited,
    TResult Function(String plantName)? findPlantByName,
  }) {
    return plantEdited?.call(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String plantName)? fetchPage,
    TResult Function(PlantData plant)? plantAdded,
    TResult Function(PlantData plant)? plantEdited,
    TResult Function(String plantName)? findPlantByName,
    required TResult orElse(),
  }) {
    if (plantEdited != null) {
      return plantEdited(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeFetchPage value) fetchPage,
    required TResult Function(HomePlantAdded value) plantAdded,
    required TResult Function(HomePlantEdited value) plantEdited,
    required TResult Function(HomeFindPlantByName value) findPlantByName,
  }) {
    return plantEdited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeFetchPage value)? fetchPage,
    TResult Function(HomePlantAdded value)? plantAdded,
    TResult Function(HomePlantEdited value)? plantEdited,
    TResult Function(HomeFindPlantByName value)? findPlantByName,
  }) {
    return plantEdited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeFetchPage value)? fetchPage,
    TResult Function(HomePlantAdded value)? plantAdded,
    TResult Function(HomePlantEdited value)? plantEdited,
    TResult Function(HomeFindPlantByName value)? findPlantByName,
    required TResult orElse(),
  }) {
    if (plantEdited != null) {
      return plantEdited(this);
    }
    return orElse();
  }
}

abstract class HomePlantEdited implements HomeEvent {
  const factory HomePlantEdited({required PlantData plant}) = _$HomePlantEdited;

  PlantData get plant;
  @JsonKey(ignore: true)
  $HomePlantEditedCopyWith<HomePlantEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFindPlantByNameCopyWith<$Res> {
  factory $HomeFindPlantByNameCopyWith(
    HomeFindPlantByName value,
    $Res Function(HomeFindPlantByName) then,
  ) = _$HomeFindPlantByNameCopyWithImpl<$Res>;
  $Res call({String plantName});
}

/// @nodoc
class _$HomeFindPlantByNameCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeFindPlantByNameCopyWith<$Res> {
  _$HomeFindPlantByNameCopyWithImpl(
    HomeFindPlantByName _value,
    $Res Function(HomeFindPlantByName) _then,
  ) : super(_value, (v) => _then(v as HomeFindPlantByName));

  @override
  HomeFindPlantByName get _value => super._value as HomeFindPlantByName;

  @override
  $Res call({
    Object? plantName = freezed,
  }) {
    return _then(
      HomeFindPlantByName(
        plantName: plantName == freezed
            ? _value.plantName
            : plantName // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$HomeFindPlantByName implements HomeFindPlantByName {
  const _$HomeFindPlantByName({required this.plantName});

  @override
  final String plantName;

  @override
  String toString() {
    return 'HomeEvent.findPlantByName(plantName: $plantName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeFindPlantByName &&
            const DeepCollectionEquality().equals(other.plantName, plantName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plantName));

  @JsonKey(ignore: true)
  @override
  $HomeFindPlantByNameCopyWith<HomeFindPlantByName> get copyWith =>
      _$HomeFindPlantByNameCopyWithImpl<HomeFindPlantByName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String plantName) fetchPage,
    required TResult Function(PlantData plant) plantAdded,
    required TResult Function(PlantData plant) plantEdited,
    required TResult Function(String plantName) findPlantByName,
  }) {
    return findPlantByName(plantName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, String plantName)? fetchPage,
    TResult Function(PlantData plant)? plantAdded,
    TResult Function(PlantData plant)? plantEdited,
    TResult Function(String plantName)? findPlantByName,
  }) {
    return findPlantByName?.call(plantName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String plantName)? fetchPage,
    TResult Function(PlantData plant)? plantAdded,
    TResult Function(PlantData plant)? plantEdited,
    TResult Function(String plantName)? findPlantByName,
    required TResult orElse(),
  }) {
    if (findPlantByName != null) {
      return findPlantByName(plantName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeFetchPage value) fetchPage,
    required TResult Function(HomePlantAdded value) plantAdded,
    required TResult Function(HomePlantEdited value) plantEdited,
    required TResult Function(HomeFindPlantByName value) findPlantByName,
  }) {
    return findPlantByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeFetchPage value)? fetchPage,
    TResult Function(HomePlantAdded value)? plantAdded,
    TResult Function(HomePlantEdited value)? plantEdited,
    TResult Function(HomeFindPlantByName value)? findPlantByName,
  }) {
    return findPlantByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeFetchPage value)? fetchPage,
    TResult Function(HomePlantAdded value)? plantAdded,
    TResult Function(HomePlantEdited value)? plantEdited,
    TResult Function(HomeFindPlantByName value)? findPlantByName,
    required TResult orElse(),
  }) {
    if (findPlantByName != null) {
      return findPlantByName(this);
    }
    return orElse();
  }
}

abstract class HomeFindPlantByName implements HomeEvent {
  const factory HomeFindPlantByName({required String plantName}) =
      _$HomeFindPlantByName;

  String get plantName;
  @JsonKey(ignore: true)
  $HomeFindPlantByNameCopyWith<HomeFindPlantByName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeInitial initial() {
    return const HomeInitial();
  }

  HomeInitilized initialized(
      {required List<PlantData> plants, required int pageKey}) {
    return HomeInitilized(
      plants: plants,
      pageKey: pageKey,
    );
  }

  HomeEditedSuccessfully editedSuccessfully({required PlantData plant}) {
    return HomeEditedSuccessfully(
      plant: plant,
    );
  }

  HomeAddedSuccessfully addedSuccessfully({required PlantData plant}) {
    return HomeAddedSuccessfully(
      plant: plant,
    );
  }

  HomeNextPage listNextPage(
      {required List<PlantData> plants, required int pageKey}) {
    return HomeNextPage(
      plants: plants,
      pageKey: pageKey,
    );
  }

  HomeError error({required String message}) {
    return HomeError(
      message: message,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PlantData> plants, int pageKey) initialized,
    required TResult Function(PlantData plant) editedSuccessfully,
    required TResult Function(PlantData plant) addedSuccessfully,
    required TResult Function(List<PlantData> plants, int pageKey) listNextPage,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeInitilized value) initialized,
    required TResult Function(HomeEditedSuccessfully value) editedSuccessfully,
    required TResult Function(HomeAddedSuccessfully value) addedSuccessfully,
    required TResult Function(HomeNextPage value) listNextPage,
    required TResult Function(HomeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $HomeInitialCopyWith<$Res> {
  factory $HomeInitialCopyWith(
    HomeInitial value,
    $Res Function(HomeInitial) then,
  ) = _$HomeInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeInitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeInitialCopyWith<$Res> {
  _$HomeInitialCopyWithImpl(
    HomeInitial _value,
    $Res Function(HomeInitial) _then,
  ) : super(_value, (v) => _then(v as HomeInitial));

  @override
  HomeInitial get _value => super._value as HomeInitial;
}

/// @nodoc

class _$HomeInitial implements HomeInitial {
  const _$HomeInitial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PlantData> plants, int pageKey) initialized,
    required TResult Function(PlantData plant) editedSuccessfully,
    required TResult Function(PlantData plant) addedSuccessfully,
    required TResult Function(List<PlantData> plants, int pageKey) listNextPage,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
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
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeInitilized value) initialized,
    required TResult Function(HomeEditedSuccessfully value) editedSuccessfully,
    required TResult Function(HomeAddedSuccessfully value) addedSuccessfully,
    required TResult Function(HomeNextPage value) listNextPage,
    required TResult Function(HomeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitial implements HomeState {
  const factory HomeInitial() = _$HomeInitial;
}

/// @nodoc
abstract class $HomeInitilizedCopyWith<$Res> {
  factory $HomeInitilizedCopyWith(
    HomeInitilized value,
    $Res Function(HomeInitilized) then,
  ) = _$HomeInitilizedCopyWithImpl<$Res>;
  $Res call({List<PlantData> plants, int pageKey});
}

/// @nodoc
class _$HomeInitilizedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeInitilizedCopyWith<$Res> {
  _$HomeInitilizedCopyWithImpl(
    HomeInitilized _value,
    $Res Function(HomeInitilized) _then,
  ) : super(_value, (v) => _then(v as HomeInitilized));

  @override
  HomeInitilized get _value => super._value as HomeInitilized;

  @override
  $Res call({
    Object? plants = freezed,
    Object? pageKey = freezed,
  }) {
    return _then(HomeInitilized(
      plants: plants == freezed
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<PlantData>,
      pageKey: pageKey == freezed
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeInitilized implements HomeInitilized {
  const _$HomeInitilized({required this.plants, required this.pageKey});

  @override
  final List<PlantData> plants;
  @override
  final int pageKey;

  @override
  String toString() {
    return 'HomeState.initialized(plants: $plants, pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeInitilized &&
            const DeepCollectionEquality().equals(other.plants, plants) &&
            const DeepCollectionEquality().equals(other.pageKey, pageKey));
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(plants),
        const DeepCollectionEquality().hash(pageKey),
      );

  @JsonKey(ignore: true)
  @override
  $HomeInitilizedCopyWith<HomeInitilized> get copyWith =>
      _$HomeInitilizedCopyWithImpl<HomeInitilized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PlantData> plants, int pageKey) initialized,
    required TResult Function(PlantData plant) editedSuccessfully,
    required TResult Function(PlantData plant) addedSuccessfully,
    required TResult Function(List<PlantData> plants, int pageKey) listNextPage,
    required TResult Function(String message) error,
  }) {
    return initialized(plants, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
  }) {
    return initialized?.call(plants, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(plants, pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeInitilized value) initialized,
    required TResult Function(HomeEditedSuccessfully value) editedSuccessfully,
    required TResult Function(HomeAddedSuccessfully value) addedSuccessfully,
    required TResult Function(HomeNextPage value) listNextPage,
    required TResult Function(HomeError value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class HomeInitilized implements HomeState {
  const factory HomeInitilized({
    required List<PlantData> plants,
    required int pageKey,
  }) = _$HomeInitilized;

  List<PlantData> get plants;
  int get pageKey;
  @JsonKey(ignore: true)
  $HomeInitilizedCopyWith<HomeInitilized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEditedSuccessfullyCopyWith<$Res> {
  factory $HomeEditedSuccessfullyCopyWith(
    HomeEditedSuccessfully value,
    $Res Function(HomeEditedSuccessfully) then,
  ) = _$HomeEditedSuccessfullyCopyWithImpl<$Res>;
  $Res call({PlantData plant});

  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$HomeEditedSuccessfullyCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeEditedSuccessfullyCopyWith<$Res> {
  _$HomeEditedSuccessfullyCopyWithImpl(
    HomeEditedSuccessfully _value,
    $Res Function(HomeEditedSuccessfully) _then,
  ) : super(_value, (v) => _then(v as HomeEditedSuccessfully));

  @override
  HomeEditedSuccessfully get _value => super._value as HomeEditedSuccessfully;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(
      HomeEditedSuccessfully(
        plant: plant == freezed
            ? _value.plant
            : plant // ignore: cast_nullable_to_non_nullable
                as PlantData,
      ),
    );
  }

  @override
  $PlantDataCopyWith<$Res> get plant {
    return $PlantDataCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value));
    });
  }
}

/// @nodoc

class _$HomeEditedSuccessfully implements HomeEditedSuccessfully {
  const _$HomeEditedSuccessfully({required this.plant});

  @override
  final PlantData plant;

  @override
  String toString() {
    return 'HomeState.editedSuccessfully(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEditedSuccessfully &&
            const DeepCollectionEquality().equals(other.plant, plant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plant));

  @JsonKey(ignore: true)
  @override
  $HomeEditedSuccessfullyCopyWith<HomeEditedSuccessfully> get copyWith =>
      _$HomeEditedSuccessfullyCopyWithImpl<HomeEditedSuccessfully>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PlantData> plants, int pageKey) initialized,
    required TResult Function(PlantData plant) editedSuccessfully,
    required TResult Function(PlantData plant) addedSuccessfully,
    required TResult Function(List<PlantData> plants, int pageKey) listNextPage,
    required TResult Function(String message) error,
  }) {
    return editedSuccessfully(plant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
  }) {
    return editedSuccessfully?.call(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (editedSuccessfully != null) {
      return editedSuccessfully(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeInitilized value) initialized,
    required TResult Function(HomeEditedSuccessfully value) editedSuccessfully,
    required TResult Function(HomeAddedSuccessfully value) addedSuccessfully,
    required TResult Function(HomeNextPage value) listNextPage,
    required TResult Function(HomeError value) error,
  }) {
    return editedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
  }) {
    return editedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (editedSuccessfully != null) {
      return editedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class HomeEditedSuccessfully implements HomeState {
  const factory HomeEditedSuccessfully({required PlantData plant}) =
      _$HomeEditedSuccessfully;

  PlantData get plant;
  @JsonKey(ignore: true)
  $HomeEditedSuccessfullyCopyWith<HomeEditedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAddedSuccessfullyCopyWith<$Res> {
  factory $HomeAddedSuccessfullyCopyWith(
    HomeAddedSuccessfully value,
    $Res Function(HomeAddedSuccessfully) then,
  ) = _$HomeAddedSuccessfullyCopyWithImpl<$Res>;
  $Res call({PlantData plant});

  $PlantDataCopyWith<$Res> get plant;
}

/// @nodoc
class _$HomeAddedSuccessfullyCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeAddedSuccessfullyCopyWith<$Res> {
  _$HomeAddedSuccessfullyCopyWithImpl(
    HomeAddedSuccessfully _value,
    $Res Function(HomeAddedSuccessfully) _then,
  ) : super(_value, (v) => _then(v as HomeAddedSuccessfully));

  @override
  HomeAddedSuccessfully get _value => super._value as HomeAddedSuccessfully;

  @override
  $Res call({
    Object? plant = freezed,
  }) {
    return _then(
      HomeAddedSuccessfully(
        plant: plant == freezed
            ? _value.plant
            : plant // ignore: cast_nullable_to_non_nullable
                as PlantData,
      ),
    );
  }

  @override
  $PlantDataCopyWith<$Res> get plant {
    return $PlantDataCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value));
    });
  }
}

/// @nodoc

class _$HomeAddedSuccessfully implements HomeAddedSuccessfully {
  const _$HomeAddedSuccessfully({required this.plant});

  @override
  final PlantData plant;

  @override
  String toString() {
    return 'HomeState.addedSuccessfully(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeAddedSuccessfully &&
            const DeepCollectionEquality().equals(other.plant, plant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plant));

  @JsonKey(ignore: true)
  @override
  $HomeAddedSuccessfullyCopyWith<HomeAddedSuccessfully> get copyWith =>
      _$HomeAddedSuccessfullyCopyWithImpl<HomeAddedSuccessfully>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PlantData> plants, int pageKey) initialized,
    required TResult Function(PlantData plant) editedSuccessfully,
    required TResult Function(PlantData plant) addedSuccessfully,
    required TResult Function(List<PlantData> plants, int pageKey) listNextPage,
    required TResult Function(String message) error,
  }) {
    return addedSuccessfully(plant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
  }) {
    return addedSuccessfully?.call(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (addedSuccessfully != null) {
      return addedSuccessfully(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeInitilized value) initialized,
    required TResult Function(HomeEditedSuccessfully value) editedSuccessfully,
    required TResult Function(HomeAddedSuccessfully value) addedSuccessfully,
    required TResult Function(HomeNextPage value) listNextPage,
    required TResult Function(HomeError value) error,
  }) {
    return addedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
  }) {
    return addedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (addedSuccessfully != null) {
      return addedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class HomeAddedSuccessfully implements HomeState {
  const factory HomeAddedSuccessfully({required PlantData plant}) =
      _$HomeAddedSuccessfully;

  PlantData get plant;
  @JsonKey(ignore: true)
  $HomeAddedSuccessfullyCopyWith<HomeAddedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNextPageCopyWith<$Res> {
  factory $HomeNextPageCopyWith(
    HomeNextPage value,
    $Res Function(HomeNextPage) then,
  ) = _$HomeNextPageCopyWithImpl<$Res>;
  $Res call({List<PlantData> plants, int pageKey});
}

/// @nodoc
class _$HomeNextPageCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeNextPageCopyWith<$Res> {
  _$HomeNextPageCopyWithImpl(
    HomeNextPage _value,
    $Res Function(HomeNextPage) _then,
  ) : super(_value, (v) => _then(v as HomeNextPage));

  @override
  HomeNextPage get _value => super._value as HomeNextPage;

  @override
  $Res call({
    Object? plants = freezed,
    Object? pageKey = freezed,
  }) {
    return _then(HomeNextPage(
      plants: plants == freezed
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<PlantData>,
      pageKey: pageKey == freezed
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeNextPage implements HomeNextPage {
  const _$HomeNextPage({required this.plants, required this.pageKey});

  @override
  final List<PlantData> plants;
  @override
  final int pageKey;

  @override
  String toString() {
    return 'HomeState.listNextPage(plants: $plants, pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeNextPage &&
            const DeepCollectionEquality().equals(other.plants, plants) &&
            const DeepCollectionEquality().equals(other.pageKey, pageKey));
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(plants),
        const DeepCollectionEquality().hash(pageKey),
      );

  @JsonKey(ignore: true)
  @override
  $HomeNextPageCopyWith<HomeNextPage> get copyWith =>
      _$HomeNextPageCopyWithImpl<HomeNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PlantData> plants, int pageKey) initialized,
    required TResult Function(PlantData plant) editedSuccessfully,
    required TResult Function(PlantData plant) addedSuccessfully,
    required TResult Function(List<PlantData> plants, int pageKey) listNextPage,
    required TResult Function(String message) error,
  }) {
    return listNextPage(plants, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
  }) {
    return listNextPage?.call(plants, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (listNextPage != null) {
      return listNextPage(plants, pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeInitilized value) initialized,
    required TResult Function(HomeEditedSuccessfully value) editedSuccessfully,
    required TResult Function(HomeAddedSuccessfully value) addedSuccessfully,
    required TResult Function(HomeNextPage value) listNextPage,
    required TResult Function(HomeError value) error,
  }) {
    return listNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
  }) {
    return listNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (listNextPage != null) {
      return listNextPage(this);
    }
    return orElse();
  }
}

abstract class HomeNextPage implements HomeState {
  const factory HomeNextPage({
    required List<PlantData> plants,
    required int pageKey,
  }) = _$HomeNextPage;

  List<PlantData> get plants;
  int get pageKey;
  @JsonKey(ignore: true)
  $HomeNextPageCopyWith<HomeNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeErrorCopyWith<$Res> {
  factory $HomeErrorCopyWith(HomeError value, $Res Function(HomeError) then) =
      _$HomeErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$HomeErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeErrorCopyWith<$Res> {
  _$HomeErrorCopyWithImpl(HomeError _value, $Res Function(HomeError) _then)
      : super(_value, (v) => _then(v as HomeError));

  @override
  HomeError get _value => super._value as HomeError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(
      HomeError(
        message: message == freezed
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$HomeError implements HomeError {
  const _$HomeError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $HomeErrorCopyWith<HomeError> get copyWith =>
      _$HomeErrorCopyWithImpl<HomeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PlantData> plants, int pageKey) initialized,
    required TResult Function(PlantData plant) editedSuccessfully,
    required TResult Function(PlantData plant) addedSuccessfully,
    required TResult Function(List<PlantData> plants, int pageKey) listNextPage,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PlantData> plants, int pageKey)? initialized,
    TResult Function(PlantData plant)? editedSuccessfully,
    TResult Function(PlantData plant)? addedSuccessfully,
    TResult Function(List<PlantData> plants, int pageKey)? listNextPage,
    TResult Function(String message)? error,
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
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeInitilized value) initialized,
    required TResult Function(HomeEditedSuccessfully value) editedSuccessfully,
    required TResult Function(HomeAddedSuccessfully value) addedSuccessfully,
    required TResult Function(HomeNextPage value) listNextPage,
    required TResult Function(HomeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeInitilized value)? initialized,
    TResult Function(HomeEditedSuccessfully value)? editedSuccessfully,
    TResult Function(HomeAddedSuccessfully value)? addedSuccessfully,
    TResult Function(HomeNextPage value)? listNextPage,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeError implements HomeState {
  const factory HomeError({required String message}) = _$HomeError;

  String get message;
  @JsonKey(ignore: true)
  $HomeErrorCopyWith<HomeError> get copyWith =>
      throw _privateConstructorUsedError;
}
