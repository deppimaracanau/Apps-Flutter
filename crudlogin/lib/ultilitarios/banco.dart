import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('notes');

class Banco {
  static String? userUid;

  static Future<void> addItem({
    required String title,
    required String description,
  }) async {
    DocumentReference documentReferencer =
    _mainCollection.doc(userUid).collection('itens').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "titulo": title,
      "descrição": description,
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => debugPrint("item adicionado ao banco"))
        .catchError((e) => debugPrint(e));
  }

  static Future<void> updateItem({
    required String title,
    required String description,
    required String docId,
  }) async {
    DocumentReference documentReferencer =
    _mainCollection.doc(userUid).collection('itens').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "titulo": title,
      "descrição": description,
    };

    await documentReferencer
        .update(data)
        .whenComplete(() => debugPrint("atualizado itens no banco"))
        .catchError((e) => debugPrint(e));
  }

  static Stream<QuerySnapshot> readItems() {
    CollectionReference notesItemCollection =
    _mainCollection.doc(userUid).collection('itens');

    return notesItemCollection.snapshots();
  }

  static Future<void> deleteItem({
    required String docId,
  }) async {
    DocumentReference documentReferencer =
    _mainCollection.doc(userUid).collection('itens').doc(docId);

    await documentReferencer
        .delete()
        .whenComplete(() => debugPrint('Item deletado no banco'))
        .catchError((e) => debugPrint(e));
  }
}