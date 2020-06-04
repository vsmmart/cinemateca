import 'package:flutter/material.dart';

class TelaSobre extends StatefulWidget {
  @override
  _TelaSobreState createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  TextEditingController ctrlTexto1 = TextEditingController();
  String texto1 = 'Este aplicativo foi desenvolvido como projeto para a disciplina de Programação para Dispositivos Móveis';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações sobre o aplicativo'),
        backgroundColor: Colors.deepPurple[600],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
             
           Container(
              padding: EdgeInsets.all(20),
              constraints: BoxConstraints.tightForFinite(),
              margin: EdgeInsets.all(20),
              child: TextField(                
                  controller: ctrlTexto1 ,
                  readOnly: true,
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Sobre',
                    icon: Icon(Icons.sort),),
                  onTap: (){
                    ctrlTexto1.text = texto1;
                  },
              ), 
            ),
            FlatButton(
              onPressed: (){ Navigator.pop(context);}, 
              color: Colors.deepPurple[600],
              textColor: Colors.white,
              child: Text('Voltar')),
          ],
        ),
      ),); 
    
  }
}