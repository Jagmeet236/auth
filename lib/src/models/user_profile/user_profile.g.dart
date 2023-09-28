// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      age: json['age'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      email: json['email'] as String,
      photoUrl: json['photoUrl'] as String,
      city: $enumDecode(_$CityEnumMap, json['city']),
      storePath: json['storePath'] as String?,
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'age': instance.age,
      'gender': _$GenderEnumMap[instance.gender]!,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'city': _$CityEnumMap[instance.city]!,
      'storePath': instance.storePath,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

const _$CityEnumMap = {
  City.jammu: 'jammu',
  City.srinagar: 'srinagar',
  City.baramulla: 'baramulla',
  City.budgam: 'budgam',
  City.gulmarg: 'gulmarg',
  City.noida: 'noida',
  City.gurugram: 'gurugram',
  City.amritsar: 'amritsar',
  City.jaipur: 'jaipur',
  City.uttarpradesh: 'uttarpradesh',
};
