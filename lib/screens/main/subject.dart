import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/screens/main/QuizScreen.dart';
import 'package:admin/screens/main/StudentScreen.dart';
import 'package:admin/screens/main/SubjectScreen.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class subject extends StatefulWidget {
  const subject({Key? key}) : super(key: key);

  @override
  _subjectState createState() => _subjectState();
}

class _subjectState extends State<subject> {
  @override


  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manage Subject Dashboard',
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
        child: SubjectScreen(),
      ),
    );
  }
}
