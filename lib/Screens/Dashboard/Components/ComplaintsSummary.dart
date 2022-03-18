import 'package:final_project_01/Components/complaints_summary_card.dart';
import 'package:flutter/material.dart';

import '../../../Constants/constants.dart';
import 'chart.dart';

class ComplaintsSummary extends StatelessWidget {
  const ComplaintsSummary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Complaints Summary",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Chart(),
          ComplaintsSummaryCard(
            svgSrc: kSvg,
            title: "Total Complaints",
            color: kPrimaryColor,
            numOfFiles: 114,
          ),
          ComplaintsSummaryCard(
            svgSrc: kSvg,
            title: "In progress Complaints",
            color: Colors.cyan,
            numOfFiles: 78,
          ),
          ComplaintsSummaryCard(
            svgSrc: kSvg,
            title: "Pending Complaints",
            color: Color(0xFFFFA113),
            numOfFiles: 28,
          ),
          ComplaintsSummaryCard(
            svgSrc: kSvg,
            title: "Completed Complaints",
            color: Colors.green,
            numOfFiles: 8,
          ),
          ComplaintsSummaryCard(
              title: "Rejected Complaints",
              svgSrc: kSvg,
              color: Colors.red,
              numOfFiles: 5),
        ],
      ),
    );
  }
}
