import 'package:cloud_firestore/cloud_firestore.dart';
import 'bloodbanks.dart';

class BloodBankService {
  // collection reference
  final CollectionReference bloodBankCollection =
      FirebaseFirestore.instance.collection('bloodbanks');

  //doctors' list from snapshot
  List<BloodBanks> _bloodBankListfromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return BloodBanks(
        name: doc.get('name') ?? "",
        location: doc.get('location') ?? "",
        rating: doc.get('rating') ?? "",
        phoneNumber: doc.get('phoneNumber') ?? "",
        bloodGroupsAvailable: doc.get('bloodGroupsAvailable') ?? [],
      );
    }).toList();
  }

  //get hospitals stream
  Stream<List<BloodBanks>> get bloodbanks {
    return bloodBankCollection.snapshots().map(_bloodBankListfromSnapshot);
  }
}