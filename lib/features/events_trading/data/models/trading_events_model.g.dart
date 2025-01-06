// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trading_events_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradingEventsModelImpl _$$TradingEventsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TradingEventsModelImpl(
      id: json['_id'] as String,
      title: json['title'] as String?,
      eventFinalResult: json['eventFinalResult'] as String?,
      hint: json['hint'] as String?,
      icons: json['icons'] as String?,
      currentYesPrice: (json['currentYesPrice'] as num?)?.toInt(),
      currentNoPrice: (json['currentNoPrice'] as num?)?.toInt(),
      eventStatus: json['eventStatus'] as String?,
      eventExpiresOn: json['eventExpiresOn'] == null
          ? null
          : DateTime.parse(json['eventExpiresOn'] as String),
      eventRules: json['eventRules'] as String?,
      parentCategory: json['parentCategory'] == null
          ? null
          : EventCategoryModel.fromJson(
              json['parentCategory'] as Map<String, dynamic>),
      subCategory: json['subCategory'] == null
          ? null
          : EventCategoryModel.fromJson(
              json['subCategory'] as Map<String, dynamic>),
      sourceOfTruth: json['sourceOfTruth'] as String?,
      overview: json['overview'] as String?,
      live: json['live'] as String?,
      volume: (json['volume'] as num?)?.toInt(),
      traders: (json['traders'] as num?)?.toInt(),
      trades: (json['trades'] as num?)?.toInt(),
      permission: json['permission'] as bool?,
      eventStartedOn: json['eventStartedOn'] == null
          ? null
          : DateTime.parse(json['eventStartedOn'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      eventNumber: (json['eventNumber'] as num?)?.toInt(),
      eventSequence: json['eventSequence'] as String?,
      version: (json['__version'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TradingEventsModelImplToJson(
        _$TradingEventsModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'eventFinalResult': instance.eventFinalResult,
      'hint': instance.hint,
      'icons': instance.icons,
      'currentYesPrice': instance.currentYesPrice,
      'currentNoPrice': instance.currentNoPrice,
      'eventStatus': instance.eventStatus,
      'eventExpiresOn': instance.eventExpiresOn?.toIso8601String(),
      'eventRules': instance.eventRules,
      'parentCategory': instance.parentCategory,
      'subCategory': instance.subCategory,
      'sourceOfTruth': instance.sourceOfTruth,
      'overview': instance.overview,
      'live': instance.live,
      'volume': instance.volume,
      'traders': instance.traders,
      'trades': instance.trades,
      'permission': instance.permission,
      'eventStartedOn': instance.eventStartedOn?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'eventNumber': instance.eventNumber,
      'eventSequence': instance.eventSequence,
      '__version': instance.version,
    };

_$EventCategoryModelImpl _$$EventCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EventCategoryModelImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String,
      trending: json['trending'] as String,
    );

Map<String, dynamic> _$$EventCategoryModelImplToJson(
        _$EventCategoryModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'trending': instance.trending,
    };
