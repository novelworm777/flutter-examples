import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  String uri;

  NetworkHelper(this.uri);

  Future getData() async {
    Uri url = Uri.parse(uri);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
