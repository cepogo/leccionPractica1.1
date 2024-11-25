import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/seconds_calculator.dart';
import 'pages/triangle_area.dart';
import 'pages/par_checker.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeScreen(),
  '/seconds-calculator': (context) => SecondsCalculator(),
  '/triangle-area': (context) => TriangleArea(),
  '/par-checker': (context) => ParChecker(),
};
