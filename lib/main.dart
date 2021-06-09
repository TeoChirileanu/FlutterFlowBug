import 'package:flutter/material.dart';
import 'package:github_integration_bug/home_page/home_page_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GithubIntegrationBug',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePageWidget(),
    );
  }
}
