// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      type: $enumDecode(_$ProfileTypeEnumMap, json['type']),
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'type': _$ProfileTypeEnumMap[instance.type]!,
      'uid': instance.uid,
    };

const _$ProfileTypeEnumMap = {
  ProfileType.company: 'company',
  ProfileType.user: 'user',
};
