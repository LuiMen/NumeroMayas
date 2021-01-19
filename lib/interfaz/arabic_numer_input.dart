import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../aplicacion/bloc_arabic_input.dart';
import '../aplicacion/estadoarabicinput.dart';

class ArabicNumberInput extends StatelessWidget {
  const ArabicNumberInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocArabicInput, EstadoArabicInput>(
      builder: (context, estadoArabic) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * (3 / 4),
                  decoration: myBoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      estadoArabic.respuesta,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 5,
                ),
                IconButton(
                  icon: const Icon(Icons.backspace),
                  color: Colors.brown,
                  onPressed: () {
                    BlocProvider.of<BlocArabicInput>(context).borrar();
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: getArabicNumbersButtons(0, 4, context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: getArabicNumbersButtons(5, 9, context),
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
    borderRadius: const BorderRadius.all(
      Radius.circular(5),
    ),
  );
}

List<Widget> getArabicNumbersButtons(int from, int to, BuildContext context) {
  final numbersButtons = <Widget>[];
  for (var i = from; i < to + 1; i++) {
    numbersButtons.add(Material(
      color: Colors.transparent,
      child: Center(
        child: Ink(
          decoration: const ShapeDecoration(
            color: Colors.brown,
            shape: CircleBorder(),
          ),
          child: SizedBox(
            height: 50,
            width: 50,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              icon: Text(
                '$i',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                BlocProvider.of<BlocArabicInput>(context).agregar('$i');
              },
            ),
          ),
        ),
      ),
    ));
  }
  return numbersButtons;
}
