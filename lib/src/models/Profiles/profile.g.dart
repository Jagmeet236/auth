// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      type: $enumDecode(_$ProfileTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'type': _$ProfileTypeEnumMap[instance.type]!,
    };

const _$ProfileTypeEnumMap = {
  ProfileType.company: 'company',
  ProfileType.user: 'user',
};
