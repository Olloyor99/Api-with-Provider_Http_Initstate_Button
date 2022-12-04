import 'dart:convert';
import 'package:http/http.dart' as http;

class MyService {
  static Future getUsers() async {
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    dynamic res = await http.get(url);
    res = jsonDecode(res.body);
    print(res[0]["address"]["city"].toString());
    return res;
  }
}
