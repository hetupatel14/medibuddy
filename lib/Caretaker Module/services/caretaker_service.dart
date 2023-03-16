import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/caretakers.dart';

class CaretakerService {
  // collection reference
  final CollectionReference caretakerCollection =
      FirebaseFirestore.instance.collection('caretakers');

  //doctors' list from snapshot
  List<Caretakers> _caretakerListfromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Caretakers(
        name: doc.get('name') ?? "",
        degree: doc.get('degree') ?? "",
        rating: doc.get('rating') ?? "",
        email: doc.get('email') ?? "",
        phoneNumber: doc.get('phoneNumber') ?? "",
      );
    }).toList();
  }

  //get caretakers stream
  Stream<List<Caretakers>> get caretakers {
    return caretakerCollection.snapshots().map(_caretakerListfromSnapshot);
  }
}
