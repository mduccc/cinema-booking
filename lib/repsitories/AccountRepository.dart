import 'dart:convert';

import 'package:cgv_clone/models/AccountModel.dart';
import 'package:cgv_clone/navigate/Endpoint.dart';
import 'package:dio/dio.dart';

class AccountRepository {
   Future<AccountModel> fetch() async {
    Response response = await Dio().get(Endpoint.account);
    return AccountModel.fromJson(json.decode(response.toString()));
  }
}