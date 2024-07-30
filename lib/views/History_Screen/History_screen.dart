import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parklane/common_Widgets/common_widgets.dart';
import 'package:parklane/Scaning_value_page/Scaning_value_page.dart';
import 'package:parklane/views/History_Screen/ticket_history_details_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

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
            40.heightBox,
            Container(

              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,).marginOnly(left: 12),
                  10.heightBox,
                  "91 Tickets".text.white.size(25).bold.make().marginOnly(left: 14),

                  "Ticket history ".text.size(20).white.bold.make().marginOnly(left: 14),

                ],
              ),
            ),
            20.heightBox,

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

                            Get.to(()=>TicketHistoryDetailsScreen());

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
