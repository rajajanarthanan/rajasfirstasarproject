// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trading_events_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradingEventsModel _$TradingEventsModelFromJson(Map<String, dynamic> json) {
  return _TradingEventsModel.fromJson(json);
}

/// @nodoc
mixin _$TradingEventsModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get eventFinalResult => throw _privateConstructorUsedError;
  String? get hint => throw _privateConstructorUsedError;
  String? get icons => throw _privateConstructorUsedError;
  int? get currentYesPrice => throw _privateConstructorUsedError;
  int? get currentNoPrice => throw _privateConstructorUsedError;
  String? get eventStatus => throw _privateConstructorUsedError;
  DateTime? get eventExpiresOn => throw _privateConstructorUsedError;
  String? get eventRules => throw _privateConstructorUsedError;
  EventCategoryModel? get parentCategory => throw _privateConstructorUsedError;
  EventCategoryModel? get subCategory => throw _privateConstructorUsedError;
  String? get sourceOfTruth => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  String? get live => throw _privateConstructorUsedError;
  int? get volume => throw _privateConstructorUsedError;
  int? get traders => throw _privateConstructorUsedError;
  int? get trades => throw _privateConstructorUsedError;
  bool? get permission => throw _privateConstructorUsedError;
  DateTime? get eventStartedOn => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get eventNumber => throw _privateConstructorUsedError;
  String? get eventSequence => throw _privateConstructorUsedError;
  @JsonKey(name: '__version')
  int? get version => throw _privateConstructorUsedError;

  /// Serializes this TradingEventsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradingEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradingEventsModelCopyWith<TradingEventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradingEventsModelCopyWith<$Res> {
  factory $TradingEventsModelCopyWith(
          TradingEventsModel value, $Res Function(TradingEventsModel) then) =
      _$TradingEventsModelCopyWithImpl<$Res, TradingEventsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? title,
      String? eventFinalResult,
      String? hint,
      String? icons,
      int? currentYesPrice,
      int? currentNoPrice,
      String? eventStatus,
      DateTime? eventExpiresOn,
      String? eventRules,
      EventCategoryModel? parentCategory,
      EventCategoryModel? subCategory,
      String? sourceOfTruth,
      String? overview,
      String? live,
      int? volume,
      int? traders,
      int? trades,
      bool? permission,
      DateTime? eventStartedOn,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? eventNumber,
      String? eventSequence,
      @JsonKey(name: '__version') int? version});

  $EventCategoryModelCopyWith<$Res>? get parentCategory;
  $EventCategoryModelCopyWith<$Res>? get subCategory;
}

