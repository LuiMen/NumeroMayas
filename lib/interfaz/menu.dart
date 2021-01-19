import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.brown,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/banner_maya.jpg'))),
            child: Text(
              'Numeración Maya',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.play_arrow,
              color: Colors.red,
            ),
            title: const Text('Ponerme a prueba'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
