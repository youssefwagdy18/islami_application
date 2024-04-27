import 'package:flutter/material.dart';
import 'package:islami/hadeth%20tab/hadeth.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class HadethContentView extends StatefulWidget {
   static const String routeName='hadethContentView';

  @override
  State<HadethContentView> createState() => _HadethContentViewState();
}

class _HadethContentViewState extends State<HadethContentView> {


  @override
  Widget build(BuildContext context) {
    int index;
    var args=ModalRoute.of(context)!.settings.arguments as Hadeth;
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
        children: [
      provider.appTheme == ThemeMode.light?
      Image.asset('assets/images/background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,) :
      Image.asset('assets/images/background_dark.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),
          Scaffold(
            appBar: AppBar(title: Text(args.title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color:
              provider.appTheme == ThemeMode.light?
              MyTheme.blackColor:
              MyTheme.yellowColor)),),
            body: Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: provider.appTheme == ThemeMode.light?
                        MyTheme.whiteColorWithOpacity :
                        MyTheme.primaryDarkColor,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width*0.05,
                        vertical: MediaQuery.of(context).size.height*0.05
                    ),
                    padding: const EdgeInsets.all(30),
                  child: ListView.builder(itemBuilder: (context ,index){
                    return Text(args.content[index],style: Theme.of(context).textTheme.titleMedium!.copyWith(color:
                    provider.appTheme == ThemeMode.light?
                    MyTheme.blackColor:
                    MyTheme.yellowColor),);
                  },
                  itemCount: args.content.length,),
                )
              ],
            ),
          )
        ]

    );
  }
}
