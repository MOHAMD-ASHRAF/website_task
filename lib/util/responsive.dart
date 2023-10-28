import 'package:flutter/material.dart';
import 'package:website_task/util/dimension.dart';

class ResponsiveLayOut extends StatelessWidget {
  final Widget mobileBody;
  final Widget webBody;
  const ResponsiveLayOut({super.key, required this.mobileBody, required this.webBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth <= mobileWidth){
        return mobileBody;
      } else{
        return webBody;
      }
    });
  }
}
