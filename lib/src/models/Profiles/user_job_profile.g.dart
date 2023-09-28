// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_job_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserJobProfile _$UserJobProfileFromJson(Map<String, dynamic> json) =>
    UserJobProfile(
      uid: json['uid'] as String,
      highestQualification: $enumDecode(
          _$QualificationLevelEnumMap, json['highestQualification']),
      interestCategories: (json['interestCategories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      yearsOfExperience: json['yearsOfExperience'] as String,
      expertises: (json['expertises'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      certificates: (json['certificates'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      userDocuments: (json['userDocuments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      storePath: json['storePath'] as String?,
    );

Map<String, dynamic> _$UserJobProfileToJson(UserJobProfile instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'highestQualification':
          _$QualificationLevelEnumMap[instance.highestQualification]!,
      'interestCategories': instance.interestCategories,
      'yearsOfExperience': instance.yearsOfExperience,
      'expertises': instance.expertises,
      'certificates': instance.certificates,
      'userDocuments': instance.userDocuments,
      'createdAt': instance.createdAt.toIso8601String(),
      'storePath': instance.storePath,
    };

const _$QualificationLevelEnumMap = {
  QualificationLevel.matric: 'matric',
  QualificationLevel.higherSecondary: 'higherSecondary',
  QualificationLevel.graduate: 'graduate',
  QualificationLevel.postGraduate: 'postGraduate',
  QualificationLevel.btech: 'btech',
  QualificationLevel.diploma: 'diploma',
};
