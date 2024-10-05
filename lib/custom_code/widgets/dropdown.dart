// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
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

class Dropdown extends StatefulWidget {
  const Dropdown({
    super.key,
    this.width,
    this.height,
    required this.companyList,
    // Removed onCompanySelected to avoid errors
  });

  final double? width;
  final double? height;
  final List<CompanyRecord> companyList;

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  CompanyRecord? selectedCompany;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 300,
      height: widget.height ?? 44,
      padding: const EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<CompanyRecord>(
          value: selectedCompany,
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24,
          ),
          hint: Text(
            'Please select...',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0,
                ),
          ),
          items: widget.companyList.map((company) {
            return DropdownMenuItem<CompanyRecord>(
              value: company,
              child: Text(company
                  .companyName), // Assuming CompanyRecord has a 'companyName' field
            );
          }).toList(),
          onChanged: (CompanyRecord? company) {
            setState(() {
              selectedCompany = company;
            });

            // Update the global singleton with the selected company
            SelectedCompanyManager().selectedCompany = company;
          },
        ),
      ),
    );
  }

  CompanyRecord? getSelectedCompany() {
    return selectedCompany;
  }
}
