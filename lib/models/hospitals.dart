class Hospitals {
  final String name;
  final String location;
  final int rating;
  final String specialities;
  final String phoneNumber;
  final String roomsAvailable;
  final String emergencyOPDAvailable;

  Hospitals(
      {required this.name,
      required this.location,
      required this.rating,
      required this.specialities,
      required this.phoneNumber,
      required this.roomsAvailable,
      required this.emergencyOPDAvailable});
}
