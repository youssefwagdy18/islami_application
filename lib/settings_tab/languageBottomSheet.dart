import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      color: provider.appTheme==ThemeMode.light?
      MyTheme.whiteColor:
      MyTheme.primaryDarkColor,
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.ChangeLanguage('en');
            },child: provider.appLanguage=='en'?
          onSelectedItem(AppLocalizations.of(context)!.english):
          onUnSelectedItem(AppLocalizations.of(context)!.english)
          ),
          InkWell(
            onTap: (){
              provider.ChangeLanguage('ar');
            },child: provider.appLanguage=='ar'?
          onSelectedItem(AppLocalizations.of(context)!.arabic):
          onUnSelectedItem(AppLocalizations.of(context)!.arabic)
          )
        ],
      ),
    );
  }

  Widget onSelectedItem(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyTheme.primaryLightColor)),
        Icon(Icons.check,size: 30,color: MyTheme.primaryLightColor,)
      ],);
  }
  Widget onUnSelectedItem(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: Theme.of(context).textTheme.titleMedium),
      ],);
  }
}
