import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth%20tab/hadeth_item.dart';
import '../my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth>hadesContent=[];

  @override
  Widget build(BuildContext context) {
    if(hadesContent.isEmpty) {
      loadFile();
    }
    return  Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/ahadeth_image.png'),
          Divider(
            color: MyTheme.primaryLightColor,
            thickness: 2,
          ),
          Text(AppLocalizations.of(context)!.hadeth_name,style: Theme.of(context).textTheme.titleMedium),
          Divider(
            color: MyTheme.primaryLightColor,
            thickness: 2,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index){
                  return
                    ItemHadethName(hadethArgs: hadesContent[index],
                  );
                },
                itemCount: hadesContent.length,
              separatorBuilder: (BuildContext context, int index) {
                  return Divider(color: MyTheme.primaryLightColor,
                  thickness: 2,);
                },
            ),
          )
        ],
      ),
    );
  }


  void loadFile()async{
    String hadethContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>ahadethLines = hadethContent.split('#\r\n');
    for(int i=0;i<ahadethLines.length;i++){
      List<String>ahadethList=ahadethLines[i].split('\n');
      String title=ahadethList[0];
      ahadethList.removeAt(0);
      Hadeth hadeth =Hadeth(title: title, content: ahadethList);
      hadesContent.add(hadeth);
      setState(() {

      });
    }
  }
}
class Hadeth{
String title;
List<String>content;
Hadeth({required this.title,required this.content});
}
