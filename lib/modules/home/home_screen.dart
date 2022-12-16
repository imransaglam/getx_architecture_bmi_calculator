import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getxbmicalculator/modules/home/home_controller.dart';


class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: controller.formGlobalKey,
            child: Padding(
              padding: const EdgeInsets.only(top:20,left:15,right:15),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Let's Calculate",
                    style: TextStyle(
                        color: Color(0xff6B6B6B),
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "your current BMI",
                    style: TextStyle(
                        color: Color(0xff6B6B6B),
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "You can find out whether you are",
                    style: TextStyle(
                        color: Color(0xffadadad),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "overweight,underweight or ideal weight.",
                    style: TextStyle(
                        color: Color(0xffadadad),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                         controller.chageIndex(0);
                          // setState(() {
                          //   _choosingGender = "Female";
                          // });
                        },
                        child:Obx(() =>  Container(
                            width: 109,
                            height: 50,
                            padding: EdgeInsets.only(top: 15, left: 35),
                            decoration: BoxDecoration(
                                color: controller.selectedIndex.value == 0
                                    ? Color(0xff323335)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Color(0xffE1E1E1))),
                            child: Text(
                              "Female",
                              style: TextStyle(
                                  color: Color(0xff787878),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.chageIndex(1);
                        },
                        child: Obx(() =>  Container(
                            width: 109,
                            height: 50,
                            padding: EdgeInsets.only(top: 15, left: 45),
                            decoration: BoxDecoration(
                                color: controller.selectedIndex.value == 1
                                    ? Color(0xff323335)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Color(0xffE1E1E1))),
                            child: Text(
                              "Male",
                              style: TextStyle(
                                  color: Color(0xff787878),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                      ),),),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.chageIndex(2);
                        },
                        child:Obx(() => Container(
                            width: 109,
                            height: 50,
                            padding: EdgeInsets.only(top: 15, left: 40),
                            decoration: BoxDecoration(
                                    color: controller.selectedIndex.value==2?Color(0xff323335):Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Color(0xffE1E1E1))),
                            child: Text(
                              "Other",
                              style: TextStyle(
                                  color: Color(0xff787878),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),),
                    ],
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                     inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                          validator:(value) {
                        if (value!.isEmpty) {
      return "Enter your age";
    }
                     }, 
                    controller: controller.age,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                      labelText: "Age",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                     validator:(value) {
                        if (value!.isEmpty) {
                        return "Enter your height";
                      } else if (double.parse(controller.height.text) <= 101 ||
                          double.parse(controller.height.text) >= 251) {
                        return "You should enter your height between 100 and 250  ";
                      } 
                      else {
                        return null;
                      }
                     }, 
                    controller: controller.height,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                      labelText: "Height",
                      suffixText: "cm",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                     inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                     validator: (value) {
                         if (value!.isEmpty) {
                        return "Enter your weight";
                      } else if (double.parse(controller.weight.text) <= 29 ||
                          double.parse(controller.weight.text) >= 251) {
                        return "You should enter your weight between 30 kg and 250 kg  ";
                      } else {
                        return null;
                      }
                     },
                    controller: controller.weight,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                      labelText: "Weight",
                      suffixText: "kg",
                    ),
                  ),
                
                  SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () {
                        controller.assestment();
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 15, left: 120),
                        width: 400,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff468FF8),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          "Calculate BMI",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                
                ],
              ),
            ),
          ),
        ));
  }
}