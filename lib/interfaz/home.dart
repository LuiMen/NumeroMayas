import 'package:conversor_numeros_mayas/interfaz/play_room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: const Text('Numeración Maya'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Las reglas son simples. Si recibes un número Maya, tu respuesta debe ser su equivalente en números Arabigos. Si recibes números Arabigos, debes responder su equivalente en números Mayas.',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(builder: (context) => PlayRoom())),
              icon: const Icon(Icons.play_arrow, size: 22),
              label: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Empezar',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
