

import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/modules/add_card/card_add_controller.dart';
import 'package:loyality_card_wallet/app/modules/dashboard/dashboard_controller.dart';

Future<void>init()async{


  Get.put(DashboardController());
  // Get.put(CardAddController());
  // Get.lazyPut(()=>DashboardController());
  Get.lazyPut(()=>CardAddController());


}
