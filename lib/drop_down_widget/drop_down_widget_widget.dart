import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'drop_down_widget_model.dart';
export 'drop_down_widget_model.dart';

class DropDownWidgetWidget extends StatefulWidget {
  const DropDownWidgetWidget({super.key});

  @override
  State<DropDownWidgetWidget> createState() => _DropDownWidgetWidgetState();
}

class _DropDownWidgetWidgetState extends State<DropDownWidgetWidget> {
  late DropDownWidgetModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropDownWidgetModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'DropDownWidget'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CompanyRecord>>(
      stream: queryCompanyRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<CompanyRecord> dropDownWidgetCompanyRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final list = dropDownWidgetCompanyRecordList
                            .map((e) => e)
                            .toList();

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: list.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 12.0),
                          itemBuilder: (context, listIndex) {
                            final listItem = list[listIndex];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  listItem.companyName,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ].divide(const SizedBox(height: 20.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
