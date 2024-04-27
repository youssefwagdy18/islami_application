import 'package:flutter/material.dart';
import 'package:islami/hadeth%20tab/hadeth.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/quran%20tab/quran.dart';
import 'package:islami/radio%20tab/radio.dart';
import 'package:islami/sebha%20tab/sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/settings_tab/settings.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget{
  static const String routename ='HomeScreen';

   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.appTheme == ThemeMode.dark?
        Image.asset('assets/images/background_dark.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,) :
        Image.asset('assets/images/background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).textTheme.titleLarge),
          ),
        bottomNavigationBar:Theme(
          data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png')),
              label: AppLocalizations.of(context)!.quran_tab,),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                  label: AppLocalizations.of(context)!.sebha_tab),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: AppLocalizations.of(context)!.radio_tab),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran-quran-svgrepo-com.png')),
                  label: AppLocalizations.of(context)!.hadeth_tab),
              BottomNavigationBarItem(icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings_tab),
            ],
            currentIndex:selectedIndex ,
            onTap: (index){
              selectedIndex = index;
              setState(() {
              });
            },
          ),
        ),
          body: tabs[selectedIndex])
      ],
    );
  }
  List<Widget>tabs =[
    const QuranTab(),SebhaTab(),RadioTab(),HadethTab(),Settings()
  ];
}