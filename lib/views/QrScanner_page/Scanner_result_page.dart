import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Resultscreen extends StatelessWidget {
  final String code;
  final Function()closeScreen;
  const Resultscreen({super.key, required this.code, required this.closeScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),color: Colors.black,onPressed: (){
          closeScreen();
          Navigator.pop(context);
        },),
        title: Text("Qr result"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            QrImageView(data: code,size: 150,version: QrVersions.auto,),

            Text("Scanned result"),
            SizedBox(height: 10,),

            Text(code),


            SizedBox(
              width: MediaQuery.of(context).size.width - 100,

              height: 48,

              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue
                  ),
                  onPressed: (){},

                  child: Text("copy")),
            )

          ],
        ),
      ),
    );
  }
}