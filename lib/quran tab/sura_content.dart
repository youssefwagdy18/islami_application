import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/quran%20tab/sura-details.dart';

class SuraContent extends StatefulWidget {
static const String routename ='sura-content';

  const SuraContent({super.key});

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
List<String>showLines =[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if(showLines.isEmpty){
      loadFile(args.index);
    }
    return Stack(
      children: [
      Image.asset('assets/images/background.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),
    Scaffold(
    appBar: AppBar(
    title: Text(args.name,
    style: Theme.of(context).textTheme.titleLarge),
    ),
      body:showLines.isEmpty?
      Center(
          child: CircularProgressIndicator(
            color: MyTheme.primaryLightColor,)) :
      ListView.builder(itemBuilder: (context , index){
        return Container(
          decoration: BoxDecoration(
            color: MyTheme.whiteColorWithOpacity,
              borderRadius: BorderRadius.circular(30)
            ),
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width*0.05,
          vertical: MediaQuery.of(context).size.height*0.05
        ),
        padding: const EdgeInsets.all(30),
            child: SuraDetails(content: showLines[index],index: index));
      },
        itemCount: showLines.length,
      ),
    )
    ]
    );
  }

void loadFile ( int index) async {
  String content = await rootBundle.loadString('assets/files/${index+1}.txt');
  List<String>lines = content.split('/n');
  for(int i=0 ;i<lines.length ;i++){
  }
  showLines=lines;
  setState(() {

  });
}
}

class SuraDetailsArgs{
  String name;
  int index;
  SuraDetailsArgs({required this.name ,required this.index});
}
