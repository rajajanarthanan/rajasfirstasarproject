import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:rajas_first_asar_game/app/config.dart';
import 'package:rajas_first_asar_game/app/services/auth_service.dart';
import 'package:rajas_first_asar_game/app/services/web_socket_service.dart';
import 'package:rajas_first_asar_game/core/data/respositories/Asar_Repository.dart';
import 'package:rajas_first_asar_game/features/events_trading/data/models/order_book_update_model.dart';
import 'package:rajas_first_asar_game/features/events_trading/data/models/order_model.dart';

class OrderBookUpdateController extends GetxController{
  final AsarRepository repo = AsarRepository();
  final WebSocketService ws;
  final Rx<OrderBookUpdateModel?> orderBookUpdate = Rx<OrderBookUpdateModel?>(null);
  
  OrderBookUpdateController(this.ws);

  @override
  Future<void> onInit() async{
    logger.d('initing orderbookupdatecontroller');
    super.onInit();
    ws.orderBookUpdates.listen((update) {
      orderBookUpdate.value = update;
    });
  }


Future<void> createOrder()async{
  final authService = GetIt.I.get<AuthService>();
  final token = authService.user?.auth?.token;
  print('token: $token');
  final orderRequest = OrderRequestModel(eventId: "677b8b4dd1eed15208be72a4", 
  type: "no",
   quantity: 10, price: 0.75).toJson();

   final createOrder = await repo.postApi(endPoint: Config.asarApiV1.endPoints.createOrder, 
   payloadData: orderRequest, fromJson: OrderModel.fromJson, bearerToken: token);
   createOrder.fold((l)=>logger.e(l), (success){
    logger.d(success);
   });

   createOrder.fold((l)=> Get.defaultDialog(title: "Failed", content: 
   Text("unable to create order now"),
   confirm: ElevatedButton(onPressed: ()=>Get.back(), child: Text("Ok"))  
   ),(r)=>
   Get.defaultDialog(title: "Success", content: 
   Text("Order placed: $r"),
   confirm: ElevatedButton(onPressed: ()=>Get.back(), child: Text("Ok")))
   
    );
}

}
