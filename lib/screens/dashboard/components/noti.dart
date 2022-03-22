import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class noti extends StatefulWidget {
  const noti({Key? key}) : super(key: key);

  @override
  _notiState createState() => _notiState();
}

class _notiState extends State<noti> {
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
            "Notifications",
            style: TextStyle(
              fontSize: 18,

              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: defaultPadding),

          StorageInfoCard(
            svgSrc: "assets/icons/english1.svg",
            title: "English Quiz",
            amountOfFiles: "Posted on 10/03/2022",
            numOfFiles: 18,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/math2.svg",
            title: "Math Quiz",
            amountOfFiles: "Posted on 10/03/2022",
            numOfFiles: 13,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/history1.svg",
            title: "History Quiz",
            amountOfFiles: "Posted on 10/03/2022",
            numOfFiles: 28,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/geography.svg",
            title: "Geography Quiz",
            amountOfFiles: "Posted on 10/03/2022",
            numOfFiles: 10,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/physics3.svg",
            title: "Physics Quiz",
            amountOfFiles: "Posted on 10/03/2022",
            numOfFiles: 14,
          ),
        ],
      ),
    );
  }
}
