import 'package:ebaking/components/MyUtil.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String? description;
  String? hintText;
  final TextEditingController controller;
  int? lines;
  final double? customSize;

  MyTextField(
      {super.key,
      this.description,
      required this.hintText,
      required this.controller,
      this.lines,
      this.customSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: customSize == null
          ? MyUtility(context).width / 3
          : MyUtility(context).width / 1.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Visibility(
            visible: description == '' ? false : true,
            child: Row(
              children: [
                Text(
                  description!,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 78, 47, 39),
                    fontFamily: 'Monser2',
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "*",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontFamily: 'Monser2',
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(8),
              width: customSize,
              child: TextFormField(
                maxLines: lines == null ? 1 : 5,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 217, 217, 217),
                  focusColor: const Color(0xFF9E9E9E),
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontFamily: 'Monser',
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
      ),
    );
  }
}
