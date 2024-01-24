import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CustomPaint(
        size: Size(
            1200,
            (1200 * 0.5833333333333334)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: RPSCustomPainter(),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0008333, size.height * 0.0014286);
    path_0.lineTo(0, size.height * 0.6414286);
    path_0.lineTo(size.width * 0.5008333, size.height * 0.9985714);
    path_0.lineTo(size.width * 1.0008333, size.height * 0.6400000);
    path_0.lineTo(size.width, size.height * -0.0014286);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Color.fromARGB(255, 255, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0008333, size.height * 0.0014286);
    path_0.lineTo(0, size.height * 0.6414286);
    path_0.lineTo(size.width * 0.5008333, size.height * 0.9985714);
    path_0.lineTo(size.width * 1.0008333, size.height * 0.6400000);
    path_0.lineTo(size.width, size.height * -0.0014286);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
