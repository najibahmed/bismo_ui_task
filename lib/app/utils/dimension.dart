import 'package:get/get.dart';

class Dimension{
 //  Screen Height:826.9090909090909
 // Screen Width:392.72727272727275

  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

   static double barCodeContainerWidth= screenWidth/1.54;
   static double barCodeContainerHeight= screenHeight/5.88;

   static double height10= screenHeight/82.69;
   static double width10= screenWidth/39.27;




   static double font20= screenHeight/41.35;


   static double radius20= screenHeight/44.5;


}