import 'dart:developer';

import 'package:http/http.dart' as http;
import 'dart:convert'as convert;
class LocationServce {
  final String key = 'AIzaSyBlbQ2KBjDd0q1pykBE8LwC7k63SurCKTs';

  Future<String> getPlaceId(String input) async {
    final String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';

  var response = await http.get(Uri.parse(url));
  var json = convert.jsonDecode(response.body);
  var placeId = json['candidates'][0]['place_id'] as String;

  log(placeId);
  return placeId;

  }
}
