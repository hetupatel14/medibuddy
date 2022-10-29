import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medibuddy/models/laboratories.dart';

class LaboratoryService {
  // collection reference
  final CollectionReference laboratoryCollection =
      FirebaseFirestore.instance.collection('laboratories');

  //doctors' list from snapshot
  List<Laboratories> _laboratoryListfromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Laboratories(
        name: doc.get('name') ?? "",
        location: doc.get('location') ?? "",
        rating: doc.get('rating') ?? "",
        specialities: doc.get('specialities') ?? "",
        homeTestAvailable: doc.get('homeTestAvailable') ?? "No",
        phoneNumber: doc.get('phoneNumber') ?? "",
        tests: doc.get('tests') ?? [],
      );
    }).toList();
  }

  //get hospitals stream
  Stream<List<Laboratories>> get laboratories {
    return laboratoryCollection.snapshots().map(_laboratoryListfromSnapshot);
  }
}
