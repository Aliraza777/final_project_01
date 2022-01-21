import 'package:final_project_01/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'my_files.dart';
import 'recent_files.dart';
import 'storage_detail.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.blueGrey.shade600,
          ),
          // onPressed: context.read<MenuController>().controlMenu,

          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        title: Text("NAMHAL"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        RecentFiles(),
                        SizedBox(height: defaultPadding),
                        MyFiles(),
                        if (Responsive.isMobile(context))
                          SizedBox(height: defaultPadding),
                        if (Responsive.isMobile(context)) StorageDetails(),
                      ],
                    ),
                  ),
                  if (!Responsive.isMobile(context))
                    SizedBox(width: defaultPadding),
                  // On Mobile means if the screen is less than 850 we dont want to show it
                  if (!Responsive.isMobile(context))
                    Expanded(
                      flex: 2,
                      child: StorageDetails(),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// //////////////////////////// header code...............
//
// class Header extends StatelessWidget {
//   const Header({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       // mainAxisAlignment: MainAxisAlignment.center,
//       // crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // if (!Responsive.isDesktop(context))
//         //   Spacer(flex: Responsive.isMobile(context) ? 1 : 2),
//         IconButton(
//           icon: Icon(
//             Icons.menu,
//             color: primaryColor,
//           ),
//           // onPressed: context.read<MenuController>().controlMenu,
//
//           onPressed: () => Scaffold.of(context).openDrawer(),
//         ),
//         if (!Responsive.isMobile(context))
//           Text(
//             "Dashboard",
//             style: Theme.of(context).textTheme.headline6,
//           ),
//         if (!Responsive.isMobile(context))
//           Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
//         // Expanded(child: SearchField()),
//         SizedBox(
//           width: 200,
//         ),
//         ProfileCard(),
//       ],
//     );
//   }
// }
//
// class ProfileCard extends StatelessWidget {
//   const ProfileCard({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: defaultPadding),
//       padding: EdgeInsets.symmetric(
//         horizontal: defaultPadding,
//         vertical: defaultPadding / 2,
//       ),
//       decoration: BoxDecoration(
//         color: primaryColor,
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//         border: Border.all(color: Colors.white10),
//       ),
//       child: Row(
//         children: [
//           Icon(Icons.supervised_user_circle_outlined),
//           if (!Responsive.isMobile(context))
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
//               child: Text("Muhammad Ali Raza"),
//             ),
//         ],
//       ),
//     );
//   }
// }
//
// class SearchField extends StatelessWidget {
//   const SearchField({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: "Search",
//         fillColor: primaryColor,
//         filled: true,
//         border: OutlineInputBorder(
//           borderSide: BorderSide.none,
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//         ),
//         suffixIcon: InkWell(
//           onTap: () {},
//           child: Container(
//             padding: EdgeInsets.all(defaultPadding * 0.75),
//             margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
//             decoration: BoxDecoration(
//               color: primaryColor,
//               borderRadius: const BorderRadius.all(Radius.circular(10)),
//             ),
//             child: SvgPicture.asset("assets/icons/Search.svg"),
//           ),
//         ),
//       ),
//     );
//   }
// }
