import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _dietCollection = _firestore.collection('My Diet');

class MyDietDatabase {
  static String? uid;

  /// Add Item
  static Future<void> addItem({
    required String name,
    required double weight,
    required double kcal,
  }) async {
    DocumentReference documentReferencer =
    _dietCollection.doc(uid).collection('items').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "name": name,
      "weight": weight,
      "kcal": kcal,
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => print("Note item added to the database"))
        .catchError((e) => print(e));
  }

  /// Update Item
  static Future<void> updateItem({
    required String name,
    required double weight,
    required double kcal,
    required String docId,
  }) async {
    DocumentReference documentReferencer =
    _dietCollection.doc(uid).collection('items').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "name": name,
      "weight": weight,
      "kcal": kcal,
    };

    await documentReferencer
        .update(data)
        .whenComplete(() => print("Note item updated in the database"))
        .catchError((e) => print(e));
  }

  /// Read Item
  static Stream<QuerySnapshot> readItems() {
    CollectionReference notesItemCollection =
    _dietCollection.doc(uid).collection('items');

    return notesItemCollection.snapshots();
  }

  /// Delete Item
  static Future<void> deleteItem({
    required String docId,
  }) async {
    DocumentReference documentReferencer =
    _dietCollection.doc(uid).collection('items').doc(docId);

    await documentReferencer
        .delete()
        .whenComplete(() => print('Note item deleted from the database'))
        .catchError((e) => print(e));
  }
}