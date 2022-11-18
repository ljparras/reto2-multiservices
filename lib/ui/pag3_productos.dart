import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiservices/controlador/control_general.dart';

class pag3_productos extends StatefulWidget {
  const pag3_productos({super.key});

  @override
  State<pag3_productos> createState() => _pag3_productosState();
}

class _pag3_productosState extends State<pag3_productos> {
  control_general control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: control.prod.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image(image: NetworkImage(control.prod[index].iamgen)),
                title: Text(control.prod[index].Nombre),
                subtitle: Text("Precio: " + control.prod[index].precio.toString() + 
                " | Cantidad: " + control.prod[index].cantidad.toString()),
                trailing: Text((control.prod[index].cantidad * control.prod[index].precio).toString()),
              );
            },
            ),
        ),
        Text("Total a pagar: " + control.totalpagar().toString(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        ElevatedButton.icon(onPressed: (){
          control.comprarr();
          control.prod.refresh();
          control.cambioMenu(0);
        }, icon: Icon(Icons.save), label: Text("Comprar"))
      ],
    ),);
  }
}