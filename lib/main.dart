import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_1/app_themes.dart';
import 'package:todo_app_1/home/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo_app_1/providers/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Appchangnotefprovid(), child: TodoApp()));
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appchangnotefprovid>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },

      /// localizations
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.selectlang),

      theme: AppThemes.themeLigt,
    );
  }
}
