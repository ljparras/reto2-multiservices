import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiservices/controlador/control_general.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

control_general control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
               decoration: BoxDecoration(color: Colors.teal),
              child: UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg"),),
          
              accountName: Text("MultiServices"),
               accountEmail: Text("multi@hotmail.com"))),
          Divider(),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Inicio"),
            trailing:  Icon(Icons.arrow_circle_down),
            onTap: () {
              control.cambioMenu(0);
              Navigator.pop(context);
            },
          ), 
          ListTile(
            leading: Icon(Icons.store),
            title: Text("Tienda"),
            trailing:  Icon(Icons.arrow_circle_down),
            onTap: () {
              control.cambioMenu(1);
              Navigator.pop(context);
            },
          ),  

          ListTile(
            leading: Icon(Icons.shopify),
            title: Text("Productos"),
            trailing:  Icon(Icons.arrow_circle_down),
            onTap: () {
              control.cambioMenu(2);
              Navigator.pop(context);
            },
          ),   
        ListTile(
            leading: Icon(Icons.person),
            title: Text("Acerca de"),
            trailing:  Icon(Icons.arrow_circle_down),
            onTap: () {
              control.cambioMenu(3);
              Navigator.pop(context);
            },
          ),  
          ],
          ),
          ),
    );
  }
}