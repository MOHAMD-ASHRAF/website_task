

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
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 3 ,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff9E9E95),
                  Color(0xffD3D381),
                ],
              ),
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context,index){
                return Text('${locker.dataList[index]['lockerId']}',style: const TextStyle(fontSize: 18),);
              },
              itemCount: locker.dataList.length,),
          ),
        ),
        const SizedBox(height: 18,),
        DefaultMaterialButton(
          width: 100,
          onPressed: () {
            locker.getLockerId();
          },
          text: 'scan',)
      ],
    );
  }
}
