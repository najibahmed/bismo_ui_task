import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/modules/add_card/card_add_controller.dart';
import 'package:loyality_card_wallet/app/modules/dashboard/dashboard_controller.dart';

class CardAddBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CardAddController>(()=>CardAddController());
  }

}