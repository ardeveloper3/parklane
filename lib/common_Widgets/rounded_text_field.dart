import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class RoundTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final ValueChanged<String>? onChange;
  final String hintText;
  final Widget? icon;
  final TextInputType textInputType;
  final   bool isObsecureText;
  final Widget? rightIcon;
  final String title;

  const RoundTextField(
      {super.key,
        this.controller,
        this.validator,
        this.onChange,
        required this.hintText,
        this.icon,
        required this.textInputType,
        this.rightIcon,
        this.isObsecureText = false, required this.title,
      }
      );

  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.start,
      children: [
20.heightBox,
        title.text.color(Colors.black.withOpacity(0.4)).size(16).make(),
        5.heightBox,


        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(

            color: Colors.grey.withOpacity(0.2),

            borderRadius: BorderRadius.circular(30),

          ),
          child: TextFormField(
            controller: controller,
            keyboardType: textInputType,
            obscureText: isObsecureText,
            onChanged: onChange,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: hintText,
              // prefixIcon: Container(
              //   alignment: Alignment.center,
              //   width: 20,
              //   height: 20,
              //   child: icon,
              //
              // ),
              suffixIcon: rightIcon,
              hintStyle: TextStyle(
                  fontSize: 15,color: Colors.black.withOpacity(0.5)
              ),
            ),
            validator: validator,
          ),
        ),
      ],
    );
  }
}