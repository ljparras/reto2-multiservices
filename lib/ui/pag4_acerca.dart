import 'package:flutter/material.dart';

class pag4_acerca extends StatefulWidget {
  const pag4_acerca({super.key});

  @override
  State<pag4_acerca> createState() => _pag4_acercaState();
}

class _pag4_acercaState extends State<pag4_acerca> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child:  ListTile(
                leading: Icon(Icons.school),
                title: Text("Grupo  No 5 "),
                subtitle: Text("Uninorte"),
              ),
            ),

            Card(
              child:  ListTile(
                leading: Icon(Icons.person),
                title: Text("Jorge Lizcano"),
                subtitle: Text("Nombre"),
              ),
            ),
            Card(
              child:  ListTile(
                leading: Icon(Icons.person),
                title: Text("Viviana Barriga"),
                subtitle: Text("Nombre"),
              ),
            ),

            Card(
              child:  ListTile(
                leading: Icon(Icons.person),
                title: Text("Jose Luis Parra"),
                subtitle: Text("Nombre"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}