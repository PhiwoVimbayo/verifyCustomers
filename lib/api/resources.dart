import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart'as http;
import 'package:verify_users/api/accounts.dart';

class Resource{
  static final String verify_id_host = "www.verifyid.co.za";
  static final String verify_id_base_path = "/webservice";
  static final String verify_id_credits = "/my_credits";
  static final String verify_id_authenticate = verify_id_host+verify_id_base_path+"/authenticate";
  static final String verify_id_realtime_verification = verify_id_host+verify_id_base_path+"/home_affairs_real_time_idv";

  Future<bool> login(String email,String password)async{
    final response = await http.post(verify_id_authenticate,body: {"email_address":email,"password":password});
    try{
      final responseJson = json.decode(response.body);
      Account.storage.write(responseJson);
      return true;
    }on Exception catch (e){
      print( "ooops::: $e");
      return false;
    }
  }

  Future <List< dynamic>>verifyIdNumber(endpoint,payload) async{
    final response = await http.post(verify_id_realtime_verification,
      body: payload
    );
    try{
      return jsonDecode(response.body);
    }on Exception catch(e){
      print("oops $e");
    }
  }
}