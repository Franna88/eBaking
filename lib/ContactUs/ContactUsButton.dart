import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: ContactsUsButton(
            imagePath: 'images/mail.svg',
            email: 'ebaking@gmail.com',
            label: 'Email',
          ),
        ),
      ),
    );
  }
}

class ContactsUsButton extends StatelessWidget {
  final String imagePath;
  final String email;
  final String label;

  const ContactsUsButton({
    Key? key,
    required this.imagePath,
    required this.email,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 139, 47),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SvgPicture.asset(imagePath),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'Monser2',
            ),
          ),
          Text(
            email,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'Monser2',
            ),
          )
        ],
      ),
    );
  }
}
