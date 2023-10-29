

import 'package:flutter/material.dart';
import 'package:website_task/business_logic/locker.dart';
import 'package:website_task/presentation/widgets/default_button.dart';

class ShowDataWidget extends StatelessWidget {
  const ShowDataWidget({
    super.key,
    required this.locker,
  });

  final Locker locker;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('List of Locker id',style: TextStyle(fontSize: 22,),),
        SizedBox(height: 12,),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 4 ,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context,index){
                return Center(child: Text('${locker.dataList[index]['lockerId']}',style: const TextStyle(fontSize: 18.5),));
              },
              itemCount: locker.dataList.length,),
          ),
        ),
        const SizedBox(height: 18,),
        DefaultMaterialButton(
          width: 100,
          onPressed: () {
            locker.dataList.clear();
            locker.getLockerId();
          },
          text: 'scan',)
      ],
    );
  }
}
