import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserProvider with ChangeNotifier {
  List mylist = [];
  getUsers() async {
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    dynamic res = await http.get(url);
    res = jsonDecode(res.body);
    //print(res[0]["address"]["city"].toString());
    mylist = res;
    notifyListeners();
  }
}
