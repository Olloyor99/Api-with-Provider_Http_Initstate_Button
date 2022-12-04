import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../my_provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final watch = context.watch<UserProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("API with HTTP"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount:watch. mylist.length,
            itemBuilder: (context, index) {
              return Text(watch.mylist[0].toString());
            }),
      ),
      // floatingActionButton: FloatingActionButton(
      //     child: const Icon(Icons.refresh),
      //     onPressed: () async {
      //       mylist = await MyService.getUsers();
      //       setState(() {});
      //     }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          watch.getUsers();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
