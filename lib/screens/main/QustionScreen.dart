import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/Quiz_Screen.dart';
import 'package:admin/screens/dashboard/QuestionDashboard.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class QustionScreen extends StatefulWidget {
  const QustionScreen({Key? key}) : super(key: key);

  @override
  _QustionScreenState createState() => _QustionScreenState();
}

class _QustionScreenState extends State<QustionScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: QuestionDashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
