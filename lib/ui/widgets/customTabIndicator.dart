import 'package:flutter/cupertino.dart';
import 'package:glamuare/ui/common/app_colors.dart';

class CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([void Function()? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint _paint = Paint()
      ..color = kcPrimaryColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5
      ..isAntiAlias = true;

    canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), _paint);
  }
}
