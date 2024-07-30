import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parklane/common_Widgets/common_widgets.dart';
import 'package:parklane/Scaning_value_page/Scaning_value_page.dart';
import 'package:velocity_x/velocity_x.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.maxFinite,
        height: double.maxFinite,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/list_screen_bg.png"),
            fit: BoxFit.cover
      
          )
        ),

        child: Column(
          children: [
            50.heightBox,
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end
                ,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Hello, Agish".text.white.size(25).bold.make().marginOnly(left: 15),

                      "Welcome to ParkLan, ".text.size(20).white.make().marginOnly(left: 15),

                    ],
                  ),

                  Icon(Icons.power_settings_new_outlined,size: 50,color: Colors.white,).marginOnly(right: 15)

                ],
              ),
            ),
            40.heightBox,

            Expanded(
                child: Container(
              color: Colors.white,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [

                        ticketDetails(
                            passengrName: "Bunty chnad",
                            ticketNumber: " PL36250",
                            status: "Onward Journey",
                          onTap: (){

                              Get.to(()=>ScaningValuePage());

                          }
                        ),

                        ticketDetails(
                          passengrName: "Bunty chnad",
                          ticketNumber: " PL36250",
                          status: "Onward Journey",
                            onTap: (){}
                        ),

                        ticketDetails(
                          passengrName: "Bunty chnad",
                          ticketNumber: " PL36250",
                          status: "Onward Journey",
                            onTap: (){}
                        ),

                        ticketDetails(
                          passengrName: "Bunty chnad",
                          ticketNumber: " PL36250",
                          status: "Onward Journey",
                            onTap: (){}
                        ),

                        ticketDetails(
                          passengrName: "Bunty chnad",
                          ticketNumber: " PL36250",
                          status: "Onward Journey",
                            onTap: (){}
                        ),


                        ticketDetails(
                          passengrName: "Bunty chnad",
                          ticketNumber: " PL36250",
                          status: "Onward Journey",
                            onTap: (){}
                        ),


                        ticketDetails(
                          passengrName: "Bunty chnad",
                          ticketNumber: " PL36250",
                          status: "Onward Journey",
                            onTap: (){}
                        ),

                      ],
                    ),
                  ),
            ),

            )
          ],



        ),

      ),
    );
  }
}
