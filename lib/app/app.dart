import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:garden/home/home_page.dart';
import 'package:garden/l10n/l10n.dart';
import 'package:garden/theme/main_theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainColor = context.theme.mainColor;
    final theme = ThemeData(
      toggleableActiveColor: mainColor,
      appBarTheme: AppBarTheme(color: mainColor),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: mainColor,
        selectionColor: mainColor,
        selectionHandleColor: mainColor,
      ),
    );

    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(secondary: mainColor),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
