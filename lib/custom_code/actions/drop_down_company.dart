// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class SelectedCompanyManager {
  // Private constructor
  SelectedCompanyManager._internal();

  // Singleton instance
  static final SelectedCompanyManager _instance =
      SelectedCompanyManager._internal();

  // Factory constructor to return the same instance
  factory SelectedCompanyManager() {
    return _instance;
  }

  // The selected company record
  CompanyRecord? _selectedCompany;

  // Getter for the selected company
  CompanyRecord? get selectedCompany => _selectedCompany;

  // Setter for the selected company
  set selectedCompany(CompanyRecord? company) {
    _selectedCompany = company;
  }
}

Future<CompanyRecord?> dropDownCompany() async {
  // Retrieve the selected company from the singleton
  CompanyRecord? selectedCompany = SelectedCompanyManager().selectedCompany;

  // Return the selected company
  return selectedCompany;
}
