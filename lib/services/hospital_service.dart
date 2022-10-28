import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/hospitals.dart';

class HospitalService {
  // collection reference
  final CollectionReference hospitalCollection =
      FirebaseFirestore.instance.collection('hospitals');

  //doctors' list from snapshot
  List<Hospitals> _hospitalListfromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Hospitals(
        name: doc.get('name') ?? "",
        location: doc.get('location') ?? "",
        rating: doc.get('rating') ?? "",
        specialities: doc.get('specialities') ?? "",
        roomsAvailable: doc.get('roomsAvailable') ?? "No",
        phoneNumber: doc.get('phoneNumber') ?? "",
        emergencyOPDAvailable: doc.get('emergencyOPDAvailable') ?? "No",
      );
    }).toList();
  }

  //get hospitals stream
  Stream<List<Hospitals>> get hospitals {
    return hospitalCollection.snapshots().map(_hospitalListfromSnapshot);
  }
}
