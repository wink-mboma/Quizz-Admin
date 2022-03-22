
import 'package:admin/models/RecentQuiz.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class RecentQui extends StatelessWidget {
  const RecentQui({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quiz Available",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("Title"),
                ),
                DataColumn(
                  label: Text("Description"),
                ),

                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Action"),
                ),
              ],
              rows: List.generate(
                demoRecentQuizs.length,
                    (index) => recentQuizDataRow(demoRecentQuizs[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentQuizDataRow(RecentQuiz fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.description!)),
      DataCell(Text(fileInfo.date!)),
      DataCell(Text(fileInfo.action!)),
    ],
  );
}