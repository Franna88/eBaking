import 'package:carousel_slider/carousel_slider.dart';
import 'package:ebaking/CarreerPath/courseInfo/CourseInfoButton.dart';
import 'package:ebaking/components/MyUtil.dart';
import 'package:flutter/material.dart';
/*CourseInfoButton(
                          imagePath: 'imges/Rectangle 355.png',
                          title: 'Home Baking',
                          description:
                              'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'),
                      CourseInfoButton(
                          imagePath: 'imges/Rectangle 357.png',
                          title: 'Small Retail Bakeries',
                          description:
                              'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'),
                      CourseInfoButton(
                          imagePath: 'imges/Rectangle 359.png',
                          title: 'Chain Store Retail Bakeries',
                          description:
                              'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum')*/

class CourseInfoDesktopSlider extends StatefulWidget {
  List courselist;

  CourseInfoDesktopSlider({super.key, required this.courselist});

  @override
  State<CourseInfoDesktopSlider> createState() =>
      _CourseInfoDesktopSliderState();
}

class _CourseInfoDesktopSliderState extends State<CourseInfoDesktopSlider> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: MyUtility(context).width / 1.4,
          height: 450,
          child: CarouselSlider(
            options: CarouselOptions(
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                enlargeCenterPage: false,
                aspectRatio: 0.1,
                enlargeFactor: 0.1,
                viewportFraction: 0.35),
            items: widget.courselist
                .map((item) => Container(
                      child: Center(
                          child: CourseInfoButton(
                        imagePath: item['imagePath'],
                        title: item['title'],
                        description: item['description'],
                      )),
                    ))
                .toList(),
          )),
    );
  }
}
