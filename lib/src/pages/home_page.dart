import 'package:basic_widgets/src/utils/icon_utils.dart';
import 'package:flutter/material.dart';

import 'package:basic_widgets/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          print("builder");
          print(snapshot.data);
          return ListView(children: _listItems(snapshot.data, context));
        });
  }
}

List<Widget> _listItems(List<dynamic>? snapshot, BuildContext context) {
  final List<Widget> options = [];

  snapshot?.forEach((el) {
    final temp = ListTile(
      title: Text(el["texto"]),
      subtitle: Text(el["ruta"]),
      leading: findIcon(el["icon"]),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueGrey),
      onTap: () {
        Navigator.pushNamed(context, el["ruta"]);
      },
    );
    options..add(temp)..add(Divider());
  });
  return options;
}
