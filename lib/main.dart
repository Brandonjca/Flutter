import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAlertWidget(),
    );
  }
}

class MyAlertWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brandon Caranqui - Alerta'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Alerta', style: TextStyle(color: Colors.red),),
                      backgroundColor: Colors.black,
                      content: Text('Esto es una alerta.', style: TextStyle(color: Colors.white),),
                      actions: [
                        TextButton(
                          child: Text('Cerrar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Mostrar alerta',
              style: TextStyle(color: Colors.white),),
              color: Colors.red,
              height: 50,
            ),
            SizedBox(height: 20),
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/000/180/396/original/vector-computer-software-engineers.png',
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
