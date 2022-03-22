import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Total Subjects",
    numOfFiles: 1328,
    svgSrc: "assets/icons/subject.svg",
    totalStorage: "Subjects",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Total Students",
    numOfFiles: 1328,
    svgSrc: "assets/icons/student.svg",
    totalStorage: "Students",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Total Quiz",
    numOfFiles: 1328,
    svgSrc: "assets/icons/quiz.svg",
    totalStorage: "Quiz",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Total Quiz",
    numOfFiles: 1328,
    svgSrc: "assets/icons/quiz.svg",
    totalStorage: "Quiz",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
];
