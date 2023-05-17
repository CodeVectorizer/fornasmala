import 'package:flutter/material.dart';

class MyIndicatorTabbar extends Decoration {
  final BoxPainter _painter;

  MyIndicatorTabbar(
      {required Color color, required double height, required double radius})
      : _painter = _IndicatorPainter(color, height, radius);

  @override
  BoxPainter createBoxPainter([dynamic Function()? onChanged]) => _painter;
}

class _IndicatorPainter extends BoxPainter {
  final Paint _paint;
  final double radius;
  final double height;

  _IndicatorPainter(Color color, this.height, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Rect rect = (offset + Offset(0, cfg.size!.height - height) &
        Size(cfg.size!.width, height));

    canvas.drawRRect(
      RRect.fromRectAndCorners(rect,
          topLeft: Radius.circular(radius), topRight: Radius.circular(radius)),
      _paint,
    );
  }
}
