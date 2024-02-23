import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressBarStage extends StatelessWidget {
  final String imagePath;
  final int number;

  const ProgressBarStage({
    Key? key,
    required this.imagePath,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          SvgPicture.asset(
            imagePath,
            width: 75,
            height: 75,
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              '$number',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
