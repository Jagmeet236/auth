// import 'package:auth/auth.dart';
// import 'package:auth/src/constants/enums.dart';
// import 'package:test/test.dart'; // Import your UserProfile class

// void main() {
//   group('UserProfile', () {
//     test(
//         'CopyWith method should create a new UserProfile with the specified changes',
//         () {
//       final originalProfile = UserProfile(
//         fullName: 'harry',
//         phoneNumber: '123-456-7890',
//         age: '30',
//         gender: Gender.male,
//         email: 'johndoe@example.com',
//         photoUrl: 'https://example.com/potter.jpg',
//         city: City.srinagar,
//         storePath: 'users/harrypoter',
//       );

//       final updatedProfile = originalProfile.copyWith(
//         age: '31',
//         city: City.baramulla,
//       );

//       expect(updatedProfile.age, '31');
//       expect(updatedProfile.city, City.jammu);
//       expect(updatedProfile.fullName,
//           originalProfile.fullName); // Name should remain unchanged
//     });

//     test(
//         'CopyWithPath method should create a new UserProfile with the specified storePath',
//         () {
//       final profile = UserProfile(
//         fullName: 'harmoine',
//         phoneNumber: '987-654-3210',
//         age: '25',
//         gender: Gender.female,
//         email: 'granger@example.com',
//         photoUrl: 'https://example.com/harmonie.jpg',
//         city: City.budgam,
//       );

//       final updatedProfile = profile.copyWithPath(path: 'users/granger');

//       expect(updatedProfile.storePath, 'users/granger');
//     });

//     test(
//         'ToJson and FromJson methods should serialize and deserialize the UserProfile',
//         () {
//       final originalProfile = UserProfile(
//         fullName: 'Ron weasley',
//         phoneNumber: '555-123-4567',
//         age: '40',
//         gender: Gender.male,
//         email: 'ron@example.com',
//         photoUrl: 'https://example.com/ron.jpg',
//         city: City.gulmarg,
//       );

//       final json = originalProfile.toJson();
//       final deserializedProfile = UserProfile.fromJson(json, path: 'users/ron');

//       expect(deserializedProfile.name, originalProfile.fullName);
//       expect(deserializedProfile.phoneNumber, originalProfile.phoneNumber);
//       expect(deserializedProfile.age, originalProfile.age);
//       expect(deserializedProfile.gender, originalProfile.gender);
//       expect(deserializedProfile.email, originalProfile.email);
//       expect(deserializedProfile.photoUrl, originalProfile.photoUrl);
//       expect(deserializedProfile.city, originalProfile.city);
//       expect(deserializedProfile.storePath, 'users/ron');
//     });
//     group('UserDataModel', () {
//       test(
//           'CopyWith method should create a new UserDataModel with the specified changes',
//           () {
//         final originalData = UserDataModel(
//             uid: '122342',
//             phoneNumber: '919238283',
//             createdAt: DateTime.now(),
//             updatedAt: DateTime.now(),
//             storePath: 'users/12345');
//         final updatedData = originalData.copyWith(
//           phoneNumber: '555-123-4567',
//           updatedAt: DateTime.now().add(Duration(hours: 1)),
//         );
//         expect(updatedData.phoneNumber, '555-123-4567');
//         expect(updatedData.updatedAt.isAfter(originalData.updatedAt), true);
//         expect(
//             updatedData.uid, originalData.uid); // UID should remain unchanged
//       });
//     });
//   });
// }
