import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final _formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Roll Dice'),
    ),
    body: Padding(padding: EdgeInsets.all(16),
    child: Form(
      key: _formState,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      TextFormField(decoration: const InputDecoration(hintText: 'Enter you email'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter you email';
        }
        return null;
      },
      ),
      TextFormField(decoration: const InputDecoration(hintText: 'Password'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter valid password';
        }
        return null;
      },
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(onPressed: () {
          if (_formState.currentState.validate()) {

          }},
          child: Text('Submit'),
        ),
      ),
      
    ],)),
    ),
  );
}