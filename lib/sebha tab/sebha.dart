import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbehCount =0;
  String tasbehat ='سبحان الله';
  void changeCount(){
    tasbehCount++;
    if(tasbehCount %33==0){
      tasbehat='الحمدلله';
    }else{
      tasbehat ='سبحان الله';
    }
    if(tasbehCount==100){
      tasbehCount=0;
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return  Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.05,),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Stack(
                children: [
                  Center(child: Image.asset('assets/images/head_of_seb7a.png')),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.09),
                      child: GestureDetector(
                        onTap: changeCount,
                          child: Image.asset('assets/images/body_of_seb7a.png')),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        Center(child: Text('عدد التسبيحات',style: Theme.of(context).textTheme.bodyMedium),),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
              color: Theme.of(context).primaryColor),
          height: MediaQuery.of(context).size.height*0.12,
          width: MediaQuery.of(context).size.width*0.12,
            child: Center(child: Text('$tasbehCount',style: Theme.of(context).textTheme.bodyMedium,))),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        Container(
          width: MediaQuery.of(context).size.width*0.35,
          height: MediaQuery.of(context).size.height*0.09,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: MyTheme.primaryLightColor),
        child: Center(child: Text(tasbehat)),)
      ],
    );
  }
}

