import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/MyUtil.dart';

class AboutUsButton extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onPressed;

  const AboutUsButton({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 475,
      width: MyUtility(context).width < 600
          ? MyUtility(context).width / 1.25
          : MyUtility(context).width / 4.5,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 255, 136, 40),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipOval(
              clipBehavior: Clip.antiAlias,
              child: Container(
                color: const Color.fromARGB(255, 255, 139, 47),
                child: Transform.translate(
                  offset: const Offset(0.5, 0.5),
                  child: Transform.scale(
                    scale: 0.70,
                    child: SvgPicture.asset(
                      imagePath,
                      height: 150,
                      width: 125,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontFamily: 'Monser',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 78, 47, 39),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 78, 47, 39),
                  fontFamily: 'Monser2',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 139, 47),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Text(
                  buttonText,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DotButton extends StatelessWidget {
  const DotButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.circle,
        color: Colors.white,
        size: 12,
      ),
      onPressed: () {},
    );
  }
}

class CourseInfo extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String? secondText;

  const CourseInfo({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.secondText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Container(
        height: MyUtility(context).width < 600
            ? MyUtility(context).height / 1.5
            : MyUtility(context).height / 5.5,
        width: MyUtility(context).width < 600
            ? MyUtility(context).width - 50
            : MyUtility(context).width / 5.5,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 255, 136, 40),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipOval(
                clipBehavior: Clip.antiAlias,
                child: Container(
                  color: const Color.fromARGB(255, 255, 139, 47),
                  child: Transform.translate(
                    offset: const Offset(0.5, 0.5),
                    child: Transform.scale(
                      scale: 0.70,
                      child: SvgPicture.asset(
                        imagePath,
                        height: 150,
                        width: 125,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 78, 47, 39),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
                child: Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 78, 47, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              if (secondText != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    secondText!,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 78, 47, 39),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
