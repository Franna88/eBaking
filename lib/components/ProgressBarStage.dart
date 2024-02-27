import 'package:flutter/material.dart';

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
          Container(
                          width: 75,
                          height: 75,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("imges/imagePath.png"),
                              fit: BoxFit.contain,
                            ),
                          ),),

         
          Center(
            child: Text(
              '$number',
              style: const TextStyle(
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
