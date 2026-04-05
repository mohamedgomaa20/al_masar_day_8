import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:al_masar_day_8/features/home/data/models/property_data_class.dart';

class FirestoreServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<PropertyDataClass>> getProperties() async {
    final snapshot = await _firestore.collection('properties').get();

    return snapshot.docs.map((doc) {
      return PropertyDataClass.fromJson(doc.data());
    }).toList();
  }

  Future<List<PropertyDataClass>> getFeaturedProperties() async {
    final snapshot = await _firestore
        .collection('properties')
        .where('isFeatured', isEqualTo: true)
        .get();

    return snapshot.docs.map((doc) {
      return PropertyDataClass.fromJson(doc.data());
    }).toList();
  }

  Stream<List<PropertyDataClass>> streamProperties() {
    return _firestore.collection('properties').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return PropertyDataClass.fromJson(doc.data());
      }).toList();
    });
  }
}
