import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'pizza.dart';

class HttpHelper {
  final String authority = 'dk0j1.wiremockapi.cloud';
  final String path = 'pizzalist';
  Future<List<Pizza>> getPizzaList() async {
    final Uri url = Uri.https(authority, path);
    final http.Response result = await http.get(url);
    if (result.statusCode == HttpStatus.ok) {
      final decoded = json.decode(result.body);

      // The response body may be a List (JSON array) or an object that
      // contains the list under a key (e.g. {"pizzas": [...]}).
      Iterable items;
      if (decoded is List) {
        items = decoded;
      } else if (decoded is Map && decoded.values.isNotEmpty) {
        // try common keys first, otherwise take first list value if any
        if (decoded['pizzas'] is List) {
          items = decoded['pizzas'];
        } else if (decoded['data'] is List) {
          items = decoded['data'];
        } else {
          // find first value that's a List
          final firstList = decoded.values.firstWhere(
            (v) => v is List,
            orElse: () => <dynamic>[],
          );
          items = (firstList is List) ? firstList : <dynamic>[];
        }
      } else {
        items = <dynamic>[];
      }

      List<Pizza> pizzas = items
          .map<Pizza>((i) => Pizza.fromJson(Map<String, dynamic>.from(i)))
          .toList();
      return pizzas;
    } else {
      return [];
    }
  }
}
