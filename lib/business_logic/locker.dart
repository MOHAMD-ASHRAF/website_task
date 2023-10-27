import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Locker extends ChangeNotifier{
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  addLocker({required String lockerId,required String location,required double numOfCells})async{
    try{
      await users.add({
        'lockerId': lockerId,
        'location' : location,
        'numOfCells' : numOfCells,
      });
      print('add success');
      notifyListeners();
    }catch(error){
      print("Failed to add user: $error");
    }
  }
}