import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rickyandmorty/apps/utils/config.dart';

class HttpManager {
  Future<dynamic> get(url) async {
    final headers = await _getHeaders();
    final response =
        await http.Client().get(API_URL + url, headers: headers);
    final parsed = jsonDecode(response.body);

    return parsed;
  }

  Future<dynamic> put(url) async {
    final headers = await _getHeaders();
    final response =
        await http.Client().put(API_URL + url, headers: headers);
    final parsed = jsonDecode(response.body);
    return parsed;
  }

  Future<dynamic> post(url, data) async {
    final headers = await _getHeaders();
    final response = await http.Client().post(API_URL + url,
        body: jsonEncode(data), headers: headers);
    final parsed = jsonDecode(response.body);

    return parsed;
  }

  _getHeaders() async {
    return {'Content-Type': 'application/json; charset=UTF-8'};
  }
}
