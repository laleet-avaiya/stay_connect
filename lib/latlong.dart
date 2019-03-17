import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Longlat>> fetchPost() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  String id = pref.getString('currentuser_id');

  http.Response response =
      //await http.get('https://demovhr.000webhostapp.com/app/location.php');
      await http.get(
          'https://demovhr.000webhostapp.com/stayconnect/markerDetails.php?id=' + id);
  List responseJson = json.decode(response.body);
  return responseJson.map((m) => new Longlat.fromJson(m)).toList();
}

class Longlat {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String latitude;
  final String longitude;
  final String avtar;
  final String time;
  final String about;

  Longlat(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.latitude,
      this.longitude,
      this.avtar,
      this.time,
      this.about});

  factory Longlat.fromJson(Map<String, dynamic> json) {
    return Longlat(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      avtar: json['avtar'],
      time: json['time'],
      about: json['about'],
    );
  }
}
