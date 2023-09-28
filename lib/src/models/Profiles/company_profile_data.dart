import 'package:auth/src/constants/enums.dart';
import 'package:auth/src/models/Profiles/profile.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_profile_data.g.dart';

@JsonSerializable(explicitToJson: true)
class CompanyProfileData extends Profile {
  final String legalName;

  final String logoUrl;

  final State state;

  final String city;

  final String? gstNumber;

  final String? registrationNumber;

  final String? emailId;

  final String? website;

  /// `updatedAt`: [DateTime] when the document was last updated
  final DateTime updatedAt;

  /// `sotrePath` : [String] Path of the user's data document
  final String? storePath;

  CompanyProfileData(
      {required String uid,
      required this.legalName,
      required this.logoUrl,
      required this.state,
      required this.city,
      this.gstNumber,
      this.registrationNumber,
      required this.emailId,
      required this.website,
      required this.updatedAt,
      this.storePath})
      : super(uid: uid);

  CompanyProfileData copyWith({
    String? uid,
    String? legalName,
    String? logoUrl,
    State? state,
    String? city,
    String? gstNumber,
    String? registrationNumber,
    String? emailId,
    String? website,
    DateTime? updatedAt,
    String? Function()? storePath,
  }) {
    return CompanyProfileData(
      uid: uid ?? this.uid,
      legalName: legalName ?? this.legalName,
      logoUrl: logoUrl ?? this.logoUrl,
      state: state ?? this.state,
      city: city ?? this.city,
      gstNumber: gstNumber ?? this.gstNumber,
      registrationNumber: registrationNumber ?? this.registrationNumber,
      emailId: emailId ?? this.emailId,
      website: website ?? this.website,
      updatedAt: updatedAt ?? this.updatedAt,
      storePath: storePath != null ? storePath() : this.storePath,
    );
  }

  /// Copies This Model With Path Included
  ///
  /// `path` : [String] Path of the document in firebase
  CompanyProfileData copyWithPath({String? path}) {
    if (path == null) return this;
    return copyWith(storePath: () => path);
  }

  /// Convert To [UserProfileData] From Json
  /// `path` : [String?] is the path of the UserDataProfile doc in Firebase
  factory CompanyProfileData.fromJson(Map<String, dynamic> json,
          {String? path}) =>
      _$CompanyProfileDataFromJson(json).copyWithPath(path: path);

  /// Convert To Json Format
  Map<String, dynamic> toJson() => _$CompanyProfileDataToJson(this);
}
