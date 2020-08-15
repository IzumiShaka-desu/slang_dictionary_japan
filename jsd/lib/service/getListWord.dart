import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jsd/models/wordModel.dart';

Future<List<Word>> getListWord() async {
  List<Word> list = [];
  const host = "http://192.168.43.150/";
  const path = "webService/getWord.php";
  const url = host + path;
  var client = http.Client();
  var response = await client.get(url);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body) as List;
    print(data.runtimeType);
    print(data);
    list =data.map((e) => Word.fromJson(e)).toList();
  }
  return list;
}
