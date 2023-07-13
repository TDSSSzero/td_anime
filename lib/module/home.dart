import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final Uri _url = Uri.parse("https://yuc.wiki");
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: _launchUrl, child: Text('test')),
      ),
    );
  }

  _launchUrl()async{
    await launchUrl(_url);
  }

}
