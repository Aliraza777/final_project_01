import 'package:final_project_01/Constants/constants.dart';
import 'package:flutter/material.dart';

class ComplaintsStorageInfo {
  final String? svgSrc, title;
  late final int? numOfFiles;
  final Color? color;
  final String value;

  ComplaintsStorageInfo({
    this.svgSrc,
    this.title,
    this.numOfFiles,
    this.color,
    required this.value,
  });

  set SetNumOfFiles(int? num) {
    this.numOfFiles = num;
  }

  int? get getNumOfFiles {
    return this.numOfFiles;
  }
}

List ComplaintsDetails = [
  ComplaintsStorageInfo(
    title: "Rejected Complaints",
    numOfFiles: 5,
    svgSrc: kSvg,
    color: Colors.red,
    value: "total",
  ),
  ComplaintsStorageInfo(
    title: "Pending Complaints",
    numOfFiles: 28,
    svgSrc: kSvg,
    color: Color(0xFFFFA113),
    value: "pending",
  ),
  ComplaintsStorageInfo(
    title: "In progress Complaints",
    numOfFiles: 78,
    svgSrc: kSvg,
    color: Colors.cyan,
    value: "inprogress",
  ),
  ComplaintsStorageInfo(
    title: "Completed Compliants",
    numOfFiles: 8,
    svgSrc: kSvg,
    color: Colors.green,
    value: "complete",
  ),
];
