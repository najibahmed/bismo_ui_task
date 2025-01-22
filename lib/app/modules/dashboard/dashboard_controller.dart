import 'package:get/get.dart';

class DashboardController extends GetxController{
var _currentIndex=0;
int get currentIndex=>_currentIndex;

void  changeIndex(int index){
 _currentIndex=index;
 update();
}



}