import 'package:ebaking/components/MyUtil.dart';
import 'package:flutter/material.dart';

class CourseInfoButton extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const CourseInfoButton({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyUtility(context).width < 600
          ? MyUtility(context).height * 0.6
          : MediaQuery.of(context).size.height * 0.65,
      width: MyUtility(context).width < 600
          ? MyUtility(context).width / 1.2
          : MyUtility(context).width / 5.2,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 136, 40),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Monser',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 250,
            child: Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Monser2',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CourseDot extends StatelessWidget {
  final VoidCallback? onPressed;

  const CourseDot({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Stack(
        children: [
          Icon(
            Icons.circle,
            color: Colors.orange,
            size: 12,
          ),
        ],
      ),
    );
  }
}

class GradientButton extends StatefulWidget {
  final String text;
  final Color startColor;
  final Color endColor;
  final Duration duration;
  final VoidCallback onPressed;

  const GradientButton({
    Key? key,
    required this.text,
    required this.startColor,
    required this.endColor,
    required this.duration,
    required this.onPressed,
  }) : super(key: key);

  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = ColorTween(
      begin: widget.startColor,
      end: widget.endColor,
    ).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          width: MyUtility(context).width > 600
              ? MyUtility(context).width / 10
              : MyUtility(context).width / 1.7,
          height: 40,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                widget.startColor,
                widget.endColor,
              ],
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontFamily: 'Monser2',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ColorButton extends StatelessWidget {
  final String text;
  final Color startColor;
  final Color endColor;
  final VoidCallback onPressed;

  const ColorButton({
    Key? key,
    required this.text,
    required this.startColor,
    required this.endColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
