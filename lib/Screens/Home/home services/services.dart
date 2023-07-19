import 'dart:convert';

import '../../../models/OverViewModel.dart';
import 'package:http/http.dart' as http;

class Services
{
  String url = '' ;


  Future<OverViewModel> aboutData() async {
    final response = await http.get(
      Uri.parse(url),
    );

    OverViewModel data = OverViewModel.fromJson(jsonDecode(response.body));

    return data ;
  }
}