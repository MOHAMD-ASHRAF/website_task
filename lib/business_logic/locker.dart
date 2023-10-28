import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Locker extends ChangeNotifier {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  List<QueryDocumentSnapshot> dataList = [];

  addLocker({required String lockerId,
      required String location,
      required String numOfCells}) async {
    try {
      await users.add({
        'lockerId': lockerId,
        'location': location,
        'numOfCells': numOfCells,
      });
      print('add success');
      notifyListeners();
    } catch (error) {
      print("Failed to add user: $error");
    }
  }


  getLockerId() async{
          QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('users').get();
          dataList.addAll(querySnapshot.docs);
          notifyListeners();
          print(dataList);
  }
}
