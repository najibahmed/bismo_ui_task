import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/modules/dashboard/dashboard_controller.dart';
import 'package:loyality_card_wallet/app/route/route_helper.dart';
import 'package:loyality_card_wallet/app/helper/dependencies.dart.' as dep;


void main() async{
  runApp(const MyApp());
  await dep.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
          ),
          initialRoute: RouteHelper.initial,
          getPages: RouteHelper.routes,
        );
      }
    );
  }
}

