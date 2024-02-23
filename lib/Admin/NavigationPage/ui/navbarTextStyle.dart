import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavbarTextStyle extends StatefulWidget {
  String? itemName;
  String? svgPath;
  double? itemIndex;
  int pageIndex;
  NavbarTextStyle(
      {super.key,
      required this.itemName,
      required this.svgPath,
      required this.itemIndex,
      required this.pageIndex});

  @override
  State<NavbarTextStyle> createState() => _NavbarTextStyleState();
}

class _NavbarTextStyleState extends State<NavbarTextStyle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            widget.svgPath!,
            width: 35, // Adjust the width and height of the SVG image
            height: 35,
            colorFilter: ColorFilter.mode(
                widget.pageIndex == widget.itemIndex
                    ? Color.fromARGB(255, 233, 107, 70)
                    : const Color.fromARGB(255, 138, 138, 138),
                BlendMode.srcIn),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            widget.itemName!,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: widget.pageIndex == widget.itemIndex
                  ? Color.fromARGB(255, 233, 107, 70)
                  : const Color.fromARGB(255, 138, 138, 138),
              fontFamily: "RegularMontserratBold",
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
