import 'package:app_divisao/shared/models/base_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseRepository {
  FirebaseFirestore get firestere => FirebaseFirestore.instance;

  Future<String> create<T extends BaseModel>(T data) async {
    try {
      final response =
          await firestere.collection(data.collection).add(data.toMap());
      return response.id;
    } catch (e) {
      throw e;
    }
  }

  Future<List<Map<String, dynamic>>> where(
      {required String key,
      required String value,
      required String collection}) async {
    try {
      final response = await firestere
          .collection(collection)
          .where(key, isEqualTo: value)
          .get();
      return response.docs.map((e) => e.data()).toList();
    } catch (e) {
      throw e;
    }
  }

  update() {}
  Future<List<Map<String, dynamic>>> get(String collection) async {
    try {
      final response = await this.firestere.collection(collection).get();
      return response.docs.map((e) => e.data()).toList();
    } catch (e) {
      throw e;
    }
  }

  delete() {}

  firstWhere() {}
}
