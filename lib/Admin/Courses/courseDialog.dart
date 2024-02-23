
import 'package:ebaking/components/MyUtil.dart';
import 'package:flutter/material.dart';

class CourseDialog extends StatefulWidget {
  Function? closeDialog;
  CourseDialog({
    super.key,
    required this.closeDialog,
  });

  @override
  State<CourseDialog> createState() => _CourseDialogState();
}

class _CourseDialogState extends State<CourseDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MyUtility(context).width,
      height: MyUtility(context).height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("imges/dialogBackground.png"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(children: [
        Row(
          children: [
            Spacer(),
            Text(
              "X",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "RegularMontserratBold",
              ),
            )
          ],
        )
      ]),
    );
  }
}
