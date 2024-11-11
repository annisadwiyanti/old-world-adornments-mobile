import 'package:flutter/material.dart';
import 'package:old_world_adornments/widgets/left_drawer.dart';

class AdornmentsEntryFormPage extends StatefulWidget {
  const AdornmentsEntryFormPage({super.key});

  @override
  State<AdornmentsEntryFormPage> createState() => _AdornmentsEntryFormPageState();
}

class _AdornmentsEntryFormPageState extends State<AdornmentsEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";
  String _size = "";
  String _color = "";
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New Adornment',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextInputField(
                label: "Name",
                onChanged: (value) => _name = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name cannot be empty!";
                  }
                  return null;
                },
              ),
              _buildTextInputField(
                label: "Description",
                onChanged: (value) => _description = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Description cannot be empty!";
                  }
                  return null;
                },
              ),
              _buildNumberInputField(
                label: "Price",
                onChanged: (value) => _price = int.tryParse(value) ?? 0,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Price cannot be empty!";
                  }
                  final parsedValue = int.tryParse(value);
                  if (parsedValue == null || parsedValue <= 0) {
                    return "Price must be a positive number!";
                  }
                  return null;
                },
              ),
              _buildTextInputField(
                label: "Size",
                onChanged: (value) => _size = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Size cannot be empty!";
                  }
                  return null;
                },
              ),
              _buildTextInputField(
                label: "Color",
                onChanged: (value) => _color = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Color cannot be empty!";
                  }
                  return null;
                },
              ),
              _buildNumberInputField(
                label: "Quantity",
                onChanged: (value) => _quantity = int.tryParse(value) ?? 0,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Quantity cannot be empty!";
                  }
                  final parsedValue = int.tryParse(value);
                  if (parsedValue == null || parsedValue <= 0) {
                    return "Quantity must be a positive number!";
                  }
                  return null;
                },
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD1AEA4),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Item saved successfully'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Name: $_name'),
                                    Text('Price: $_price'),
                                    Text('Description: $_description'),
                                    Text('Size: $_size'),
                                    Text('Color: $_color'),
                                    Text('Quantity: $_quantity'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: const Color(0xFFD1AEA4),
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  ),
                                  child: const Text('OK', style: TextStyle(fontSize: 16)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _formKey.currentState!.reset();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text("Save", style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextInputField({
    required String label,
    int? maxLength,
    required ValueChanged<String> onChanged,
    required String? Function(String?) validator,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD1AEA4)),
          ),
        ),
        maxLength: maxLength,
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }

  Widget _buildNumberInputField({
    required String label,
    required ValueChanged<String> onChanged,
    required String? Function(String?) validator,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD1AEA4)),
          ),
        ),
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}
