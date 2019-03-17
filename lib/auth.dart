// import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_app/map.dart';
import 'package:flutter_app/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

GoogleSignIn googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

// class gooleauth

class Googleauth extends StatefulWidget {
  GoogleauthState createState() => GoogleauthState();
}

class GoogleauthState extends State<Googleauth> {
  GoogleSignInAccount _currentUser = null;
  static String currentuser;
  static String currentuser_id;
  static String currentuser_email;
  String _contactText;
  bool auth_user = false;
  int count = 0;
  static bool login = false;

  String get_currentuser() {
    return currentuser;
  }

// SignIn Private Method
  Future<void> handleSignIn() async {
    try {
      await googleSignIn.signIn();
    } catch (error) {}
  }

// SignOut Private Method
  Future<bool> handleSignOut() async {
    try {
      await googleSignIn.disconnect();
    } catch (error) {
      return false;
    }
    return true;
  }

  GetSharedVariables() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('displayname', currentuser);
     await pref.setString('currentuser_id', currentuser_id);
      await pref.setString('email', currentuser_email);
    // String out = pref.getString('displayname');
    // String id = pref.getString('currentuser_id');
  }

  @override
  void initState() {
    super.initState();
   
    googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
      setState(() {
        login = true;
        GetSharedVariables();
        _currentUser = account;
        currentuser = account.displayName;
        currentuser_id=account.id;
        currentuser_email=account.email;
      });
    });
    googleSignIn.signInSilently();
  }

  Widget buildBody() {
    // goolge signin button
    return Center(
      child: Container(
        height: 50.00,
        child: SignInButton(
          Buttons.Google,
          onPressed: () {
            handleSignIn();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (login == true)
      return new Locaiton();
    else {
      return new Scaffold(
        body: buildBody(),
      );
    }
  }
}
