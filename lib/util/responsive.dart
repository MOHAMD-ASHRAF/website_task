import 'package:flutter/material.dart';
import 'package:website_task/util/dimension.dart';

class ResponsiveLayOut extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget webBody;

  const ResponsiveLayOut({super.key, required this.mobileBody, required this.webBody, required this.tabletBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth >= webWidth){
        return webBody;
      } else if(constraints.maxWidth >= tabletWidth ){
        return tabletBody;
      }else{
        return mobileBody;
      }
    });
  }
}
