import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rajas_first_asar_game/core/data/models/asar_model.dart';
import 'package:rajas_first_asar_game/features/events_trading/domain/entities/trading_event.dart';

part 'trading_events_model.freezed.dart';
part 'trading_events_model.g.dart';

@freezed
class TradingEventsModel with _$TradingEventsModel implements AsarModel {
  const factory TradingEventsModel({
   @JsonKey(name: '_id') required String id,
   required String? title,
   required String? eventFinalResult,
   required String? hint,
   required String? icons,
   required int? currentYesPrice,
   required int? currentNoPrice,
   required String? eventStatus,
   required DateTime? eventExpiresOn,
   required String? eventRules,
   required EventCategoryModel? parentCategory,
   required EventCategoryModel? subCategory,
   required String? sourceOfTruth,
   required String? overview,
   required String? live,
   required int? volume,
   required int? traders,
   required int? trades,
   required bool? permission,
   required DateTime? eventStartedOn,
   required DateTime? createdAt,
   required DateTime? updatedAt,
   required int? eventNumber,
   required String? eventSequence,
   @JsonKey(name: '__version') required int? version,
  }) = _TradingEventsModel;

  factory TradingEventsModel.fromJson(Map<String, dynamic> json) => _$TradingEventsModelFromJson(json);

  @override
  TradingEvent toEntity(){
    return TradingEvent(id: id, title: title, eventFinalResult: eventFinalResult,
     hint: hint, icons: icons, currentYesPrice: currentYesPrice, currentNoPrice: currentNoPrice, 
    eventStatus: eventStatus, eventExpiresOn: eventExpiresOn, eventRules: eventRules,
     parentCategory: parentCategory?.toEntity(), subCategory: subCategory?.toEntity(), sourceOfTruth: sourceOfTruth,
      overview: overview, live: live, volume: volume, traders: traders, trades: trades,
       permission: permission, eventStartedOn: eventStartedOn, createdAt: createdAt,
    updatedAt: updatedAt, eventNumber: eventNumber, eventSequence: eventSequence, version: version);
  }
}

/*
"_id": "676a9910a3df491596c600de",
            "name": "Cricket",
            "icon": "https://profilepics-useryousay.b-cdn.net/1735039247454-icon-cricket.png",
            "trending": "no"
*/
@freezed
class EventCategoryModel with _$EventCategoryModel{
  const factory EventCategoryModel({
    @JsonKey(name: "_id") required String id,
    required String name,
    required String icon,
    required String trending
  }) = _EventCategoryModel;
 factory EventCategoryModel.fromJson(Map<String, dynamic> json) => _$EventCategoryModelFromJson(json);

 EventCategory toEntity(){
  return EventCategory(id: id, name: name, icon: icon, trending: trending);
 }
}


