import 'package:flutter/material.dart';

import '../MyUtil.dart';

class CareerButton extends StatelessWidget {
  final String text;
  final String imageUrl;
  final VoidCallback onPressed;

  const CareerButton({
    Key? key,
    required this.text,
    required this.imageUrl,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MyUtility(context).width < 600
          ? MyUtility(context).width / 1.2
          : MyUtility(context).width / 3.5,
      height: MyUtility(context).width < 600
          ? MyUtility(context).height / 3.5
          : MyUtility(context).height / 3.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 20),
            IconButton(
              onPressed: onPressed,
              icon: Image.asset(
                'imges/icons8-forward-50.png',
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
      clipBehavior: Clip.antiAlias,
    );
  }
}
