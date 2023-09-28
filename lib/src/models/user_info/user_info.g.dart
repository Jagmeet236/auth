// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      userType: $enumDecode(_$UserTypeEnumMap, json['userType']),
      verificationStatus:
          $enumDecode(_$VerficationStatusEnumMap, json['verificationStatus']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      storePath: json['storePath'] as String?,
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'userType': _$UserTypeEnumMap[instance.userType]!,
      'verificationStatus':
          _$VerficationStatusEnumMap[instance.verificationStatus]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'storePath': instance.storePath,
    };

const _$UserTypeEnumMap = {
  UserType.verficationAgency: 'verficationAgency',
  UserType.jobSeeker: 'jobSeeker',
  UserType.jobProvider: 'jobProvider',
  UserType.admin: 'admin',
  UserType.staff: 'staff',
};

const _$VerficationStatusEnumMap = {
  VerficationStatus.verified: 'verified',
  VerficationStatus.unverified: 'unverified',
};
