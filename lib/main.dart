import 'package:flutter/material.dart';
import 'package:islami/hadeth%20tab/hadeth_content.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:islami/quran%20tab/sura_content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider(create: (BuildContext context) { return AppConfigProvider(); },
  child: MyApp()));
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename : (context)=>const HomeScreen(),
        SuraContent.routename : (context)=>const SuraContent(),
        HadethContentView.routeName : (context)=>HadethContentView(),

      },
      locale: Locale(provider.appLanguage),
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: MyTheme.lightMode,
      themeMode: provider.appTheme,
      darkTheme: MyTheme.darkMode,
    );
  }

}
