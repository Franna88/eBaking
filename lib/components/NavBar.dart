import 'package:flutter/material.dart';

import 'MyUtil.dart';

class ScrollNavBar extends StatefulWidget {
  const ScrollNavBar({super.key});

  @override
  State<ScrollNavBar> createState() => _ScrollNavBarState();
}

class _ScrollNavBarState extends State<ScrollNavBar> {
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.transparent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: -25,
                left: 20,
                child: Image.asset(
                  'imges/Logo.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                            color: const Color.fromARGB(255, 255, 136, 40),
                          )),
                        ),
                        child: Text(
                          'Home',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 136, 40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                            color: const Color.fromARGB(255, 255, 136, 40),
                          )),
                        ),
                        child: Text(
                          'About',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 136, 40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                            color: const Color.fromARGB(255, 255, 136, 40),
                          )),
                        ),
                        child: Text(
                          'View Courses',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 136, 40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                            color: const Color.fromARGB(255, 255, 136, 40),
                          )),
                        ),
                        child: Text(
                          'Contact Us',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 136, 40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                            color: const Color.fromARGB(255, 255, 136, 40),
                          )),
                        ),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 136, 40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                            color: const Color.fromARGB(255, 255, 136, 40),
                          )),
                        ),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 136, 40)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: 50,
          width: widthDevice,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'imges/Logo.png',
                height: 50,
                width: 50,
                fit: BoxFit.fill,
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset('imges/icons8-menu-100.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
