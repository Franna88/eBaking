import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  String? description;
  String? hintText;
  Color? textColor;
  final TextEditingController controller;

  final double? customSize;

  TextFieldLogin(
      {super.key,
      required this.description,
      required this.hintText,
      required this.textColor,
      required this.controller,
      this.customSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              description!,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: textColor,
                fontFamily: "RegularMontserratBold",
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "*",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontFamily: "RegularMontserratBold",
              ),
            )
          ],
        ),
        Container(
            padding: const EdgeInsets.all(8),
            width: customSize,
            child: TextFormField(

              decoration: InputDecoration(
                
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: const Color.fromARGB(255, 217, 217, 217),
                focusColor: const Color(0xFF9E9E9E),
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: "RegularMontserratBold",
                ),
              ),
              validator: (value) {
                return null;
              },
              controller: controller,
              style: const TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ))
      ],
    );
  }
}


