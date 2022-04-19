import 'package:flutter/material.dart';
import 'package:garden/theme/theme.dart';

class MainTheme extends AppTheme {
  @override
  Color get accentColor => const Color(0xFFFF6E40);

  @override
  Color get mainColor => const Color(0xFFFFB74D);

  @override
  Color get secondaryColor => const Color(0xFF0091FD);

  @override
  Color get backgroundColor => const Color(0xFFFFFFFF);

  @override
  Color get normalTextColor => const Color(0x00000000);

  @override
  Color get headlineTextColor => const Color(0xFF4C5358);

  @override
  Color get selectedTextColor => const Color(0xCC444448);
}

extension ThemeExtension on BuildContext {
  AppTheme get theme => MainTheme();
}
