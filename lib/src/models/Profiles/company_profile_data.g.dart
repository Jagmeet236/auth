// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyProfileData _$CompanyProfileDataFromJson(Map<String, dynamic> json) =>
    CompanyProfileData(
      uid: json['uid'] as String,
      legalName: json['legalName'] as String,
      logoUrl: json['logoUrl'] as String,
      state: $enumDecode(_$StateEnumMap, json['state']),
      city: json['city'] as String,
      gstNumber: json['gstNumber'] as String?,
      registrationNumber: json['registrationNumber'] as String?,
      emailId: json['emailId'] as String?,
      website: json['website'] as String?,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      storePath: json['storePath'] as String?,
    );

Map<String, dynamic> _$CompanyProfileDataToJson(CompanyProfileData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'legalName': instance.legalName,
      'logoUrl': instance.logoUrl,
      'state': _$StateEnumMap[instance.state]!,
      'city': instance.city,
      'gstNumber': instance.gstNumber,
      'registrationNumber': instance.registrationNumber,
      'emailId': instance.emailId,
      'website': instance.website,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'storePath': instance.storePath,
    };

const _$StateEnumMap = {
  State.jammuandkashmir: 'jammuandkashmir',
  State.delhi: 'delhi',
  State.haryana: 'haryana',
  State.punjab: 'punjab',
  State.rajasthan: 'rajasthan',
  State.uttarPradesh: 'uttarPradesh',
};
