import 'package:personal_web/utils/font/font_loader.dart';
import 'package:personal_web/utils/responsive_manager/sizer_manager.dart';

mixin BaseOnMixin {
  final SizerManager _sizerManager = const SizerManager();
  final FontUtils _fontUtils = const FontUtils();

  SizerManager get sizerManager => _sizerManager;

  FontUtils get fontUtils => _fontUtils;
}
