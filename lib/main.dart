import 'package:final_project_01/Screens/MainScreen/mainScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Constants/constants.dart';
import 'Screens/Add_Manager_Screen/addManagerScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NAMHAL Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: kSecondaryColor,
      ),
      home: Scaffold(
        // body: MainScreen(),
        body: AddManager(),
      ),
    );
  }
}
