import 'package:carousel_slider/carousel_slider.dart';
import 'package:ebaking/components/Buttons/CourseInfoButton.dart';
import 'package:flutter/material.dart';

class Dots extends StatefulWidget {
  int? dotSelected;
  int? imageSelected;
  Dots({super.key, this.dotSelected, this.imageSelected});

  @override
  State<Dots> createState() => _DotsState();
}

class _DotsState extends State<Dots> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 21,
      height: 21,
      decoration: ShapeDecoration(
        color: widget.dotSelected! == widget.imageSelected!
            ? Color(0xF20062A5)
            : Colors.white,
        shape: OvalBorder(
          side: BorderSide(width: 1.50, color: Color(0xF20062A5)),
        ),
      ),
    );
  }
}

class CourseInfoMobileSlider extends StatefulWidget {
  List courselist;

  CourseInfoMobileSlider({
    super.key,
    required this.courselist,
  });

  @override
  State<CourseInfoMobileSlider> createState() => _CourseInfoMobileSliderState();
}

class _CourseInfoMobileSliderState extends State<CourseInfoMobileSlider> {
  CarouselController buttonCarouselController = CarouselController();
  var imageCount = 0;

  //Function to change pages
  changePage(page) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => Scaffold(
                body: page,
              )),
    );
  }

//Update the image count
  changeImage(type) {
    print(imageCount);
    if (imageCount == -1) {
      setState(() {
        imageCount = widget.courselist.length;
      });
    } else if (imageCount > widget.courselist.length) {
      setState(() {
        imageCount = 0;
      });
    } else {
      if (type == "next") {
        setState(() {
          imageCount++;
        });
      } else {
        setState(() {
          imageCount--;
        });
      }
    }
  }

//Navigate To Service Pages

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;
    return Column(children: [
      Center(
        child: CarouselSlider(
          options: CarouselOptions(
              height: heightDevice / 2 + 130, viewportFraction: 2),
          carouselController: buttonCarouselController,
          items: (widget.courselist).map<Widget>((item) {
            return CourseInfoButton(
              imagePath: item['imagePath'],
              title: item['title'],
              description: item['description'],
            );
          }).toList(),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              changeImage("previous");
              buttonCarouselController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear);
            },
            child: const Icon(
                size: 45.0, Icons.arrow_back_ios, color: Color(0xF20062A5)),
          ),
          for (var i = 0; i < widget.courselist!.length; i++)
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Dots(
                dotSelected: i,
                imageSelected: imageCount,
              ),
            ),
          MaterialButton(
            onPressed: () {
              changeImage("next");
              buttonCarouselController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear);
            },
            child: const Icon(
                size: 45.0, Icons.arrow_forward_ios, color: Color(0xF20062A5)),
          )
        ],
      ),
      const SizedBox(
        height: 40,
      ),
    ]);
  }
}
