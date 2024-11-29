import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastrousuario_widget.dart' show CadastrousuarioWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastrousuarioModel extends FlutterFlowModel<CadastrousuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  String? _ageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for RGNumber widget.
  FocusNode? rGNumberFocusNode;
  TextEditingController? rGNumberTextController;
  final rGNumberMask = MaskTextInputFormatter(mask: '##.###.###-#');
  String? Function(BuildContext, String?)? rGNumberTextControllerValidator;
  // State field(s) for CPFNumber widget.
  FocusNode? cPFNumberFocusNode;
  TextEditingController? cPFNumberTextController;
  final cPFNumberMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cPFNumberTextControllerValidator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode;
  TextEditingController? dateOfBirthTextController;
  final dateOfBirthMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthTextControllerValidator;
  String? _dateOfBirthTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  Completer<List<UsuriosRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    ageTextControllerValidator = _ageTextControllerValidator;
    dateOfBirthTextControllerValidator = _dateOfBirthTextControllerValidator;
  }

  @override
  void dispose() {
    ageFocusNode?.dispose();
    ageTextController?.dispose();

    rGNumberFocusNode?.dispose();
    rGNumberTextController?.dispose();

    cPFNumberFocusNode?.dispose();
    cPFNumberTextController?.dispose();

    dateOfBirthFocusNode?.dispose();
    dateOfBirthTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
