// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_book_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderBookUpdateModelImpl _$$OrderBookUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderBookUpdateModelImpl(
      eventId: json['eventId'] as String?,
      orderBook: json['orderBook'] == null
          ? null
          : OrderBook.fromJson(json['orderBook'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderBookUpdateModelImplToJson(
        _$OrderBookUpdateModelImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'orderBook': instance.orderBook,
    };

_$OrderBookImpl _$$OrderBookImplFromJson(Map<String, dynamic> json) =>
    _$OrderBookImpl(
      yesOrders: (json['yesOrders'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      noOrders: (json['noOrders'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderBookImplToJson(_$OrderBookImpl instance) =>
    <String, dynamic>{
      'yesOrders': instance.yesOrders,
      'noOrders': instance.noOrders,
    };

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      price: (json['price'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num?)?.toInt(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'quantity': instance.quantity,
      'id': instance.id,
    };
