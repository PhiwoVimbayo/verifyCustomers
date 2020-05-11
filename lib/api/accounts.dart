import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum HEADERS {apiKey}

class Account{
  static Account storage = new Account();
  final store = new FlutterSecureStorage();

  Future<void> write(Map<String,dynamic> json) async{
    await store.write(key: "apiKey", value: json['API_KEY']);

  }

  Future<String> read() async{
    String apiKey = await store.read(key: "apiKey" );
    return apiKey;

  }

}