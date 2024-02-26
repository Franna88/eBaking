import 'package:ebaking/AboutUs/AboutUsButton.dart';
import 'package:ebaking/components/Footer/ContactInfo.dart';
import 'package:ebaking/components/MyUtil.dart';
import 'package:ebaking/components/NavBar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    String backgroundImage = widthDevice < 600
        ? "imges/mobiledough.jpg" // Change this to your smaller image path
        : "imges/dough.jpg"; // Default image path

    return SingleChildScrollView(
      child: Column(
        children: [
          if (widthDevice <= 600) MobileNavBar(itemIndex: 0),
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 224, 119, 15).withOpacity(0.15),
                BlendMode.color),
            child: Container(
              height: widthDevice > 600 ? heightDevice : heightDevice * 0.9,
              width: widthDevice,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(backgroundImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (widthDevice >= 600)
                    SizedBox(
                      height: 80,
                    ),
                  if (widthDevice >= 600)
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 80,
                        width: widthDevice / 1.20,
                        child: Center(
                            child: ScrollNavBar(
                          itemIndex: 0,
                        ))),
                  SizedBox(
                    height: MyUtility(context).height / 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      'Baking with love.',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Monser2',
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: widthDevice / 1.3,
                    height: widthDevice > 600
                        ? heightDevice * 0.15
                        : heightDevice * 0.4,
                    child: Text(
                      'Savoring every crumb of bakery bliss.',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Monser',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 8),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 139, 47),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                        child: Text(
                          'About Us',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heightDevice / 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DotButton(),
                          DotButton(),
                          DotButton(),
                          DotButton(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          if (widthDevice >= 600) ContactInfo(),
        ],
      ),
    );
  }
}
