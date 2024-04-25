import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:islami/api_manager/QuranRadioResponse.dart';
import 'package:islami/api_manager/api_constants.dart';


class ApiManager {
  static Future<QuranRadioResponse?> getData() async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.apiPath);
    try {
      var response = await http.get(url);
      var jason = jsonDecode(response.body);
      return QuranRadioResponse.fromJson(jason);
    } catch (e) {
      throw e;
    }
  }
}