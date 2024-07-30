import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget LogButton({String? title, color, onTap}) {
  return Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.symmetric(vertical: 10),
    height: 50,
    width: double.maxFinite,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(25)),
    child: Center(
      child: "$title".text.bold.size(18).white.make(),
    ),
  ).onTap(onTap);
}

Widget ticketDetails({passengrName,ticketNumber,status,onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              "Passenger: ".text.black.bold.size(16).make(),
              "$passengrName".text.color(Colors.black.withOpacity(0.6)).size(17).make(),

            ],
          ),
          Row(
            children: [
              "Ticket No: ".text.black.bold.size(16).make(),
              "$ticketNumber".text.color(Colors.black.withOpacity(0.6)).size(17).make(),
            ],
          ),
       "$status".text.size(15).color(Colors.green).make(),
        ],
      ),
      Icon(
        Icons.arrow_forward_ios,color: Colors.blue,
      ).box.roundedFull.size(44, 44).clip(Clip.antiAlias).color(Colors.blue.withOpacity(0.1)).make().onTap(onTap)
    ],
  ).box.rounded.white.shadowSm.padding(EdgeInsets.all(15)).margin(EdgeInsets.all(10)).make();
}

Widget valueBox({title,value}){
  return Column(
   crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceAround,

    children: [
      10.heightBox,
      "$title".text.size(17).black.make(),
      10.heightBox,
      "$value".text.black.size(24).bold.make(),
      10.heightBox,

      Divider(
        color: Colors.grey.withOpacity(0.1,),
        thickness: 7,
      ),

    ],
  );
}
