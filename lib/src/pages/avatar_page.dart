import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Alert Page"),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("AL"),
              backgroundColor: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _createInput(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_outlined),
        backgroundColor: Colors.green[400],
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          counter: Text("Letters: ${_name.length}"),
          hintText: "Name of the person",
          labelText: "Name",
          helperText: "Just type your name",
          icon: Icon(Icons.person, color: Colors.green[400]),
          suffix: Icon(
            Icons.verified,
            color: Colors.blue,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          )),
      onChanged: (text) {
        setState(() {
          _name = text;
        });
      },
    );
  }
}
