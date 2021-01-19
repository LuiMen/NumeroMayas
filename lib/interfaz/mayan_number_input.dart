import 'package:conversor_numeros_mayas/aplicacion/bloc_play_room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../aplicacion/bloc_mayan_input.dart';
import '../aplicacion/estadomayaninput.dart';
import '../dominio/mayan_number.dart';
import 'mayan_numbers_widgets.dart';

class MayanNumberInput extends StatelessWidget {
  MayanNumberInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocMayanInput, EstadoMayanInput>(
      builder: (context, estadoMayan) {
        return Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  for (Map<MayanNumbers, int> i in estadoMayan.niveles)
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return GestureDetector(
                            onTap: () {
                              BlocProvider.of<BlocMayanInput>(context)
                                  .seleccionar(index);
                            },
                            child: MayanNumberContainerForEdit(
                                map: i, isFirst: index == 0),
                          );
                        },
                        childCount: 1,
                      ),
                    ),
                ],
              ),
            ),
            Material(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          padding: EdgeInsets.all(0),
                          icon: Icon(Icons.add),
                          onPressed: () {
                            BlocProvider.of<BlocMayanInput>(context)
                                .agregarNivel();
                            BlocProvider.of<BlocPlayRoom>(context).notificar();
                          },
                        ),
                        Text(
                          'Agregar Nivel',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          padding: EdgeInsets.all(0),
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            BlocProvider.of<BlocMayanInput>(context)
                                .eliminarNivel();
                            BlocProvider.of<BlocPlayRoom>(context)
                                .marcarSinContestar();
                            BlocProvider.of<BlocPlayRoom>(context).notificar();
                          },
                        ),
                        Text(
                          'Borrar Nivel',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * (1 / 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: getMayanNumbersButtons(context),
              ),
            ),
          ],
        );
      },
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      width: 3,
      color: Colors.brown,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  );
}

List<Widget> getMayanNumbersButtons(BuildContext context) {
  var numbersButtons = <Widget>[];
  numbersButtons.add(Material(
    child: Center(
      child: Ink(
        decoration: ShapeDecoration(
          color: Colors.grey,
          shape: CircleBorder(),
        ),
        child: SizedBox(
          height: 80,
          width: 80,
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Image.asset(
              'assets/cero_maya.png',
              height: 50,
            ),
            onPressed: () {},
          ),
        ),
      ),
    ),
  ));
  numbersButtons.add(Material(
    child: Center(
      child: Ink(
        decoration: ShapeDecoration(
          color: Colors.grey,
          shape: CircleBorder(),
        ),
        child: SizedBox(
          height: 80,
          width: 80,
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Image.asset(
              'assets/uno_maya.png',
              height: 15,
            ),
            onPressed: () {
              BlocProvider.of<BlocMayanInput>(context).agregarUno();
              BlocProvider.of<BlocPlayRoom>(context).notificar();
            },
          ),
        ),
      ),
    ),
  ));
  numbersButtons.add(Material(
    child: Center(
      child: Ink(
        decoration: ShapeDecoration(
          color: Colors.grey,
          shape: CircleBorder(),
        ),
        child: SizedBox(
          height: 80,
          width: 80,
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Image.asset(
              'assets/cinco_maya.png',
              height: 15,
            ),
            onPressed: () {
              BlocProvider.of<BlocMayanInput>(context).agregarCinco();
              BlocProvider.of<BlocPlayRoom>(context).notificar();
            },
          ),
        ),
      ),
    ),
  ));
  return numbersButtons;
}

Widget _buildPopupDialog(
    BuildContext context, String title, List<Widget> content) {
  return AlertDialog(
    title: Text(
      title,
      textAlign: TextAlign.center,
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: content,
    ),
    actions: <Widget>[
      FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Cerrar'),
      ),
    ],
  );
}
