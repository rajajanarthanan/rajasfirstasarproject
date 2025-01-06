import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rajas_first_asar_game/core/data/models/asar_model.dart';

part 'order_book_update_model.freezed.dart';
part 'order_book_update_model.g.dart';

@freezed
class OrderBookUpdateModel with _$OrderBookUpdateModel implements AsarModel {
  const factory OrderBookUpdateModel({
    required String? eventId,
    required OrderBook? orderBook,
  }) = _OrderBookUpdateModel;

  factory OrderBookUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$OrderBookUpdateModelFromJson(json);

  @override
  toEntity() {
    throw UnimplementedError();
  }
}

@freezed
class OrderBook with _$OrderBook {
  const factory OrderBook({
    required List<Order?>? yesOrders,
    required List<Order?>? noOrders,
  }) = _OrderBook;

  factory OrderBook.fromJson(Map<String, dynamic> json) =>
      _$OrderBookFromJson(json);
}

@freezed
class Order with _$Order {
  const factory Order({
    required double? price,
    required int? quantity,
    required String? id,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}


/*
{
    "eventId": "6778ee44ed3732a352318983",
    "orderBook": {
        "yesOrders": [
            {
                "price": 9.5,
                "quantity": 1,
                "_id": "6778ee44ed3732a352318997"
            }
        ],
        "noOrders": []
    }
}
*/