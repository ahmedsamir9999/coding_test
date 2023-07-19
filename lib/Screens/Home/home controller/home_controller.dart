import 'package:carousel_slider/carousel_controller.dart';
import 'package:coding_test/Screens/Home/home%20services/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
{
  final ser = Services();

  int groupValue = 0;
  CarouselController controller = CarouselController();

  @override
  void onInit() {
    ser.aboutData();
    super.onInit();
  }

  groupChange(value){
    groupValue = value  ;
    controller.jumpToPage(groupValue);
    update();
  }

}