/// @nodoc
class _$TradingEventsModelCopyWithImpl<$Res, $Val extends TradingEventsModel>
    implements $TradingEventsModelCopyWith<$Res> {
  _$TradingEventsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradingEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? eventFinalResult = freezed,
    Object? hint = freezed,
    Object? icons = freezed,
    Object? currentYesPrice = freezed,
    Object? currentNoPrice = freezed,
    Object? eventStatus = freezed,
    Object? eventExpiresOn = freezed,
    Object? eventRules = freezed,
    Object? parentCategory = freezed,
    Object? subCategory = freezed,
    Object? sourceOfTruth = freezed,
    Object? overview = freezed,
    Object? live = freezed,
    Object? volume = freezed,
    Object? traders = freezed,
    Object? trades = freezed,
    Object? permission = freezed,
    Object? eventStartedOn = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? eventNumber = freezed,
    Object? eventSequence = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      eventFinalResult: freezed == eventFinalResult
          ? _value.eventFinalResult
          : eventFinalResult // ignore: cast_nullable_to_non_nullable
              as String?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      icons: freezed == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as String?,
      currentYesPrice: freezed == currentYesPrice
          ? _value.currentYesPrice
          : currentYesPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      currentNoPrice: freezed == currentNoPrice
          ? _value.currentNoPrice
          : currentNoPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      eventStatus: freezed == eventStatus
          ? _value.eventStatus
          : eventStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      eventExpiresOn: freezed == eventExpiresOn
          ? _value.eventExpiresOn
          : eventExpiresOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventRules: freezed == eventRules
          ? _value.eventRules
          : eventRules // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategory: freezed == parentCategory
          ? _value.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as EventCategoryModel?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as EventCategoryModel?,
      sourceOfTruth: freezed == sourceOfTruth
          ? _value.sourceOfTruth
          : sourceOfTruth // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      live: freezed == live
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int?,
      traders: freezed == traders
          ? _value.traders
          : traders // ignore: cast_nullable_to_non_nullable
              as int?,
      trades: freezed == trades
          ? _value.trades
          : trades // ignore: cast_nullable_to_non_nullable
              as int?,
      permission: freezed == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as bool?,
      eventStartedOn: freezed == eventStartedOn
          ? _value.eventStartedOn
          : eventStartedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventNumber: freezed == eventNumber
          ? _value.eventNumber
          : eventNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      eventSequence: freezed == eventSequence
          ? _value.eventSequence
          : eventSequence // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of TradingEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventCategoryModelCopyWith<$Res>? get parentCategory {
    if (_value.parentCategory == null) {
      return null;
    }

    return $EventCategoryModelCopyWith<$Res>(_value.parentCategory!, (value) {
      return _then(_value.copyWith(parentCategory: value) as $Val);
    });
  }

  /// Create a copy of TradingEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventCategoryModelCopyWith<$Res>? get subCategory {
    if (_value.subCategory == null) {
      return null;
    }

    return $EventCategoryModelCopyWith<$Res>(_value.subCategory!, (value) {
      return _then(_value.copyWith(subCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TradingEventsModelImplCopyWith<$Res>
    implements $TradingEventsModelCopyWith<$Res> {
  factory _$$TradingEventsModelImplCopyWith(_$TradingEventsModelImpl value,
          $Res Function(_$TradingEventsModelImpl) then) =
      __$$TradingEventsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? title,
      String? eventFinalResult,
      String? hint,
      String? icons,
      int? currentYesPrice,
      int? currentNoPrice,
      String? eventStatus,
      DateTime? eventExpiresOn,
      String? eventRules,
      EventCategoryModel? parentCategory,
      EventCategoryModel? subCategory,
      String? sourceOfTruth,
      String? overview,
      String? live,
      int? volume,
      int? traders,
      int? trades,
      bool? permission,
      DateTime? eventStartedOn,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? eventNumber,
      String? eventSequence,
      @JsonKey(name: '__version') int? version});

  @override
  $EventCategoryModelCopyWith<$Res>? get parentCategory;
  @override
  $EventCategoryModelCopyWith<$Res>? get subCategory;
}

/// @nodoc
class __$$TradingEventsModelImplCopyWithImpl<$Res>
    extends _$TradingEventsModelCopyWithImpl<$Res, _$TradingEventsModelImpl>
    implements _$$TradingEventsModelImplCopyWith<$Res> {
  __$$TradingEventsModelImplCopyWithImpl(_$TradingEventsModelImpl _value,
      $Res Function(_$TradingEventsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradingEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? eventFinalResult = freezed,
    Object? hint = freezed,
    Object? icons = freezed,
    Object? currentYesPrice = freezed,
    Object? currentNoPrice = freezed,
    Object? eventStatus = freezed,
    Object? eventExpiresOn = freezed,
    Object? eventRules = freezed,
    Object? parentCategory = freezed,
    Object? subCategory = freezed,
    Object? sourceOfTruth = freezed,
    Object? overview = freezed,
    Object? live = freezed,
    Object? volume = freezed,
    Object? traders = freezed,
    Object? trades = freezed,
    Object? permission = freezed,
    Object? eventStartedOn = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? eventNumber = freezed,
    Object? eventSequence = freezed,
    Object? version = freezed,
  }) {
    return _then(_$TradingEventsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      eventFinalResult: freezed == eventFinalResult
          ? _value.eventFinalResult
          : eventFinalResult // ignore: cast_nullable_to_non_nullable
              as String?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      icons: freezed == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as String?,
      currentYesPrice: freezed == currentYesPrice
          ? _value.currentYesPrice
          : currentYesPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      currentNoPrice: freezed == currentNoPrice
          ? _value.currentNoPrice
          : currentNoPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      eventStatus: freezed == eventStatus
          ? _value.eventStatus
          : eventStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      eventExpiresOn: freezed == eventExpiresOn
          ? _value.eventExpiresOn
          : eventExpiresOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventRules: freezed == eventRules
          ? _value.eventRules
          : eventRules // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategory: freezed == parentCategory
          ? _value.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as EventCategoryModel?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as EventCategoryModel?,
      sourceOfTruth: freezed == sourceOfTruth
          ? _value.sourceOfTruth
          : sourceOfTruth // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      live: freezed == live
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int?,
      traders: freezed == traders
          ? _value.traders
          : traders // ignore: cast_nullable_to_non_nullable
              as int?,
      trades: freezed == trades
          ? _value.trades
          : trades // ignore: cast_nullable_to_non_nullable
              as int?,
      permission: freezed == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as bool?,
      eventStartedOn: freezed == eventStartedOn
          ? _value.eventStartedOn
          : eventStartedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventNumber: freezed == eventNumber
          ? _value.eventNumber
          : eventNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      eventSequence: freezed == eventSequence
          ? _value.eventSequence
          : eventSequence // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradingEventsModelImpl
    with DiagnosticableTreeMixin
    implements _TradingEventsModel {
  const _$TradingEventsModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.eventFinalResult,
      required this.hint,
      required this.icons,
      required this.currentYesPrice,
      required this.currentNoPrice,
      required this.eventStatus,
      required this.eventExpiresOn,
      required this.eventRules,
      required this.parentCategory,
      required this.subCategory,
      required this.sourceOfTruth,
      required this.overview,
      required this.live,
      required this.volume,
      required this.traders,
      required this.trades,
      required this.permission,
      required this.eventStartedOn,
      required this.createdAt,
      required this.updatedAt,
      required this.eventNumber,
      required this.eventSequence,
      @JsonKey(name: '__version') required this.version});

  factory _$TradingEventsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradingEventsModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? title;
  @override
  final String? eventFinalResult;
  @override
  final String? hint;
  @override
  final String? icons;
  @override
  final int? currentYesPrice;
  @override
  final int? currentNoPrice;
  @override
  final String? eventStatus;
  @override
  final DateTime? eventExpiresOn;
  @override
  final String? eventRules;
  @override
  final EventCategoryModel? parentCategory;
  @override
  final EventCategoryModel? subCategory;
  @override
  final String? sourceOfTruth;
  @override
  final String? overview;
  @override
  final String? live;
  @override
  final int? volume;
  @override
  final int? traders;
  @override
  final int? trades;
  @override
  final bool? permission;
  @override
  final DateTime? eventStartedOn;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? eventNumber;
  @override
  final String? eventSequence;
  @override
  @JsonKey(name: '__version')
  final int? version;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TradingEventsModel(id: $id, title: $title, eventFinalResult: $eventFinalResult, hint: $hint, icons: $icons, currentYesPrice: $currentYesPrice, currentNoPrice: $currentNoPrice, eventStatus: $eventStatus, eventExpiresOn: $eventExpiresOn, eventRules: $eventRules, parentCategory: $parentCategory, subCategory: $subCategory, sourceOfTruth: $sourceOfTruth, overview: $overview, live: $live, volume: $volume, traders: $traders, trades: $trades, permission: $permission, eventStartedOn: $eventStartedOn, createdAt: $createdAt, updatedAt: $updatedAt, eventNumber: $eventNumber, eventSequence: $eventSequence, version: $version)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TradingEventsModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('eventFinalResult', eventFinalResult))
      ..add(DiagnosticsProperty('hint', hint))
      ..add(DiagnosticsProperty('icons', icons))
      ..add(DiagnosticsProperty('currentYesPrice', currentYesPrice))
      ..add(DiagnosticsProperty('currentNoPrice', currentNoPrice))
      ..add(DiagnosticsProperty('eventStatus', eventStatus))
      ..add(DiagnosticsProperty('eventExpiresOn', eventExpiresOn))
      ..add(DiagnosticsProperty('eventRules', eventRules))
      ..add(DiagnosticsProperty('parentCategory', parentCategory))
      ..add(DiagnosticsProperty('subCategory', subCategory))
      ..add(DiagnosticsProperty('sourceOfTruth', sourceOfTruth))
      ..add(DiagnosticsProperty('overview', overview))
      ..add(DiagnosticsProperty('live', live))
      ..add(DiagnosticsProperty('volume', volume))
      ..add(DiagnosticsProperty('traders', traders))
      ..add(DiagnosticsProperty('trades', trades))
      ..add(DiagnosticsProperty('permission', permission))
      ..add(DiagnosticsProperty('eventStartedOn', eventStartedOn))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('eventNumber', eventNumber))
      ..add(DiagnosticsProperty('eventSequence', eventSequence))
      ..add(DiagnosticsProperty('version', version));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradingEventsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.eventFinalResult, eventFinalResult) ||
                other.eventFinalResult == eventFinalResult) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.icons, icons) || other.icons == icons) &&
            (identical(other.currentYesPrice, currentYesPrice) ||
                other.currentYesPrice == currentYesPrice) &&
            (identical(other.currentNoPrice, currentNoPrice) ||
                other.currentNoPrice == currentNoPrice) &&
            (identical(other.eventStatus, eventStatus) ||
                other.eventStatus == eventStatus) &&
            (identical(other.eventExpiresOn, eventExpiresOn) ||
                other.eventExpiresOn == eventExpiresOn) &&
            (identical(other.eventRules, eventRules) ||
                other.eventRules == eventRules) &&
            (identical(other.parentCategory, parentCategory) ||
                other.parentCategory == parentCategory) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.sourceOfTruth, sourceOfTruth) ||
                other.sourceOfTruth == sourceOfTruth) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.live, live) || other.live == live) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.traders, traders) || other.traders == traders) &&
            (identical(other.trades, trades) || other.trades == trades) &&
            (identical(other.permission, permission) ||
                other.permission == permission) &&
            (identical(other.eventStartedOn, eventStartedOn) ||
                other.eventStartedOn == eventStartedOn) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.eventNumber, eventNumber) ||
                other.eventNumber == eventNumber) &&
            (identical(other.eventSequence, eventSequence) ||
                other.eventSequence == eventSequence) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        eventFinalResult,
        hint,
        icons,
        currentYesPrice,
        currentNoPrice,
        eventStatus,
        eventExpiresOn,
        eventRules,
        parentCategory,
        subCategory,
        sourceOfTruth,
        overview,
        live,
        volume,
        traders,
        trades,
        permission,
        eventStartedOn,
        createdAt,
        updatedAt,
        eventNumber,
        eventSequence,
        version
      ]);

  /// Create a copy of TradingEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradingEventsModelImplCopyWith<_$TradingEventsModelImpl> get copyWith =>
      __$$TradingEventsModelImplCopyWithImpl<_$TradingEventsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradingEventsModelImplToJson(
      this,
    );
  }
  
  @override
  TradingEvent toEntity() {
    // TODO: implement toEntity
    throw UnimplementedError();
  }
}

