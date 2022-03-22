import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/AddNewQuestion.dart';
import 'package:admin/screens/dashboard/components/AddNewSubject.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:admin/screens/dashboard/components/recent_files.dart';
import 'package:admin/screens/dashboard/components/recent_question.dart';
import 'package:admin/screens/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';

class QuestionDashboard extends StatefulWidget {
  const QuestionDashboard({Key? key}) : super(key: key);

  @override
  _QuestionDashboardState createState() => _QuestionDashboardState();
}

class _QuestionDashboardState extends State<QuestionDashboard> {
  @override


  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [

                      SizedBox(height: defaultPadding),
                      RecentQue(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) StarageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,

                    child: AddNewQuestion(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
