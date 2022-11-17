import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiservices/controlador/control_general.dart';

class pag2_tienda extends StatefulWidget {
  const pag2_tienda({super.key});

  @override
  State<pag2_tienda> createState() => _pag2_tiendaState();
}

class _pag2_tiendaState extends State<pag2_tienda> {

control_general control = Get.find();


  @override
  Widget build(BuildContext context) {
    return Obx (() =>  Container(
      child: ListView.builder(
        itemCount: control.prod.length,
        itemBuilder: (BuildContext context, int index) {
          return  ListTile(
            leading: Image(image: NetworkImage(control.prod[index].iamgen),),
            title:  Text(control.prod[index].Nombre+ " | " + control.prod[index].precio.toString()),
            trailing: Text(control.prod[index].cantidad.toString()),
            );
        },
      ),
    ));
  }
}