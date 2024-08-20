import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String _childName;

  void _addChild() {
    setState(() {
      Navigator.pushNamed(context, '/addChild');
    });
  }

@override
  void initState() {
    super.initState();
    _loadPreferences();
  }

    void _loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _childName = prefs.getString('childName') ?? '';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
              onPressed: _addChild, 
              child: const Text('Add Child'),
            ),
            ElevatedButton(
              onPressed: _addChild,
              child:  Text(_childName)
            )
          ],
        ), 
      ),
    );
  }

}