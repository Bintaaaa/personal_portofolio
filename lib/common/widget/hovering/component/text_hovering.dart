import 'package:flutter/material.dart';
import 'package:personal_web/common/widget/hovering/provider/hovering_provider.dart';
import 'package:personal_web/utils/font/hovering_mouse.dart';
import 'package:personal_web/utils/responsive_manager/base_on_mixin.dart';
import 'package:provider/provider.dart';

class TextHovering extends StatelessWidget with BaseOnMixin {
  final Color colorHovering;
  final Color colorExit;
  final String title;
  final int index;
  final TextStyle? style;
  TextHovering({
    super.key,
    required this.colorHovering,
    required this.colorExit,
    required this.title,
    required this.index,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.grab,
      onHover: (event) => context
          .read<TextHoveringProvider>()
          .init(HoveringMouse.softOrange.values, index),
      onExit: (event) => context
          .read<TextHoveringProvider>()
          .init(HoveringMouse.softBlack.values, index),
      child: InkWell(
        child: Text(
          title,
          style: fontUtils.anekOdia.size4.thin(context).copyWith(
                color: context.watch<TextHoveringProvider>().listColor?[index],
              ),
        ),
      ),
    );
  }
}