abstract class _TradingEventsModel implements TradingEventsModel {
  const factory _TradingEventsModel(
          {@JsonKey(name: '_id') required final String id,
          required final String? title,
          required final String? eventFinalResult,
          required final String? hint,
          required final String? icons,
          required final int? currentYesPrice,
          required final int? currentNoPrice,
          required final String? eventStatus,
          required final DateTime? eventExpiresOn,
          required final String? eventRules,
          required final EventCategoryModel? parentCategory,
          required final EventCategoryModel? subCategory,
          required final String? sourceOfTruth,
          required final String? overview,
          required final String? live,
          required final int? volume,
          required final int? traders,
          required final int? trades,
          required final bool? permission,
          required final DateTime? eventStartedOn,
          required final DateTime? createdAt,
          required final DateTime? updatedAt,
          required final int? eventNumber,
          required final String? eventSequence,
          @JsonKey(name: '__version') required final int? version}) =
      _$TradingEventsModelImpl;

  factory _TradingEventsModel.fromJson(Map<String, dynamic> json) =
      _$TradingEventsModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get title;
  @override
  String? get eventFinalResult;
  @override
  String? get hint;
  @override
  String? get icons;
  @override
  int? get currentYesPrice;
  @override
  int? get currentNoPrice;
  @override
  String? get eventStatus;
  @override
  DateTime? get eventExpiresOn;
  @override
  String? get eventRules;
  @override
  EventCategoryModel? get parentCategory;
  @override
  EventCategoryModel? get subCategory;
  @override
  String? get sourceOfTruth;
  @override
  String? get overview;
  @override
  String? get live;
  @override
  int? get volume;
  @override
  int? get traders;
  @override
  int? get trades;
  @override
  bool? get permission;
  @override
  DateTime? get eventStartedOn;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get eventNumber;
  @override
  String? get eventSequence;
  @override
  @JsonKey(name: '__version')
  int? get version;

