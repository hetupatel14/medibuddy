import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medibuddy/models/patients.dart';

class PatientService {
  final String? uid;
  PatientService({this.uid});

  // collection reference
  final CollectionReference patientCollection =
      FirebaseFirestore.instance.collection('patients');

  Future<void> updateUserData(
      String name, String disease, String medicine, String phone) async {
    return await patientCollection.doc(uid).set({
      'name': name,
      'disease': disease,
      'medicines': medicine,
      'phone': phone,
    });
  }

  //brew list from snapshot
  List<Patients> _brewListfromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Patients(
        name: doc.get('name') ?? "",
        disease: doc.get('disease') ?? "",
        medicines: doc.get('medicines') ?? "",
        phone: doc.get('phone') ?? "",
      );
    }).toList();
  }

  //get patients stream
  Stream<List<Patients>> get patients {
    return patientCollection.snapshots().map(_brewListfromSnapshot);
  }
}
