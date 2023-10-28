import 'package:flutter/material.dart';
import 'package:website_task/business_logic/locker.dart';
import 'package:provider/provider.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    final locker = Provider.of<Locker>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        backgroundColor: Colors.green,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                  onPressed: () {
                    locker.addLocker(
                        lockerId: '555555', location: 'ahmed', numOfCells: 10);
                  },
                  child: Center(
                    child: Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                      child: const Center(child: Text('add')),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                  onPressed: () {
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
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, int index) {
                return Container(
                  width: 100,
                  height: 50,
                  child:  Text('${locker.dataList[index]['lockerId']}'),
                );
              },
              itemCount: locker.dataList.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 8);
              },
            ),
          ),
        ],
      ),
    );
  }
}
