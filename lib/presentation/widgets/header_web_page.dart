

import 'package:flutter/material.dart';
import 'package:website_task/presentation/widgets/default_text_form_feild.dart';

class HeaderWebPage extends StatelessWidget {
  const HeaderWebPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 14,
      width: MediaQuery.of(context).size.width / 1,
      child:  Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.height / 3,
            child: const ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/image/profile_image.jpg'),
              ),
              title: Text('Mohamed ashraf',style: TextStyle(color: Colors.white,fontSize: 16),),
              subtitle: Text('Admin',style: TextStyle(color: Colors.white,fontSize: 12),),
            ),
          ),
          const SizedBox(width: 18,),
          DefaultTextFormFeild(hintText: 'search',),
          const Spacer(),
          const Icon(Icons.add_alert_sharp,size: 24,color: Colors.white,),
          const SizedBox(width: 12,),
          const Icon(Icons.person,size: 24,color: Colors.white,),
        ],
      ),
    );
  }
}