import 'package:json_annotation/json_annotation.dart';
part 'real_time_id_ver.g.dart';

//run when making model changes::: flutter packages pub run build_runner build
@JsonSerializable()
class HomeAffairsResults{
  String idNumber, firstNames,surName,dob,gender,citizenship,deceasedStatus,deceasedDate;
  int age;

  HomeAffairsResults(this.idNumber, this.firstNames,this.surName,this.dob,this.gender,this.citizenship,this.deceasedStatus,this.deceasedDate, this.age);
  factory HomeAffairsResults.fromJson(Map<String,dynamic>json)=>_$HomeAffairsResultsFromJson(json);
  Map<String,dynamic>toJson()=>_$HomeAffairsResultsToJson(this);
}

