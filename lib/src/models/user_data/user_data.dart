import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable(explicitToJson: true)
class UserDataModel {
  UserDataModel({
    this.storePath,
    required this.uid,
    required this.phoneNumber,
    required this.createdAt,
    required this.updatedAt,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)

  /// `sotrePath` : [String] Path of the user's data document
  final String? storePath;

  /// `uid` : [String] Unique Id of the document
  final String uid;

  /// `phoneNumber` : [String] Phone Number of the document
  final String phoneNumber;

  /// `createdAt` : [DateTime] time when this document was created
  final DateTime createdAt;

  /// `updatedAt`: [DateTime] when the document was last updated
  final DateTime updatedAt;

  UserDataModel copyWith({
    String? uid,
    String? phoneNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? Function()? storePath,
  }) {
    return UserDataModel(
      updatedAt: updatedAt ?? this.updatedAt,
      uid: uid ?? this.uid,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      createdAt: createdAt ?? this.createdAt,
      storePath: storePath != null ? storePath() : this.storePath,
    );
  }

  /// Copies This Model With Path Included
  ///
  /// `path` : [String] Path of the document in firebase
  UserDataModel copyWithPath({String? path}) {
    if (path == null) return this;
    return copyWith(storePath: () => path);
  }

  /// Convert To [UserDataModel] From Json
  /// `path` : [String?] is the path of the UserDataModel doc in Firebase
  factory UserDataModel.fromJson(Map<String, dynamic> json, {String? path}) =>
      _$UserDataModelFromJson(json).copyWithPath(path: path);

  /// Convert To Json Format
  Map<String, dynamic> toJson() => _$UserDataModelToJson(this);
}
