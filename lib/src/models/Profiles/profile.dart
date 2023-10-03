import 'package:auth/src/models/Profiles/company_profile_data.dart';
import 'package:auth/src/models/Profiles/user_job_profile.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:auth/src/constants/constants.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  final ProfileType type;
  final String uid;

  const Profile({
    required this.type,
    required this.uid,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    final profile = _$ProfileFromJson(json);

    switch (profile.type) {
      case ProfileType.company:
        return CompanyProfileData.fromJson(json);
      case ProfileType.user:
        return UserJobProfile.fromJson(json);
    }
  }

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
