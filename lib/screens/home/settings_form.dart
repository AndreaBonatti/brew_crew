import 'package:brew_crew/shared/constants.dart';
import 'package:flutter/material.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  // form values
  late String _currentName;
  late String _currentSugars;
  late int _currentStrength;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Text(
            'Update your brew settings.',
            style: TextStyle(fontSize: 18.0),
          ),
          const SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration,
            validator: (val) => (val != null && val.isEmpty)  ? 'Please enter a name' : null,
            onChanged: (val) => setState(() => _currentName = val),
          ),
          const SizedBox(height: 10.0),
          DropdownButtonFormField<String>(
            items: sugars.map((sugar) {
              return DropdownMenuItem(
                value: sugar,
                child: Text("$sugar sugars"),
              );
            }).toList(),
            onChanged: (val) => setState(() => _currentSugars = val!),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            child: const Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              print(_currentName);
              print(_currentSugars);
              print(_currentStrength);
            },
            style: ElevatedButton.styleFrom(primary: Colors.pink[400]),
          ),
        ],
      ),
    );
  }
}
