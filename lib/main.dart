
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_bilgileri/pages/home_paga.dart';

//import 'package:pokemon_bilgileri/model/pokemon_model.dart';
//
//import 'package:pokemon_bilgileri/services/pokedex_api.dart';

void main() {
/*WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),); */
 

 WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive); 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 732),
     // UlHelper.ekranBoyutuAyarla(412,732),
      //const Size(412, 732),
      // const Size(393, 833),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex',
         theme:
            ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()), 
        home:const HomePages(),
      ),
    );
  }
}
