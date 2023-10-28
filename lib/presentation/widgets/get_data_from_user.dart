

import 'package:flutter/material.dart';
import 'package:website_task/presentation/widgets/default_text_form_feild.dart';

class GetDataFromUser extends StatelessWidget {
  const GetDataFromUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            const Text('Locker Id',style: TextStyle(fontSize: 18),),
            const SizedBox(width: 8,),
            DefaultTextFormFeild(height: 50,),
          ],
        ),
        Row(
          children: [
            const Text('Location',style: TextStyle(fontSize: 18),),
            const SizedBox(width: 8,),
            DefaultTextFormFeild(height: 50,),
          ],
        ),
        Row(
          children: [
            const Text('Number',style: TextStyle(fontSize: 18),),
            const SizedBox(width: 8,),
            DefaultTextFormFeild(height: 50,),
          ],
        )
      ],
    );
  }
}