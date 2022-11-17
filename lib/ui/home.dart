import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiservices/controlador/control_general.dart';
import 'package:multiservices/ui/menu.dart';
import 'package:multiservices/ui/pag2_tienda.dart';
import 'package:multiservices/ui/pag3_productos.dart';
import 'package:multiservices/ui/pag4_acerca.dart';
import 'package:multiservices/ui/pag_inicio.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MultiServices',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'MultiServices'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List pag = [
pag_inicio(),
pag2_tienda(), 
pag3_productos(), 
pag4_acerca()
];

class _MyHomePageState extends State<MyHomePage> {
  control_general control = Get.find();

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
   
        title: Text(widget.title),
      ),
      body: Obx(() => pag[control.posicionMenu]) ,
      drawer: menu(),



    
    );
  }
}
