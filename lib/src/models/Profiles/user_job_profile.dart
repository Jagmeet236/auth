import 'package:auth/src/models/Profiles/profile.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../constants/enums.dart';

part 'user_job_profile.g.dart';

@JsonSerializable(explicitToJson: true)
class UserJobProfile extends Profile {
  final QualificationLevel highestQualification;

  final List<String> interestCategories;

  final String yearsOfExperience;

  final List<String> expertises;

  final List<String> certificates;

  final List<String> userDocuments;

  /// `createdAt`: [DateTime] when the document was last updated
  final DateTime createdAt;

  /// `sotrePath` : [String] Path of the user's data document
  final String? storePath;

  UserJobProfile({
    required ProfileType type,
    required this.highestQualification,
    required this.interestCategories,
    required this.yearsOfExperience,
    required this.expertises,
    required this.certificates,
    required this.userDocuments,
    required this.createdAt,
    this.storePath,
  }) : super(type: type);
  UserJobProfile copyWith({
    ProfileType? type,
    QualificationLevel? highestQualification,
    List<String>? interestCategories,
    String? yearsOfExperience,
    List<String>? expertises,
    List<String>? certificates,
    List<String>? userDocuments,
    DateTime? createdAt,
    String? Function()? storePath,
  }) {
    return UserJobProfile(
      type: type ?? this.type,
      highestQualification: highestQualification ?? this.highestQualification,
      interestCategories: interestCategories ?? this.interestCategories,
      yearsOfExperience: yearsOfExperience ?? this.yearsOfExperience,
      expertises: expertises ?? this.expertises,
      certificates: certificates ?? this.certificates,
      userDocuments: userDocuments ?? this.userDocuments,
      createdAt: createdAt ?? this.createdAt,
      storePath: storePath != null ? storePath() : this.storePath,
    );
  }

  /// Copies This Model With Path Included
  ///
  /// `path` : [String] Path of the document in firebase
  UserJobProfile copyWithPath({String? path}) {
    if (path == null) return this;
    return copyWith(storePath: () => path);
  }

  /// Convert To [UserJobProfile] From Json
  /// `path` : [String?] is the path of the UserDataProfile doc in Firebase
  factory UserJobProfile.fromJson(Map<String, dynamic> json, {String? path}) =>
      _$UserJobProfileFromJson(json).copyWithPath(path: path);

  /// Convert To Json Format
  Map<String, dynamic> toJson() => _$UserJobProfileToJson(this);
}
