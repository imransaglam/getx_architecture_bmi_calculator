import 'package:get/get.dart';
import 'package:getxbmicalculator/modules/detail/detail_binding.dart';
import 'package:getxbmicalculator/modules/detail/detail_screen.dart';
import 'package:getxbmicalculator/modules/home/home_binding.dart';

import '../modules/home/home_screen.dart';

part 'app_routes.dart';
class AppPages{
  static const INITIAL=Routes.HOME;
  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () =>  HomeScreen(),
        binding: HomeBinding()),

        GetPage(
      name: Routes.DETAIL, 
      page: ()=>DetailScreen(),
      binding: DetailBinding()
      ),
   
      
   
  ];
}
