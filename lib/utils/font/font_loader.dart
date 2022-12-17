import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_web/utils/font/custom_font_weight.dart';
import 'package:personal_web/utils/responsive_manager/sizer_manager.dart';

class FontLoader {
  const FontLoader();

  final _sizerManager = const SizerManager();

  TextStyle textStyle(
    BuildContext context,
    FontFamilyType fontFamilyType,
    FontStyle style,
    FontWeight weight,
    double mobileSize, {
    double? tabletSize,
    double? webOrDesktopSize,
    Color? color,
    double? letterSpacing,
    double? wordSpacing,
    TextDecoration? decoration,
    bool isSizeFixed = false,
  }) {
    final fontSize = _sizerManager.getTextSize(
      context,
      mobileSize,
      tablet: tabletSize,
      webOrDesktop: webOrDesktopSize,
      isFixed: isSizeFixed,
    );
    return GoogleFonts.anekOdia(
      fontWeight: weight,
      fontStyle: style,
      fontSize: fontSize,
      color: color,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      decoration: decoration,
    );
  }
}

class FontFamily {
  const FontFamily(this._family);

  final FontFamilyType _family;

  FontType get size4 => FontType(_family, 4);

  FontType get size => FontType(_family, 11);

  FontType get size12 => FontType(_family, 12);

  FontType get size13 => FontType(_family, 13);

  FontType get size14 => FontType(_family, 14);

  FontType get size15 => FontType(_family, 15);

  FontType get size16 => FontType(_family, 16);
}

class FontUtils {
  const FontUtils();

  FontFamily get anekOdia => const FontFamily(FontFamilyType.anekOdia);
}
