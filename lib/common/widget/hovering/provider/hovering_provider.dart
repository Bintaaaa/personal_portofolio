import 'package:flutter/material.dart';

import '../../../../utils/font/hovering_mouse.dart';

class TextHoveringProvider extends ChangeNotifier {
  Color? _color;
  Color? get color => _color;

  Color? _color2;
  Color? get color2 => _color2;

  Color? _color3;
  Color? get color3 => _color3;

  final List<Color> _listColor = [
    HoveringMouse.softBlack.values,
    HoveringMouse.softBlack.values,
    HoveringMouse.softBlack.values,
  ];
  List<Color>? get listColor => _listColor;

  init(Color hoveringColor, int key) {
    for (int i = 0; i <= key; i++) {
      if (i == key) {
        _listColor[key] = hoveringColor;
      }
    }
    notifyListeners();
  }
}
