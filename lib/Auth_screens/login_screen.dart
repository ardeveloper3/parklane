import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parklane/common_Widgets/common_widgets.dart';
import 'package:parklane/common_Widgets/rounded_text_field.dart';
import 'package:parklane/views/home_screens/Home_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/New Project (1).png"),
            fit: BoxFit.cover
          )
        ),

        child: Column(
          children: [
               130.heightBox,

            Image.asset("assets/images/20240719_191146 1.png",),
            70.heightBox,

            Expanded(

                child: Container(
                  padding: EdgeInsets.all(15),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Login".text.size(33).bold.make(),


                 RoundTextField(
                     hintText: "Enter your email or phone",
                     textInputType: TextInputType.emailAddress,
                     title: "Employee ID",
                 ),

                      RoundTextField(
                        hintText: "Enter your email or phone",
                        textInputType: TextInputType.emailAddress,
                        title: "Employee ID",
                      ),
                      30.heightBox,
                      LogButton(
                          title: "Login",
                          color: Color(0xFFD80F0F),
                          onTap: (){
                            Get.to(()=>HomeScreen());
                          }
                      )


                    ],
                  ),

            ),
            )









          ],
        ),
      ),

    );
  }
}
