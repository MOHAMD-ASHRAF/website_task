import 'package:flutter/material.dart';
import 'package:website_task/business_logic/locker.dart';
import 'package:provider/provider.dart';
import 'package:website_task/presentation/widgets/get_data_from_user.dart';
import 'package:website_task/presentation/widgets/header_web_page.dart';
import 'package:website_task/presentation/widgets/show_data_widget.dart';
import 'package:website_task/presentation/widgets/side_menu_widget.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    final locker = Provider.of<Locker>(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/image/backGround1.jpg'),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
               const HeaderWebPage(),
               SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
               Row(
                children: [
                  const SideMenuWidget(),
                  const SizedBox(width: 12,),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height - 150 ,
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
                      child:   Row(
                        children: [
                          GetDataFromUser(locker: locker),
                          const Spacer(),
                         ShowDataWidget(locker: locker)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}







