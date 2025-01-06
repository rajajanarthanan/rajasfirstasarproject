import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rajas_first_asar_game/core/data/models/asar_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel implements AsarModel{
  const factory OrderModel({
    required String? userId,
    required String? eventId,
    required double? price,
    required int? quantity,
    required String? type,
    required bool? isExited,
    required String? status,
    required int? pendingQuantity,
    required int? matchedQuantity,
    required int? cancelledQuantity,
    required int? exitingQuantity,
    required int? exitedQuantity,
    required double? refundedAmount,
    @JsonKey(name: '_id') required String? id,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required int? orderNumber,
    required String? orderSequence,
    @JsonKey(name: '__v') required int? v,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
      
  @override
  toEntity() {
    throw UnimplementedError();
  }
}


class OrderRequestModel{
   String eventId;
   String type;
   int quantity;
   double price;
  OrderRequestModel({
    required this.eventId,
    required this.type,
    required this.quantity,
    required this.price
  });  

  Map<String, dynamic> toJson() {
    return {
      'eventId': eventId,
      'type': type,
      'quantity': quantity,
      'price': price,
    };
  }
}