// // if (_currentUser != null) {
//       //   _handleGetContact();
//       // }


//       drawer: Drawer(
//           child: ListView(
//             // Important: Remove any padding from the ListView.
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               DrawerHeader(
//                 child: ListTile(
//                   title: Text('Admin User'),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 padding: EdgeInsets.fromLTRB(100, 120, 0, 0),
//                 decoration: BoxDecoration(
//                   // shape: BoxShape.circle,
//                   image: new DecorationImage(
//                     // fit: BoxFit.contain,
//                     image: AssetImage('graphics/background.png'),
//                   ),
//                   // color: Colors.green[600],
//                 ),
//               ),

//               // const Divider() ,
//               ListTile(
//                 // contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
//                 leading: Icon(Icons.supervised_user_circle),
//                 title: Text('Profile'),
//                 onTap: () {
//                   // Update the state of the app
//                   // ...
//                   Navigator.pop(context);
//                 },
//               ),
//               const Divider(),
//               ListTile(
//                 // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//                 leading: Icon(Icons.settings),
//                 title: Text('Setting'),
//                 onTap: () {
//                   // Update the state of the app
//                   // ...
//                 },
//               ),
//               const Divider(),
//               ListTile(
//                 // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//                 leading: Icon(Icons.group),
//                 title: Text('DA-IICT'),
//                 onTap: () {
//                   // Update the state of the app
//                   // ...
//                 },
//               ),
//               const Divider(),
//               ListTile(
//                 // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//                 leading: Icon(Icons.face),
//                 title: Text('FAMILY'),
//                 onTap: () {
//                   // Update the state of the app
//                   // ...
//                 },
//               ),
//               const Divider(),
//               ListTile(
//                 // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//                 leading: Icon(Icons.ac_unit),
//                 title: Text('FRIENDS'),
//                 onTap: () {
//                   // Update the state of the app
//                   // ...
//                 },
//               ),
//               const Divider(),

//               ListTile(
//                 // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),

//                 leading: Icon(Icons.exit_to_app),
//                 title: Text('Logout'),
//                 onLongPress: () {
//                   _handleSignOut();
//                 },
//               ),

//               const Divider(),
//             ],
//           ),
//         ),



  // Widget _drawer() {
  //   return Drawer(
  //     child: ListView(
  //       // Important: Remove any padding from the ListView.
  //       padding: EdgeInsets.zero,
  //       children: <Widget>[
  //         DrawerHeader(
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             children: <Widget>[
  //               ListTile(
  //                 leading: GoogleUserCircleAvatar(
  //                   identity: _currentUser,
  //                 ),
  //                 title: Text(_currentUser.displayName),
  //                 subtitle: Text(_currentUser.email),
  //               ),

  //               const Text("Welcome Signed in successfully."),
  //               // Text(_contactText),
  //             ],
  //           ),
  //           // padding: EdgeInsets.fromLTRB(100, 120, 0, 0),
  //           decoration: BoxDecoration(
  //             // shape: BoxShape.circle,
  //             image: new DecorationImage(
  //               // fit: BoxFit.contain,
  //               image: AssetImage('graphics/background.png'),
  //             ),
  //             // color: Colors.green[600],
  //           ),
  //         ),

  //         // const Divider() ,
  //         ListTile(
  //           // contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
  //           leading: Icon(Icons.supervised_user_circle),
  //           title: Text('Profile'),
  //           onTap: () {
  //             // Update the state of the app
  //             // ...
  //             Navigator.pop(context);
  //           },
  //         ),
  //         const Divider(),
  //         ListTile(
  //           // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
  //           leading: Icon(Icons.settings),
  //           title: Text('Setting'),
  //           onTap: () {
  //             // Update the state of the app
  //             // ...
  //           },
  //         ),
  //         const Divider(),
  //         ListTile(
  //           // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
  //           leading: Icon(Icons.group),
  //           title: Text('DA-IICT'),
  //           onTap: () {
  //             // Update the state of the app
  //             // ...
  //           },
  //         ),
  //         const Divider(),
  //         ListTile(
  //           // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
  //           leading: Icon(Icons.face),
  //           title: Text('FAMILY'),
  //           onTap: () {
  //             // Update the state of the app
  //             // ...
  //           },
  //         ),
  //         const Divider(),
  //         ListTile(
  //           // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
  //           leading: Icon(Icons.ac_unit),
  //           title: Text('FRIENDS'),
  //           onTap: () {
  //             // Update the state of the app
  //             // ...
  //           },
  //         ),
  //         const Divider(),
  //         ListTile(
  //           // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
  //           leading: Icon(Icons.location_on),
  //           title: Text('Update Location'),
  //           onLongPress: () {
  //             // Update the state of the app
  //             // ...
  //           },
  //         ),
  //         RaisedButton(
  //           child: const Text('SIGN OUT'),
  //           onPressed: _handleSignOut,
  //         ),
  //         RaisedButton(
  //           child: const Text('REFRESH'),
  //           onPressed: _handleGetContact,
  //         ),
  //         const Divider(),
  //       ],
  //     ),
  //   );
  // }




// class SignInDemo extends StatefulWidget {
//   @override
//   State createState() => SignInDemoState();
// }

// class SignInDemoState extends State<SignInDemo> {
//   GoogleSignInAccount _currentUser;
//   String _contactText;

//   @override
//   void initState() {
//     super.initState();
// _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
//   setState(() {
//     _currentUser = account;
//   });
//   if (_currentUser != null) {
//     _handleGetContact();
//   }
// });
// _googleSignIn.signInSilently();
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(
//         title: const Text('Google Sign In'),
//       ),
//       body: ConstrainedBox(
//         constraints: const BoxConstraints.expand(),
//         child: _buildBody(),
//       ));
// }
// }
