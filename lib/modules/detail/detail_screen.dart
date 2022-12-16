import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getxbmicalculator/modules/detail/detail_controller.dart';


class DetailScreen extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(left:15,right:15),
        child: Column(
          children: [
            SizedBox(height:100),
            Container(
              width: 500,
              height: 450,
              decoration: BoxDecoration(
                color:Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("Your BMI is",style: TextStyle(color:Color(0xff383838),fontSize:30,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text("${controller.result.toString().substring(0,2)}",style: TextStyle(color:Color(0xff51C797),fontSize:40,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text("${controller.note}",style: TextStyle(color:Color(0xff383838),fontSize:20,fontWeight: FontWeight.w600),),
                    SizedBox(height: 40,),
                     Container(width:200,
                      height: 200, 
                      child: Image.asset("${controller.photo}",fit: BoxFit.cover,)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 150),
            GestureDetector(
              onTap: (() {
               Get.back();
              }),
              child: Container(
                    padding: EdgeInsets.only(top: 5, left: 140),
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff468FF8),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.rotate_left_rounded,color: Colors.white,),
                        SizedBox(width: 5,),
                        Text(
                          "Start over",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),     
                        ),
                      ],
                    ),
                  ),
            ),   
          ],
        )),
      ),
    );
  }
}