
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/settings_tab/languageBottomSheet.dart';
import 'package:islami/settings_tab/themeBottomSheet.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language),
          InkWell(
            onTap: (){
              ShowLanguageBottomSheet();
            },
            child: Container(
              color: MyTheme.primaryLightColor,
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appLanguage == 'ar'?
                      AppLocalizations.of(context)!.arabic:
                      AppLocalizations.of(context)!.english
                      ,style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 20)),
                  Icon(Icons.arrow_downward)
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          Text(AppLocalizations.of(context)!.theme_mode),
          InkWell(
            onTap: (){
              ShowThemeBottomSheet();
            },
            child: Container(
              color: MyTheme.primaryLightColor,
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appTheme==ThemeMode.light?
                      AppLocalizations.of(context)!.light_mode:
                      AppLocalizations.of(context)!.dark_mode,style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 20)),
                  Icon(Icons.arrow_downward)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void ShowLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context){
         return  LanguageBottomSheet();
    });
  }
  void ShowThemeBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context){
      return ThemeBottomSheet();
        });
  }


}
