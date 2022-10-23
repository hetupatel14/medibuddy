import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medibuddy/models/doctors.dart';

class DoctorService {
 

  // collection reference
  final CollectionReference doctorCollection =
      FirebaseFirestore.instance.collection('doctors');

  Future<void> updateDoctorData(
      String name, String specialization, String title, String email) async {
    print("recived DATA");
    return await doctorCollection.doc().set({
      'name': name,
      'specialization': specialization,
      'title': title,
      'email': email,
    });
  }

  //doctors' list from snapshot
  List<Doctors> _doctorListfromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Doctors(
        name: doc.get('name') ?? "",
        specialization: doc.get('specialization') ?? "",
        title: doc.get('title') ?? "",
        email: doc.get('email') ?? "",
      );
    }).toList();
  }

  //get doctors stream
  Stream<List<Doctors>> get doctors {
    return doctorCollection.snapshots().map(_doctorListfromSnapshot);
  }
}
