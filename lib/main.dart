import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiservices/controlador/control_general.dart';
import 'package:multiservices/ui/home.dart';

void main() {
  Get.put(control_general());
  runApp(const MyApp());
}

