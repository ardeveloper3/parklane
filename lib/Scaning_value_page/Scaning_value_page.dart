import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parklane/common_Widgets/common_widgets.dart';
import 'package:parklane/views/home_screens/Home_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class ScaningValuePage extends StatelessWidget {
  final String? code;
  final Function()? closeScreen;

  const ScaningValuePage({super.key,  this.code,  this.closeScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.maxFinite,
        height: double.maxFinite,

        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/ticketDetailsScreenBg.png"),
                fit: BoxFit.cover

            )
        ),
        child: Column(
          children: [
            50.heightBox,
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Valid Ticket".text.white.size(28).bold.make(),
                Image.asset("assets/images/check-mark-svgrepo-com 1.png"),
              ],
            ).paddingAll(10),

            Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
              color: Colors.white,
              width: double.infinity,

                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        valueBox(
                            title: "Name of Passenger",
                            value: "Bunty chnad",
                        ),

                        valueBox(
                          title: "Ticket no.",
                          value: "PL7262892",
                        ),

                        valueBox(
                          title: "Booking Type",
                          value: "Onward  Journey",
                        ),


                        valueBox(
                          title: "Ticket Type",
                          value: "VIP",
                        ),


                        valueBox(
                          title: "From",
                          value: "Buea",
                        ),

                        valueBox(
                          title: "To",
                          value: "Yaunde",
                        ),


                        valueBox(
                          title: "Ticket Price",
                          value: "XAF 8000",
                        ),

                        valueBox(
                          title: "Departure time",
                          value: "7:00 AM",
                        ),
                        10.heightBox,

                        LogButton(
                            title: "Onboard",
                            color: Colors.green,
                            onTap:(){
                              Get.to(()=>HomeScreen());
                            } ,
                        )


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
