import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:getxbmicalculator/modules/detail/detail_controller.dart';

class DetailBinding implements Bindings{
  @override
  void dependencies(){
Get.put(DetailController());
  }
}