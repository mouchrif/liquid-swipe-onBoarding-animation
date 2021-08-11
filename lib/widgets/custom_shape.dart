import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  final List<Color> colors;
  RPSCustomPainter(this.colors);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = colors[0].withOpacity(0.85)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;

    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.lineTo(size.width * 0.0010875, size.height * 0.0117750);
    path_0.quadraticBezierTo(size.width * 0.1438375, size.height * 0.0049250,
        size.width * 0.1675500, size.height * 0.1252750);
    path_0.cubicTo(
        size.width * 0.1764375,
        size.height * 0.1469250,
        size.width * 0.1857625,
        size.height * 0.2193500,
        size.width * 0.1685875,
        size.height * 0.2889750);
    path_0.cubicTo(
        size.width * 0.1619125,
        size.height * 0.3500000,
        size.width * 0.1506750,
        size.height * 0.4658250,
        size.width * 0.1960875,
        size.height * 0.5164750);
    path_0.cubicTo(
        size.width * 0.2198500,
        size.height * 0.5539500,
        size.width * 0.2590125,
        size.height * 0.5747750,
        size.width * 0.3285875,
        size.height * 0.5164750);
    path_0.cubicTo(
        size.width * 0.3599375,
        size.height * 0.5004500,
        size.width * 0.4485250,
        size.height * 0.4461750,
        size.width * 0.5123375,
        size.height * 0.5939750);
    path_0.quadraticBezierTo(size.width * 0.5738875, size.height * 0.7828750,
        size.width * 0.6470875, size.height * 0.7562750);
    path_0.quadraticBezierTo(size.width * 0.7221625, size.height * 0.7421500,
        size.width * 0.7509125, size.height * 0.5648250);
    path_0.cubicTo(
        size.width * 0.7981125,
        size.height * 0.1153000,
        size.width * 0.9220000,
        size.height * 0.0474500,
        size.width * 0.8993125,
        size.height * 0.0628250);
    path_0.quadraticBezierTo(size.width * 0.9335375, size.height * 0.0167750,
        size.width * 1.0010875, size.height * 0.0189750);
    path_0.lineTo(size.width, size.height * 3);
    path_0.lineTo(0, size.height * 3);
    path_0.close();

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = new Paint()
      ..color = colors[1]
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_1 = Path();
    path_1.moveTo(0, size.height);
    path_1.lineTo(0, size.height * 0.0326000);
    path_1.quadraticBezierTo(size.width * 0.1272000, size.height * 0.0299250,
        size.width * 0.1675500, size.height * 0.1252750);
    path_1.cubicTo(
        size.width * 0.1764375,
        size.height * 0.1469250,
        size.width * 0.1805500,
        size.height * 0.2151750,
        size.width * 0.1685875,
        size.height * 0.2889750);
    path_1.cubicTo(
        size.width * 0.1556750,
        size.height * 0.3791500,
        size.width * 0.1449125,
        size.height * 0.5106250,
        size.width * 0.1903250,
        size.height * 0.5612750);
    path_1.cubicTo(
        size.width * 0.2140875,
        size.height * 0.5987500,
        size.width * 0.2621250,
        size.height * 0.5893000,
        size.width * 0.3317000,
        size.height * 0.5310000);
    path_1.cubicTo(
        size.width * 0.3630500,
        size.height * 0.5149750,
        size.width * 0.4397750,
        size.height * 0.4752250,
        size.width * 0.5035875,
        size.height * 0.6230250);
    path_1.quadraticBezierTo(size.width * 0.5787750, size.height * 0.8168000,
        size.width * 0.6640375, size.height * 0.7871750);
    path_1.quadraticBezierTo(size.width * 0.7476250, size.height * 0.7473750,
        size.width * 0.7644250, size.height * 0.5668750);
    path_1.cubicTo(
        size.width * 0.7915625,
        size.height * 0.2820250,
        size.width * 0.8580750,
        size.height * 0.1530250,
        size.width * 0.8817000,
        size.height * 0.1153000);
    path_1.quadraticBezierTo(size.width * 0.9342500, size.height * 0.0350750,
        size.width, size.height * 0.0446000);
    path_1.lineTo(size.width, size.height * 3);
    path_1.lineTo(0, size.height * 3);
    path_1.close();

    canvas.drawPath(path_1, paint_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
