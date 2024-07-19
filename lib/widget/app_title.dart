import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_bilgileri/style_constants.dart';
import 'package:pokemon_bilgileri/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeballImageUrl = 'images/pokeball.png';

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.only(top: 0),
      child: SizedBox(
        height: UlHelper.getAppTitleWidgetHeight(),
         // height: UlHelper.getAppTitleWidgetHeight(),
         // color: Colors.red,
          child: Stack(
            
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: UlHelper.getDefaultPadding(),
                  child: Text(
                    
                    Constants.title,
                    style: Constants.getTitleTextStyle(),
                  ),
                ),
              ),
              Padding(
                padding: UlHelper.getDefaultPadding(),
                child: Align(
                  alignment: Alignment.centerRight,
                    child: Image.asset(
                      
                      pokeballImageUrl,
                      width: ScreenUtil().orientation == Orientation.portrait
                      ?0.2.sh
                      :0.2.sw,
                  
                      fit: BoxFit.fitWidth,
                    ),
                  
                ),
              ),
            ],
          )),
    );

    //),
  }
}
