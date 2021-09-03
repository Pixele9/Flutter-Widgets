import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _card1(),
          SizedBox(
            height: 20.0,
          ),
          _card2(),
        ],
      ),
    );
  }

  Widget _card1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.red[600]),
            title: Text("Card Titlte"),
            subtitle: Text("Subtitle"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () => {}, child: Text("Cancel")),
              TextButton(onPressed: () => {}, child: Text("Ok")),
            ],
          )
        ],
      ),
    );
  }

  Widget _card2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
              placeholder: AssetImage("assets/loading.gif"),
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1630573577896-04e7c5b7fe33?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")),
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(20.0),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26, blurRadius: 4.0, offset: Offset(0, 2.0)),
          ]),
    );
    // return Card(
    //   child: Column(
    //     children: <Widget>[
    //       FadeInImage(
    //           placeholder: AssetImage("asssets/loading.gif"),
    //           image: NetworkImage(
    //               "https://images.unsplash.com/photo-1630573577896-04e7c5b7fe33?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"))
    //     ],
    //   ),
    // );
  }
}
