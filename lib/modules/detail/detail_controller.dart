import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DetailController extends GetxController{
String? note;
String? photo;
String? result;
  @override
  void onInit() {
    super.onInit();
    note=Get.parameters['note'];
    photo=Get.parameters['photo'];
    result=Get.parameters['result'];
    print("Detail Sayfası Açıldı");
  }
}
