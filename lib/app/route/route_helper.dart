import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/modules/add_card/add_card_view.dart';
import 'package:loyality_card_wallet/app/modules/add_card/barcode_scan_view.dart';
import 'package:loyality_card_wallet/app/modules/add_card/successful_card_add_view.dart';
import 'package:loyality_card_wallet/app/modules/dashboard/dashboard_view.dart';

class RouteHelper {
  static const String initial = "/dash_board";
  static const String cardAddView = "/cardAddView";
  static const String barCodeScan = "/barCodeScan";
  static const String successAddCard = "/successAddCard";

  static String getInitial() => initial;

  static String getCardAdd() => cardAddView;
  static String getBarCodeScan() => barCodeScan;
  static String getSuccessfulCardView() => successAddCard;

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () => DashboardView(),
        transition: Transition.fadeIn),
    GetPage(
        name: cardAddView,
        page: () => CardAddView(),
        transition: Transition.fadeIn),
    GetPage(
        name: barCodeScan,
        page: () => BarcodeScanView(),
        transition: Transition.fadeIn),
    GetPage(
        name: successAddCard,
        page: () => SuccessfulCardAddView(),
        transition: Transition.fadeIn),
  ];
}
