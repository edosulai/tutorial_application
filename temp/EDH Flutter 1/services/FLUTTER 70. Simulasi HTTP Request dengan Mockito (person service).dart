import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tutorial_application/models/FLUTTER%2070.%20Simulasi%20HTTP%20Request%20dengan%20Mockito%20(person).dart';

class PersonService {
  static Future<Person> getPersonById(String id, http.Client client) async {
    var response = await client.get(Uri.https('example.com', '/persons/$id'));
    if (response.statusCode != 200) {
      throw Exception("Error");
    }
    var result = json.decode(response.body);

    return Person.fromJson(result);
  }
}
