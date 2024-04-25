import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});


  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
              provider.changeMode(ThemeMode.light);
            },
            child: provider.appTheme== ThemeMode.light?
                selectedThemeMode(AppLocalizations.of(context)!.light_mode):
                unSelectedThemeMode(AppLocalizations.of(context)!.light_mode)
          ),
          InkWell(
            onTap: (){
              provider.changeMode(ThemeMode.dark);
            },
            child: provider.appTheme==ThemeMode.dark?
            selectedThemeMode(AppLocalizations.of(context)!.dark_mode):
            unSelectedThemeMode(AppLocalizations.of(context)!.dark_mode),
          )
        ],
      ),
    );
  }

  selectedThemeMode(String appTheme){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(appTheme,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyTheme.primaryLightColor)),
        Icon(Icons.check,color: MyTheme.primaryLightColor,size: 30,)
      ],
    );
  }
  unSelectedThemeMode(String appTheme){
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(appTheme,style: Theme.of(context).textTheme.titleMedium,),
      ],
    )  ;
  }
}
