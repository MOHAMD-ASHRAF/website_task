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
            locker.addLocker(lockerId: '1111', location: 'arish', numOfCells: 10);
          },
          child: Center(
            child: Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
              child: const Center(child: Text('add')),
            ),
          ))
        ],
      ),
    );
  }
}
