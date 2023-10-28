

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website_task/business_logic/locker.dart';
import 'package:website_task/presentation/widgets/default_button.dart';
import 'package:website_task/presentation/widgets/default_text_form_feild.dart';

class GetDataFromUser extends StatelessWidget {
   GetDataFromUser({
    super.key,
  });


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController lockerController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final locker = Provider.of<Locker>(context);
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              const Text('Locker Id',style: TextStyle(fontSize: 18),),
              const SizedBox(width: 8,),
              DefaultTextFormFeild(height: 50,controller: lockerController),
            ],
          ),
          Row(
            children: [
              const Text('Location',style: TextStyle(fontSize: 18),),
              const SizedBox(width: 8,),
              DefaultTextFormFeild(height: 50,controller: locationController,),
            ],
          ),
          Row(
            children: [
              const Text('Number',style: TextStyle(fontSize: 18),),
              const SizedBox(width: 8,),
              DefaultTextFormFeild(height: 50, controller: numberController,),
            ],
          ),

          DefaultMaterialButton(
            width: 100,
            onPressed: () {
              locker.addLocker(
                  lockerId: lockerController.text, location: locationController.text, numOfCells: numberController.text);
            },
            text: 'Save',)
        ],
      ),
    );
  }
}