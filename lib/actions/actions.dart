import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:breaking_bad/models/models.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<Character> fetchCharacter() async {
  String? apiBase = dotenv.env['API_BASE'];

  if (apiBase == null) {
    throw Exception("Data source didn't find");
  }

  http.Response response = await http.get(Uri.parse("$apiBase/characters"));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);

    var randomCharacter = data[1];

    return Character.fromJson(randomCharacter);
  } else {
    throw Exception('Fetch failed!');
  }
}
