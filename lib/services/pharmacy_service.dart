import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medibuddy/models/pharamcies.dart';


class PharmacyService {
  // collection reference
  final CollectionReference pharmacyCollection =
      FirebaseFirestore.instance.collection('pharmacies');

  //doctors' list from snapshot
  List<Pharmacies> _PharmacyListfromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Pharmacies(
        name: doc.get('name') ?? "",
        location: doc.get('location') ?? "",
        rating: doc.get('rating') ?? "",
        phoneNumber: doc.get('phoneNumber') ?? "",
      );
    }).toList();
  }

  //get hospitals stream
  Stream<List<Pharmacies>> get pharmacies {
    return pharmacyCollection.snapshots().map(_PharmacyListfromSnapshot);
  }
}
