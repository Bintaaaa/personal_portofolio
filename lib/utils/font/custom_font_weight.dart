import 'package:flutter/material.dart';
import 'package:personal_web/common/style.dart';
import 'package:personal_web/utils/font/font_loader.dart';

enum CustomFontWeight {
  thin,
  extraLight,
  light,
  regular,
  medium,
  semiBold,
  bold,
  extraBold,
  black
}

enum FontFamilyType { anekOdia }

// extension FontFamilyTypeExtention on CustomFontWeight {
//   bool get isAnekOdia => this == FontFamilyType.anekOdia;
// }

extension FontWeightExtention on CustomFontWeight {
  FontWeight get values {
    switch (this) {
      case CustomFontWeight.thin:
        return FontWeight.w100;
      case CustomFontWeight.extraLight:
        return FontWeight.w200;
      case CustomFontWeight.light:
        return FontWeight.w300;
      case CustomFontWeight.regular:
        return FontWeight.w400;
      case CustomFontWeight.medium:
        return FontWeight.w500;
      case CustomFontWeight.semiBold:
        return FontWeight.w600;
      case CustomFontWeight.bold:
        return FontWeight.w700;
      case CustomFontWeight.extraBold:
        return FontWeight.w800;
      case CustomFontWeight.black:
        return FontWeight.w900;
      default:
        return FontWeight.w200;
    }
  }
}

class FontType {
  const FontType(this._fontFamilyType, this._mobileSize);

  static FontLoader fontLoader = const FontLoader();

  final FontFamilyType _fontFamilyType;
  final double _mobileSize;

  TextStyle thin(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.normal,
        CustomFontWeight.light.values,
        _mobileSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle thinItalic(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.italic,
        CustomFontWeight.thin.values,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle extraLight(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.normal,
        CustomFontWeight.extraLight.values,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle light(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.normal,
        CustomFontWeight.light.values,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle regular(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.normal,
        CustomFontWeight.regular.values,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle lightItalic(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.italic,
        CustomFontWeight.light.values,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle medium(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.normal,
        CustomFontWeight.medium.values,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle mediumItalic(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.italic,
        CustomFontWeight.medium.values,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle semiBold(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.normal,
        CustomFontWeight.semiBold.values,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle bold(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.normal,
        CustomFontWeight.bold.values,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle extraBold(
    BuildContext context, {
    Color? color = ColorName.softBlack,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      fontLoader.textStyle(
        context,
        _fontFamilyType,
        FontStyle.normal,
        CustomFontWeight.extraBold.values,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );
}
