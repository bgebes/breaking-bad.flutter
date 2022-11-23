import 'dart:convert';
import 'dart:math';
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

    Random r = Random();
    int random = r.nextInt(data.length);

    var randomCharacter = data[random];

    return Character.fromJson(randomCharacter);
  } else {
    throw Exception('Fetch failed!');
  }
}
