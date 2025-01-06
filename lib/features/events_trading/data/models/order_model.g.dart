// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      userId: json['userId'] as String?,
      eventId: json['eventId'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num?)?.toInt(),
      type: json['type'] as String?,
      isExited: json['isExited'] as bool?,
      status: json['status'] as String?,
      pendingQuantity: (json['pendingQuantity'] as num?)?.toInt(),
      matchedQuantity: (json['matchedQuantity'] as num?)?.toInt(),
      cancelledQuantity: (json['cancelledQuantity'] as num?)?.toInt(),
      exitingQuantity: (json['exitingQuantity'] as num?)?.toInt(),
      exitedQuantity: (json['exitedQuantity'] as num?)?.toInt(),
      refundedAmount: (json['refundedAmount'] as num?)?.toDouble(),
      id: json['_id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      orderNumber: (json['orderNumber'] as num?)?.toInt(),
      orderSequence: json['orderSequence'] as String?,
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'eventId': instance.eventId,
      'price': instance.price,
      'quantity': instance.quantity,
      'type': instance.type,
      'isExited': instance.isExited,
      'status': instance.status,
      'pendingQuantity': instance.pendingQuantity,
      'matchedQuantity': instance.matchedQuantity,
      'cancelledQuantity': instance.cancelledQuantity,
      'exitingQuantity': instance.exitingQuantity,
      'exitedQuantity': instance.exitedQuantity,
      'refundedAmount': instance.refundedAmount,
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'orderNumber': instance.orderNumber,
      'orderSequence': instance.orderSequence,
      '__v': instance.v,
    };