  /// Create a copy of TradingEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradingEventsModelImplCopyWith<_$TradingEventsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventCategoryModel _$EventCategoryModelFromJson(Map<String, dynamic> json) {
  return _EventCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$EventCategoryModel {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get trending => throw _privateConstructorUsedError;

  /// Serializes this EventCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventCategoryModelCopyWith<EventCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCategoryModelCopyWith<$Res> {
  factory $EventCategoryModelCopyWith(
          EventCategoryModel value, $Res Function(EventCategoryModel) then) =
      _$EventCategoryModelCopyWithImpl<$Res, EventCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      String icon,
      String trending});
}

/// @nodoc
class _$EventCategoryModelCopyWithImpl<$Res, $Val extends EventCategoryModel>
    implements $EventCategoryModelCopyWith<$Res> {
  _$EventCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? trending = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventCategoryModelImplCopyWith<$Res>
    implements $EventCategoryModelCopyWith<$Res> {
  factory _$$EventCategoryModelImplCopyWith(_$EventCategoryModelImpl value,
          $Res Function(_$EventCategoryModelImpl) then) =
      __$$EventCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      String icon,
      String trending});
}

/// @nodoc
class __$$EventCategoryModelImplCopyWithImpl<$Res>
    extends _$EventCategoryModelCopyWithImpl<$Res, _$EventCategoryModelImpl>
    implements _$$EventCategoryModelImplCopyWith<$Res> {
  __$$EventCategoryModelImplCopyWithImpl(_$EventCategoryModelImpl _value,
      $Res Function(_$EventCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? trending = null,
  }) {
    return _then(_$EventCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventCategoryModelImpl
    with DiagnosticableTreeMixin
    implements _EventCategoryModel {
  const _$EventCategoryModelImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.icon,
      required this.trending});

  factory _$EventCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String name;
  @override
  final String icon;
  @override
  final String trending;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EventCategoryModel(id: $id, name: $name, icon: $icon, trending: $trending)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EventCategoryModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('trending', trending));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.trending, trending) ||
                other.trending == trending));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon, trending);

  /// Create a copy of EventCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventCategoryModelImplCopyWith<_$EventCategoryModelImpl> get copyWith =>
      __$$EventCategoryModelImplCopyWithImpl<_$EventCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventCategoryModelImplToJson(
      this,
    );
  }
  
  @override
  EventCategory toEntity() {
    // TODO: implement toEntity
    throw UnimplementedError();
  }
}

abstract class _EventCategoryModel implements EventCategoryModel {
  const factory _EventCategoryModel(
      {@JsonKey(name: "_id") required final String id,
      required final String name,
      required final String icon,
      required final String trending}) = _$EventCategoryModelImpl;

  factory _EventCategoryModel.fromJson(Map<String, dynamic> json) =
      _$EventCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  String get trending;

  /// Create a copy of EventCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventCategoryModelImplCopyWith<_$EventCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
