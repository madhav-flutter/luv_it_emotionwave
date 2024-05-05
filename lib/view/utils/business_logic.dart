import 'package:get/get.dart';

double getHeight(double height) {
  return (Get.height / 844) * height;
  //return (Get.width / 414) * height;
}

double getWidth(double width) {
  return (Get.width / 390) * width;
}
