// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:expressions/expressions.dart';

Future<String> evaluarResultado(String resultado) async {
  // Add your function code here!
  // Parse expression:
  var expression = Expression.parse(resultado);

  // Create context containing all the variables and functions used in the expression
  var context = <String, dynamic>{};

  // Evaluate expression
  final evaluator = const ExpressionEvaluator();
  var r = evaluator.eval(expression, context);

  return (double.parse((r).toStringAsFixed(2))).toString();
}
