// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_book_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderBookUpdateModel _$OrderBookUpdateModelFromJson(Map<String, dynamic> json) {
  return _OrderBookUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$OrderBookUpdateModel {
  String? get eventId => throw _privateConstructorUsedError;
  OrderBook? get orderBook => throw _privateConstructorUsedError;

  /// Serializes this OrderBookUpdateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderBookUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderBookUpdateModelCopyWith<OrderBookUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBookUpdateModelCopyWith<$Res> {
  factory $OrderBookUpdateModelCopyWith(OrderBookUpdateModel value,
          $Res Function(OrderBookUpdateModel) then) =
      _$OrderBookUpdateModelCopyWithImpl<$Res, OrderBookUpdateModel>;
  @useResult
  $Res call({String? eventId, OrderBook? orderBook});

  $OrderBookCopyWith<$Res>? get orderBook;
}

/// @nodoc
class _$OrderBookUpdateModelCopyWithImpl<$Res,
        $Val extends OrderBookUpdateModel>
    implements $OrderBookUpdateModelCopyWith<$Res> {
  _$OrderBookUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderBookUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = freezed,
    Object? orderBook = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderBook: freezed == orderBook
          ? _value.orderBook
          : orderBook // ignore: cast_nullable_to_non_nullable
              as OrderBook?,
    ) as $Val);
  }

  /// Create a copy of OrderBookUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderBookCopyWith<$Res>? get orderBook {
    if (_value.orderBook == null) {
      return null;
    }

    return $OrderBookCopyWith<$Res>(_value.orderBook!, (value) {
      return _then(_value.copyWith(orderBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderBookUpdateModelImplCopyWith<$Res>
    implements $OrderBookUpdateModelCopyWith<$Res> {
  factory _$$OrderBookUpdateModelImplCopyWith(_$OrderBookUpdateModelImpl value,
          $Res Function(_$OrderBookUpdateModelImpl) then) =
      __$$OrderBookUpdateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? eventId, OrderBook? orderBook});

  @override
  $OrderBookCopyWith<$Res>? get orderBook;
}

/// @nodoc
class __$$OrderBookUpdateModelImplCopyWithImpl<$Res>
    extends _$OrderBookUpdateModelCopyWithImpl<$Res, _$OrderBookUpdateModelImpl>
    implements _$$OrderBookUpdateModelImplCopyWith<$Res> {
  __$$OrderBookUpdateModelImplCopyWithImpl(_$OrderBookUpdateModelImpl _value,
      $Res Function(_$OrderBookUpdateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderBookUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = freezed,
    Object? orderBook = freezed,
  }) {
    return _then(_$OrderBookUpdateModelImpl(
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderBook: freezed == orderBook
          ? _value.orderBook
          : orderBook // ignore: cast_nullable_to_non_nullable
              as OrderBook?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderBookUpdateModelImpl implements _OrderBookUpdateModel {
  const _$OrderBookUpdateModelImpl(
      {required this.eventId, required this.orderBook});

  factory _$OrderBookUpdateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderBookUpdateModelImplFromJson(json);

  @override
  final String? eventId;
  @override
  final OrderBook? orderBook;

  @override
  String toString() {
    return 'OrderBookUpdateModel(eventId: $eventId, orderBook: $orderBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderBookUpdateModelImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.orderBook, orderBook) ||
                other.orderBook == orderBook));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventId, orderBook);

  /// Create a copy of OrderBookUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderBookUpdateModelImplCopyWith<_$OrderBookUpdateModelImpl>
      get copyWith =>
          __$$OrderBookUpdateModelImplCopyWithImpl<_$OrderBookUpdateModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderBookUpdateModelImplToJson(
      this,
    );
  }
  
  @override
  toEntity() {
    // TODO: implement toEntity
    throw UnimplementedError();
  }
}

abstract class _OrderBookUpdateModel implements OrderBookUpdateModel {
  const factory _OrderBookUpdateModel(
      {required final String? eventId,
      required final OrderBook? orderBook}) = _$OrderBookUpdateModelImpl;

  factory _OrderBookUpdateModel.fromJson(Map<String, dynamic> json) =
      _$OrderBookUpdateModelImpl.fromJson;

  @override
  String? get eventId;
  @override
  OrderBook? get orderBook;

  /// Create a copy of OrderBookUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderBookUpdateModelImplCopyWith<_$OrderBookUpdateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrderBook _$OrderBookFromJson(Map<String, dynamic> json) {
  return _OrderBook.fromJson(json);
}

/// @nodoc
mixin _$OrderBook {
  List<Order?>? get yesOrders => throw _privateConstructorUsedError;
  List<Order?>? get noOrders => throw _privateConstructorUsedError;

  /// Serializes this OrderBook to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderBookCopyWith<OrderBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBookCopyWith<$Res> {
  factory $OrderBookCopyWith(OrderBook value, $Res Function(OrderBook) then) =
      _$OrderBookCopyWithImpl<$Res, OrderBook>;
  @useResult
  $Res call({List<Order?>? yesOrders, List<Order?>? noOrders});
}

/// @nodoc
class _$OrderBookCopyWithImpl<$Res, $Val extends OrderBook>
    implements $OrderBookCopyWith<$Res> {
  _$OrderBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yesOrders = freezed,
    Object? noOrders = freezed,
  }) {
    return _then(_value.copyWith(
      yesOrders: freezed == yesOrders
          ? _value.yesOrders
          : yesOrders // ignore: cast_nullable_to_non_nullable
              as List<Order?>?,
      noOrders: freezed == noOrders
          ? _value.noOrders
          : noOrders // ignore: cast_nullable_to_non_nullable
              as List<Order?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderBookImplCopyWith<$Res>
    implements $OrderBookCopyWith<$Res> {
  factory _$$OrderBookImplCopyWith(
          _$OrderBookImpl value, $Res Function(_$OrderBookImpl) then) =
      __$$OrderBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Order?>? yesOrders, List<Order?>? noOrders});
}

/// @nodoc
class __$$OrderBookImplCopyWithImpl<$Res>
    extends _$OrderBookCopyWithImpl<$Res, _$OrderBookImpl>
    implements _$$OrderBookImplCopyWith<$Res> {
  __$$OrderBookImplCopyWithImpl(
      _$OrderBookImpl _value, $Res Function(_$OrderBookImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yesOrders = freezed,
    Object? noOrders = freezed,
  }) {
    return _then(_$OrderBookImpl(
      yesOrders: freezed == yesOrders
          ? _value._yesOrders
          : yesOrders // ignore: cast_nullable_to_non_nullable
              as List<Order?>?,
      noOrders: freezed == noOrders
          ? _value._noOrders
          : noOrders // ignore: cast_nullable_to_non_nullable
              as List<Order?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderBookImpl implements _OrderBook {
  const _$OrderBookImpl(
      {required final List<Order?>? yesOrders,
      required final List<Order?>? noOrders})
      : _yesOrders = yesOrders,
        _noOrders = noOrders;

  factory _$OrderBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderBookImplFromJson(json);

  final List<Order?>? _yesOrders;
  @override
  List<Order?>? get yesOrders {
    final value = _yesOrders;
    if (value == null) return null;
    if (_yesOrders is EqualUnmodifiableListView) return _yesOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Order?>? _noOrders;
  @override
  List<Order?>? get noOrders {
    final value = _noOrders;
    if (value == null) return null;
    if (_noOrders is EqualUnmodifiableListView) return _noOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderBook(yesOrders: $yesOrders, noOrders: $noOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderBookImpl &&
            const DeepCollectionEquality()
                .equals(other._yesOrders, _yesOrders) &&
            const DeepCollectionEquality().equals(other._noOrders, _noOrders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_yesOrders),
      const DeepCollectionEquality().hash(_noOrders));

  /// Create a copy of OrderBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderBookImplCopyWith<_$OrderBookImpl> get copyWith =>
      __$$OrderBookImplCopyWithImpl<_$OrderBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderBookImplToJson(
      this,
    );
  }
}

abstract class _OrderBook implements OrderBook {
  const factory _OrderBook(
      {required final List<Order?>? yesOrders,
      required final List<Order?>? noOrders}) = _$OrderBookImpl;

  factory _OrderBook.fromJson(Map<String, dynamic> json) =
      _$OrderBookImpl.fromJson;

  @override
  List<Order?>? get yesOrders;
  @override
  List<Order?>? get noOrders;

  /// Create a copy of OrderBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderBookImplCopyWith<_$OrderBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call({double? price, int? quantity, String? id});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? price, int? quantity, String? id});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
    Object? id = freezed,
  }) {
    return _then(_$OrderImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {required this.price, required this.quantity, required this.id});

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final double? price;
  @override
  final int? quantity;
  @override
  final String? id;

  @override
  String toString() {
    return 'Order(price: $price, quantity: $quantity, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, quantity, id);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {required final double? price,
      required final int? quantity,
      required final String? id}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  double? get price;
  @override
  int? get quantity;
  @override
  String? get id;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
