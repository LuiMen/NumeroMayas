import 'package:conversor_numeros_mayas/aplicacion/bloc_play_room.dart';
import 'package:conversor_numeros_mayas/aplicacion/estadoplayroom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArabicNumberDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocPlayRoom, EstadoPlayRoom>(
      builder: (context, estado) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                '${estado.generatedNumber}',
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
