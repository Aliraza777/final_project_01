import 'package:flutter/material.dart';

import 'constants.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;
  final String value;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
    required this.value,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Total Complaints",
    numOfFiles: 114,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: " ",
    color: primaryColor,
    percentage: 100,
    value: "total",
  ),
  CloudStorageInfo(
    title: "Pending Complaints",
    numOfFiles: 28,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "",
    color: Color(0xFFFFA113),
    percentage: 35,
    value: "pending",
  ),
  CloudStorageInfo(
    title: "In progress Complaints",
    numOfFiles: 78,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "",
    color: Colors.cyan,
    percentage: 60,
    value: "inprogress",
  ),
  CloudStorageInfo(
    title: "Completed Compliants",
    numOfFiles: 8,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "",
    color: Colors.green,
    percentage: 8,
    value: "complete",
  ),
];
