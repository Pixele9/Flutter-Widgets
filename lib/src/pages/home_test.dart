import 'package:flutter/material.dart';

class HomeTest extends StatelessWidget {
  final data = ["Andres", "Ana María", "Vicky", "Jorge"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second App"),
      ),
      body: ListView(
        children: _createItems(),
      ),
      // body: ListView(children: [
      //   ...data.map((title) {
      //     return ListTile(title: Text(title));
      //   })
      // ])
    );
  }

  List<Widget> _createItems() {
    var names = data.map((name) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(name),
            subtitle: Text("Subtitle"),
            leading: Icon(Icons.person),
            onTap: () {
              print(name);
            },
          ),
          Divider()
        ],
      );
    });

    return [...names];
  }
}
