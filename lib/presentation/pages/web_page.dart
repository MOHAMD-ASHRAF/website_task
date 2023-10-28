import 'package:flutter/material.dart';
import 'package:website_task/business_logic/locker.dart';
import 'package:provider/provider.dart';
import 'package:website_task/presentation/widgets/default_text_form_feild.dart';
import 'package:website_task/presentation/widgets/get_data_from_user.dart';
import 'package:website_task/presentation/widgets/header_web_page.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    final locker = Provider.of<Locker>(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff7D8A9B),
              Color(0xff959FAB),
              Color(0xffD3D3D3),
            ],
          ),
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
                  Container(
                    height: MediaQuery.of(context).size.height - 150 ,
                    width: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff9E9E9E),
                          Color(0xffD3D3D3),
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
                  ),
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
                            Color(0xff9E9E9E),
                            Color(0xffD3D3D3),
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
                      child:  const Row(
                        children: [
                          GetDataFromUser()
                        ],
                      ),
                    ),

                  ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     MaterialButton(
                  //         onPressed: () {
                  //           locker.addLocker(
                  //               lockerId: '555555', location: 'ahmed', numOfCells: 10);
                  //         },
                  //         child: Center(
                  //           child: Container(
                  //             color: Colors.green,
                  //             width: 100,
                  //             height: 100,
                  //             child: const Center(child: Text('add')),
                  //           ),
                  //         )),
                  //     const SizedBox(
                  //       height: 20,
                  //     ),
                  //     MaterialButton(
                  //         onPressed: () {
                  //           locker.getLockerId();
                  //         },
                  //         child: Center(
                  //           child: Container(
                  //             color: Colors.deepPurpleAccent,
                  //             width: 100,
                  //             height: 100,
                  //             child: const Center(child: Text('get')),
                  //           ),
                  //         )
                  //     ),
                  //   ],
                  // ),
                  // Expanded(
                  //   child: ListView.separated(
                  //     itemBuilder: (context, int index) {
                  //       return Container(
                  //         width: 100,
                  //         height: 50,
                  //         child:  Text('${locker.dataList[index]['lockerId']}'),
                  //       );
                  //     },
                  //     itemCount: locker.dataList.length,
                  //     separatorBuilder: (BuildContext context, int index) {
                  //       return const SizedBox(height: 8);
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




