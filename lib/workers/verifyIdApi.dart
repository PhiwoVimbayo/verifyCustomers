import 'package:verify_users/api/accounts.dart';
import 'package:verify_users/api/resources.dart';

import '../models/real_time_id_ver.dart';

Future<List<HomeAffairsResults>>verifyIdNumber(String idNo)async{
  String key = await Account().read();
  Map<String,String> payload = {"api_key":key,"id_number":idNo};
  List<dynamic> homeAffairsResponseJson = await Resource().verifyIdNumber(Resource.verify_id_realtime_verification, payload);
  List<HomeAffairsResults> results = new List();

  homeAffairsResponseJson.forEach((item){
    Map<String,dynamic> resultsMap = Map<String,dynamic>.from(item);
    HomeAffairsResults model = HomeAffairsResults.fromJson(resultsMap);
    results.add(model);
  });
  return results;
}


