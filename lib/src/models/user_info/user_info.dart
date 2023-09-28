import 'package:auth/src/constants/enums.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_info.g.dart';

@JsonSerializable(explicitToJson: true)
class UserInfo {
  final UserType userType;

  final VerficationStatus verificationStatus;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String? storePath;

  UserInfo(
      {required this.userType,
      required this.verificationStatus,
      required this.createdAt,
      required this.updatedAt,
      this.storePath});

  UserInfo copyWith({
    UserType? userType,
    VerficationStatus? verificationStatus,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? Function()? storePath,
  }) {
    return UserInfo(
      userType: userType ?? this.userType,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      storePath: storePath != null ? storePath() : this.storePath,
    );
  }

  /// Copies This Model With Path Included
  ///
  /// `path` : [String] Path of the document in firebase
  UserInfo copyWithPath({String? path}) {
    if (path == null) return this;
    return copyWith(storePath: () => path);
  }

  /// Convert To [UserDataModel] From Json
  /// `path` : [String?] is the path of the UserDataModel doc in Firebase
  factory UserInfo.fromJson(Map<String, dynamic> json, {String? path}) =>
      _$UserInfoFromJson(json).copyWithPath(path: path);

  /// Convert To Json Format
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
