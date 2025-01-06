import 'package:equatable/equatable.dart';

class TradingEvent extends Equatable{
  
  @override
  List<Object?> get props => throw UnimplementedError();
  
  final String? id;
  final String? title;
  final String? eventFinalResult;
  final String? hint;
  final String? icons;
  final int? currentYesPrice;
  final int? currentNoPrice;
  final String? eventStatus;
  final DateTime? eventExpiresOn;
  final String? eventRules;
  final EventCategory? parentCategory;
  final EventCategory? subCategory;
  final String? sourceOfTruth;
  final String? overview;
  final String? live;
  final int? volume;
  final int? traders;
  final int? trades;
  final bool? permission;
  final DateTime? eventStartedOn;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? eventNumber;
  final String? eventSequence;
  final int? version;

  TradingEvent({
    required this.id,
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
    required this.version,
  });

}


class EventCategory{
  String id;
  String name;
  String icon;
  String trending;
  EventCategory({required this.id, required this.name, required this.icon, required this.trending});
}