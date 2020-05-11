// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_time_id_ver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeAffairsResults _$HomeAffairsResultsFromJson(Map<String, dynamic> json) {
  return HomeAffairsResults(
    json['idNumber'] as String,
    json['firstNames'] as String,
    json['surName'] as String,
    json['dob'] as String,
    json['gender'] as String,
    json['citizenship'] as String,
    json['deceasedStatus'] as String,
    json['deceasedDate'] as String,
    json['age'] as int,
  );
}

Map<String, dynamic> _$HomeAffairsResultsToJson(HomeAffairsResults instance) =>
    <String, dynamic>{
      'idNumber': instance.idNumber,
      'firstNames': instance.firstNames,
      'surName': instance.surName,
      'dob': instance.dob,
      'gender': instance.gender,
      'citizenship': instance.citizenship,
      'deceasedStatus': instance.deceasedStatus,
      'deceasedDate': instance.deceasedDate,
      'age': instance.age,
    };
