enum Gender {
  male('Male'),

  female('Female');

  const Gender(this.genName);

  final String genName;
}

enum City {
  jammu('Jammu'),

  srinagar('Srinagar'),

  baramulla('Baramulla'),

  budgam('Budgam'),

  gulmarg('Gulmarg'),

  noida('Noida'),

  gurugram('GuruGram'),

  amritsar('Amritsar'),

  jaipur('Jaipur'),

  uttarpradesh('Uttar Pradesh');

  const City(this.cityName);

  final String cityName;
}

enum State {
  jammuandkashmir('Jammu And Kashmir'),

  delhi('Delhi'),

  haryana('Haryana'),

  punjab('Punjab'),

  rajasthan('Rajasthan'),

  uttarPradesh('UttarPradesh');

  const State(this.stateName);

  final String stateName;
}

enum AuthResultStatus {
  successful,

  emailAlreadyExists,

  wrongPassword,

  invalidEmail,

  userNotFound,

  userDisabled,

  operationNotAllowed,

  tooManyRequests,

  undefined,
}

enum JobCategory {
  chef('Chef'),

  cook('Cooks'),

  driver('Driver'),

  securityGuard('SecurityGuard');

  const JobCategory(this.jobName);

  final String jobName;
}

enum UserType {
  verficationAgency,

  jobSeeker,

  jobProvider,

  admin,

  staff,
}

enum VerficationStatus {
  verified,

  unverified
}

enum QualificationLevel {
  matric('10th Pass'),

  higherSecondary('12th Pass'),

  graduate('Graduate'),

  postGraduate('PostGraduate'),

  btech('B-Tech'),

  diploma('Diploma');

  const QualificationLevel(this.qualificationName);
  final String qualificationName;
}

enum Address {
  mainStreet,
  anotherStreet,
}

class AddressDetails {
  final String mainStreet;
  final String nearbyLocation;
  final String pincode;

  AddressDetails(this.mainStreet, this.nearbyLocation, this.pincode);
}

extension AddressDetailsExtension on Address {
  AddressDetails get details {
    switch (this) {
      case Address.mainStreet:
        return AddressDetails("Main Street", "Nearby Location", "10001");
      case Address.anotherStreet:
        return AddressDetails("Another Street", "Nearby Place", "20002");
    }
  }
}
