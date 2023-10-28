import 'package:flutter/material.dart';
import 'package:website_task/presentation/pages/mobile_page.dart';
import 'package:website_task/presentation/pages/web_page.dart';
import 'package:website_task/util/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayOut(mobileBody: MobileBody(), webBody: WebBody(),

      ),
    );
  }
}
