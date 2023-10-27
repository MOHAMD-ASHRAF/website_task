import 'package:flutter/material.dart';
import 'package:website_task/business_logic/locker.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final locker = Provider.of<Locker>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(onPressed: (){
            locker.addLocker(lockerId: '555555', location: 'ahmed', numOfCells: 10);
          },
            child: Center(
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
              child: const Center(child: Text('add')),
            ),
          )),
               SizedBox(height: 20,),
          MaterialButton(onPressed: (){
            locker.getLockerId();
          },
              child: Center(
                child: Container(
                  color: Colors.deepPurpleAccent,
                  width: 100,
                  height: 100,
                  child: const Center(child: Text('get')),
                ),
              ))
        ],
      ),
    );
  }
}
