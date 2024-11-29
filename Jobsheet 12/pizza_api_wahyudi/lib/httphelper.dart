import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'pizza.dart';

class HttpHelper {
  final String authority = 'dmr3j.wiremockapi.cloud';
  final String path = 'pizzalist';

  Future<List<Pizza>> getPizzaList() async {
    final Uri url = Uri.https(authority, path);
    final http.Response result = await http.get(url);

    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);

      if (jsonResponse is List) {
        List<Pizza> pizzas =
            jsonResponse.map<Pizza>((i) => Pizza.fromJson(i)).toList();
        return pizzas;
      } else {
        return [];
      }
    } else {
      return [];
    }
  }
}
