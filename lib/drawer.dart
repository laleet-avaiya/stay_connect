// drawer: Drawer(
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: ListTile(
//                 title: Text('Admin User'),
//                 onTap: () {},
//               ),
//               padding: EdgeInsets.fromLTRB(100, 120, 0, 0),
//               decoration: BoxDecoration(
//                 // shape: BoxShape.circle,
//                 image: new DecorationImage(
//                   // fit: BoxFit.contain,
//                   image: AssetImage('graphics/background.png'),
//                 ),
//                 // color: Colors.green[600],
//               ),
//             ),

//             // const Divider() ,
//             ListTile(
//               // contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
//               leading: Icon(Icons.supervised_user_circle),
//               title: Text('Profile'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//               },
//             ),
//             const Divider(),
//             ListTile(
//               // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//               leading: Icon(Icons.settings),
//               title: Text('Setting'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//               },
//             ),
//             const Divider(),
//             ListTile(
//               // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//               leading: Icon(Icons.group),
//               title: Text('DA-IICT'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//               },
//             ),
//             const Divider(),
//             ListTile(
//               // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//               leading: Icon(Icons.face),
//               title: Text('FAMILY'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//               },
//             ),
//             const Divider(),
//             ListTile(
//               // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//               leading: Icon(Icons.ac_unit),
//               title: Text('FRIENDS'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//               },
//             ),
//             const Divider(),
//             ListTile(
//               // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//               leading: Icon(Icons.location_on),
//               title: Text('Logout'),
//               onLongPress: () {
//                 handleSignOut();
//               },
//             ),
//             FloatingActionButton(
//               onPressed: () {},
//             ),
//             const Divider(),
//           ],
//         ),
//       ),