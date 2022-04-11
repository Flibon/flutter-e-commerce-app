import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/utils/routes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData( primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
     
      ),
      debugShowCheckedModeBanner: true,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
    
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeroute : (context) => HomePage(),
        MyRoutes.loginroute :(context) =>LoginPage()
      },
    );
  }
}
