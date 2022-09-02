// import 'package:flutter/material.dart';

// class Create extends StatelessWidget {
//   const Create({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//           child: const Text('Show Modal Bottom Sheet'),
//           onPressed: () {
//             showModalBottomSheet(
//               context: context,
//               builder: (context) {
//                 return Wrap(
//                   children: const [
//                     ListTile(
//                       leading: Icon(Icons.share),
//                       title: Text('Share'),
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.copy),
//                       title: Text('Copy Link'),
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.edit),
//                       title: Text('Edit'),
//                     ),
//                   ],
//                 );
//               },
//             );
//           }),
//     );
//   }
// }

// // // class Create extends StatelessWidget {
// // //   const Create({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Container(
// // //       child: showModalBottomSheet(
// // //       context: context,
// // //       builder: (BuildContext context) {
// // //         return Column(
// // //           children: <Widget>[
// // //             _createTile(context, 'Message1', Icons.message, _action1),
// // //             _createTile(context, 'Message2', Icons.message, _action2),
// // //             _createTile(context, 'Message3', Icons.message, _action3),
// // //           ],
// // //         );
// // //       },
// // //     ),
// // //     );
// // // }
// // // }

// // class Create extends StatelessWidget{
// //   const Create({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context){
// //     return showModalBottomSheet(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return Column(
// //           children: <Widget>[
// //             _createTile(context, 'Message1', Icons.message, _action1),
// //             _createTile(context, 'Message2', Icons.message, _action2),
// //             _createTile(context, 'Message3', Icons.message, _action3),
// //           ],
// //         );
// //       },
// //     );
// //   }
// // }

// // ListTile _createTile(BuildContext context, String name, IconData icon, Function action){
// //   return ListTile(
// //     leading: Icon(icon),
// //     title: Text(name),
// //     onTap: (){
// //       Navigator.pop(context);
// //       action();
// //     },
// //   );
// // }

// // _action1() {
// //   print('action1');
// // }

// // _action2() {
// //   print('action2');
// // }

// // _action3() {
// //   print('action3');
// // }

// // // return showModalBottomSheet(
// //   //       context: context,
// //   //       builder: (BuildContext context) {
// //   //         return Column(
// //   //           mainAxisSize: MainAxisSize.min,
// //   //           children: <Widget>[
// //   //             ListTile(
// //   //               leading: new Icon(Icons.photo),
// //   //               title: new Text('Photo'),
// //   //               onTap: () {
// //   //                 Navigator.pop(context);
// //   //               },
// //   //             ),
// //   //             ListTile(
// //   //               leading: new Icon(Icons.music_note),
// //   //               title: new Text('Music'),
// //   //               onTap: () {
// //   //                 Navigator.pop(context);
// //   //               },
// //   //             ),
// //   //             ListTile(
// //   //               leading: new Icon(Icons.videocam),
// //   //               title: new Text('Video'),
// //   //               onTap: () {
// //   //                 Navigator.pop(context);
// //   //               },
// //   //             ),
// //   //             ListTile(
// //   //               leading: new Icon(Icons.share),
// //   //               title: new Text('Share'),
// //   //               onTap: () {
// //   //                 Navigator.pop(context);
// //   //               },
// //   //             ),
// //   //           ],
// //   //         );
// //   //       });
// //   // }