// import 'package:flutter/material.dart';
// import 'package:infi_soware/data/data_base_helper.dart';
// import 'package:infi_soware/ui/screen/login_screen.dart';

// class PreloginChecking extends StatelessWidget {
//   final DatabaseHelper _databaseHelper = DatabaseHelper();

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _databaseHelper.nameExists(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator();
//         } else if (snapshot.data == true) {
//           WidgetsBinding.instance.addPostFrameCallback((_) async {
//             String? name = await _databaseHelper.getName();
//             Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => LoginScreen(name: name ?? '')));
//           });
//           return Container();
//         } else {
//           WidgetsBinding.instance.addPostFrameCallback((_) {
//             showNameDialog(context);
//           });
//           return Container();
//         }
//       },
//     );
//   }

//   void showNameDialog(BuildContext context) async {
//     showDialog(
//         context: context,
//         barrierDismissible: true,
//         builder: (BuildContext context) {
//           String name = '';
//           return AlertDialog(
//             title: Text('Enter Your name'),
//             content: TextField(
//               onChanged: (value) {
//                 name = value;
//               },
//             ),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () async {
//                   if (name.isNotEmpty) {
//                     await _databaseHelper.saveName(name);
//                     Navigator.pop(context);
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => LoginScreen(name: name)));
//                   }
//                 },
//                 child: Text("submit"),
//               )
//             ],
//           );
//         });
//   }
// }
