import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/modules/dashboard/dashboard_controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(()=>DashboardController());
  }

}