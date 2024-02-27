import 'package:ebaking/components/MyUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CourseContainerStyle extends StatelessWidget {
  final String description;
  final String imageUrl;
  final VoidCallback onPressed;

  const CourseContainerStyle({
    Key? key,
    required this.description,
    required this.imageUrl,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MyUtility(context).width / 4.5,
        height: MyUtility(context).height / 3.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                description,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(height: 20),
              IconButton(
                onPressed: onPressed,
                icon: SvgPicture.asset(" imges/icons8-forward-50.png",
                    width: 35, height: 35),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
