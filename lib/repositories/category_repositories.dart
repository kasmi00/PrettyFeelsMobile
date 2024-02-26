import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/category_model.dart';
import '../models/user_model.dart';
import '../services/firebase_service.dart';

class CategoryRepository {
  CollectionReference<CategoryModel> categoryRef =
      FirebaseService.db.collection("categories").withConverter<CategoryModel>(
            fromFirestore: (snapshot, _) {
              return CategoryModel.fromFirebaseSnapshot(snapshot);
            },
            toFirestore: (model, _) => model.toJson(),
          );
  Future<List<QueryDocumentSnapshot<CategoryModel>>> getCategories() async {
    try {
      var data = await categoryRef.get();
      bool hasData = data.docs.isNotEmpty;
      if (!hasData) {
        makeCategory().forEach((element) async {
          await categoryRef.add(element);
        });
      }
      final response = await categoryRef.get();
      var category = response.docs;
      return category;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<DocumentSnapshot<CategoryModel>> getCategory(String categoryId) async {
    try {
      print(categoryId);
      final response = await categoryRef.doc(categoryId).get();
      return response;
    } catch (e) {
      rethrow;
    }
  }

  List<CategoryModel> makeCategory() {
    return [
      CategoryModel(
          categoryName: "Press On",
          status: "active",
          imageUrl:
              "5.imimg.com/data5/SELLER/Default/2023/4/302728285/ZH/WS/BR/69896726/mobile-phone-accessories.png"),
      CategoryModel(
          categoryName: "Glue",
          status: "active",
          imageUrl:
              "https://i2-prod.dailyrecord.co.uk/incoming/article25217715.ece/ALTERNATES/s615/0_Daily-Record-Road-Record.jpg"),
      CategoryModel(
          categoryName: "Tape glue",
          status: "active",
          imageUrl:
              "https://www.techprevue.com/wp-content/uploads/2016/05/online-apparel-business.jpg"),
      CategoryModel(
          categoryName: "nail tips",
          status: "active",
          imageUrl:
              "https://i2.wp.com/d3d2ir91ztzaym.cloudfront.net/uploads/2020/07/computer-peripherals.jpeg"),
      CategoryModel(
          categoryName: "filer",
          status: "active",
          imageUrl:
              "https://img.texasmonthly.com/2013/04/ESSENTIALS_680X382.jpg"),
    ];
  }
}
