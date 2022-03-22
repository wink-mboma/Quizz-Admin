import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/screens/main/QuizScreen.dart';
import 'package:admin/screens/main/QustionScreen.dart';
import 'package:admin/screens/main/StudentScreen.dart';
import 'package:admin/screens/main/SubjectScreen.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class question extends StatefulWidget {
  const question({Key? key}) : super(key: key);

  @override
  _questionState createState() => _questionState();
}

class _questionState extends State<question> {
  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manage Quiz Questions Dashboard',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: QustionScreen(),
      ),
    );
  }
}
