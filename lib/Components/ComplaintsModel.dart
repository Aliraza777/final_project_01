import 'package:flutter/material.dart';

class ComplaintsStorageInfo {
  final String? svgSrc, title;
  final int? numOfFiles;
  final Color? color;
  final String value;

  ComplaintsStorageInfo({
    this.svgSrc,
    this.title,
    this.numOfFiles,
    this.color,
    required this.value,
  });
}

List ComplaintsDetails = [
  ComplaintsStorageInfo(
    title: "Rejected Complaints",
    numOfFiles: 114,
    svgSrc: "assets/icons/Documents.svg",
    color: Colors.red,
    value: "total",
  ),
  ComplaintsStorageInfo(
    title: "Pending Complaints",
    numOfFiles: 28,
    svgSrc: "assets/icons/Documents.svg",
    color: Color(0xFFFFA113),
    value: "pending",
  ),
  ComplaintsStorageInfo(
    title: "In progress Complaints",
    numOfFiles: 78,
    svgSrc: "assets/icons/Documents.svg",
    color: Colors.cyan,
    value: "inprogress",
  ),
  ComplaintsStorageInfo(
    title: "Completed Compliants",
    numOfFiles: 8,
    svgSrc: "assets/icons/Documents.svg",
    color: Colors.green,
    value: "complete",
  ),
];
