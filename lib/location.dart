import 'dart:async';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:flutter_app/map.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:material_search/material_search.dart';

class Locaiton extends StatefulWidget {
  locaitonState createState() => locaitonState();
}

class locaitonState extends State<Locaiton> {
  
  Map<String, double> startLocation;
  Map<String, double> _currentLocation;
  StreamSubscription<Map<String, double>> _locationSubscription;
  Location _location = new Location();
  String error;

  static bool permission = false;

  // static int userid=8;
  // static String name;
  static String phone = '0087878700';

  initPlatformState() async {
    Map<String, double> location;

    try {
      if (await _location.hasPermission() || permission == true) {
        location = await _location.getLocation();
        setState(() {
          permission = true;
        });
      }
      error = null;
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        error = 'Permission denied';
      } else if (e.code == 'PERMISSION_DENIED_NEVER_ASK') {
        error = 'Permission denied- Go to setting and enable location';
      }
      location = null;
    }
  }

  sendPost() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String out = pref.getString('displayname');
    String id = pref.getString('currentuser_id');
    String email = pref.getString('email');
    // print(out + "location _suer");
    print(id);

    await http.get(
        'https://demovhr.000webhostapp.com/stayconnect/locationupdate.php?latitude=' +
            _currentLocation["latitude"].toString() +
            '&longitude=' +
            _currentLocation["longitude"].toString() +
            '&id=' +
            id +
            '&name=' +
            out +
            '&email=' +
            email);
  }

  @override
  void initState() {
    super.initState();
    initPlatformState();
    _locationSubscription =
        _location.onLocationChanged().listen((Map<String, double> result) {
      setState(() {
        permission = true;
        _currentLocation = result;
        if (_currentLocation != null) sendPost();
        print(_currentLocation);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Don't show the leading button
          title: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                child: Text('StayConnect'),
              ),

              new Row(
                children: <Widget>[
                  // IconButton(
                  //   onPressed: () => _showMaterialSearch(context),
                  //   icon: Icon(Icons.search, color: Colors.white),
                  // ),

                  IconButton(
                    icon: Icon(Icons.verified_user),
                    tooltip: "Search",
                    onPressed: () {
                      // _showMaterialSearch(context);
                    },
                  ),

                  IconButton(
                    icon: Icon(Icons.group_add),
                    tooltip: "Profile",
                    onPressed: () {
                      // _showMaterialSearch(context);
                    },
                  ),
                ],
              ),

              // Your widgets here
            ],
          ),
          backgroundColor: Colors.green[700],
        ),
        // drawer: new Drawer(),

        
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.add),
        //   backgroundColor: Colors.green[600],
        //   onPressed: () {
        //     _showDialog();
        //   },
        // ),
        // bottomNavigationBar: BottomAppBar(
        //   shape: CircularNotchedRectangle(),
        //   notchMargin: 5.0,
        //   child: new Row(
        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: <Widget>[
        //       // Builder(
        //       //   builder: (context) => IconButton(
        //       //         icon: new Icon(Icons.menu),
        //       //         onPressed: () => Scaffold.of(context).openDrawer(),
        //       //       ),
        //       // ),
        //       // IconButton(
        //       //   icon: Icon(Icons.search),
        //       //   onPressed: () {
        //       //     // _showMaterialSearch(context);
        //       //   },
        //       // ),
        //     ],
        //   ),
        // ),
        // // drawer: Drawer(),
        body: Maps());
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Add Friends"),
          content: new Text("Search friend with username"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // _showMaterialSearch(context);
              },
            ),

            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),

            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
