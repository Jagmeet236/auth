import 'package:json_annotation/json_annotation.dart';

import '../../constants/enums.dart';
part 'user_profile.g.dart';

@JsonSerializable(explicitToJson: true)
class UserProfile {
  final String name;

  final String phoneNumber;

  final String age;

  final Gender gender;

  final String email;

  final String photoUrl;

  final City city;

  final String? storePath;

  UserProfile(
      {required this.name,
      required this.phoneNumber,
      required this.age,
      required this.gender,
      required this.email,
      required this.photoUrl,
      required this.city,
      this.storePath});

  UserProfile copyWith({
    String? name,
    String? phoneNumber,
    String? age,
    Gender? gender,
    String? email,
    String? photoUrl,
    City? city,
    String? Function()? storePath,
  }) {
    return UserProfile(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      email: email ?? this.email,
      photoUrl: photoUrl ?? this.photoUrl,
      city: city ?? this.city,
      storePath: storePath != null ? storePath() : this.storePath,
    );
  }

  /// Copies This Model With Path Included
  ///
  /// `path` : [String] Path of the document in firebase
  UserProfile copyWithPath({String? path}) {
    if (path == null) return this;
    return copyWith(storePath: () => path);
  }

  /// Convert To [UserProfile] From Json
  /// `path` : [String?] is the path of the UserDataModel doc in Firebase
  factory UserProfile.fromJson(Map<String, dynamic> json, {String? path}) =>
      _$UserProfileFromJson(json).copyWithPath(path: path);

  /// Convert To Json Format
  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}
