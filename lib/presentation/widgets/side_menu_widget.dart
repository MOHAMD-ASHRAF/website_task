


import 'package:flutter/material.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 150 ,
      width: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff2874A6),
            Color(0xffbfcccf),
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
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.add),
              title: Text('add locker',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('mange locker',style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.remove_red_eye_outlined),
              title: Text('veiw locker',style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      )
    );
  }
}