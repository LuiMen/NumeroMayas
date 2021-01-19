import 'dart:math' as math;
import 'package:conversor_numeros_mayas/aplicacion/estadomayaninput.dart';
import 'package:conversor_numeros_mayas/dominio/mayan_number.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../aplicacion/bloc_arabic_input.dart';
import '../aplicacion/bloc_mayan_input.dart';
import '../aplicacion/bloc_play_room.dart';
import '../aplicacion/estadoarabicinput.dart';
import '../aplicacion/estadoplayroom.dart';
import 'arabic_numer_display.dart';
import 'arabic_numer_input.dart';
import 'mayan_number_display.dart';
import 'mayan_number_input.dart';

class PlayRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BlocPlayRoom>(
          create: (context) => BlocPlayRoom(),
        ),
        BlocProvider<BlocArabicInput>(
          create: (context) => BlocArabicInput(),
        ),
        BlocProvider<BlocMayanInput>(
          create: (context) => BlocMayanInput(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Numeración Maya'),
        ),
        body: Center(
          child: BlocBuilder<BlocPlayRoom, EstadoPlayRoom>(
            builder: (context, estadoPlay) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: generateRandomPlay(estadoPlay.numberType),
              );
            },
          ),
        ),
      ),
    );
  }
}

List<Widget> generateRandomPlay(int numberType) {
  if (numberType == 0) {
    // Mayan number will be generated
    return [
      MayanNumberDisplay(),
      const Expanded(
        child: ArabicNumberInput(),
      ),
      Padding(
        padding: const EdgeInsets.all(8),
        child: AnswerButton(),
      ),
    ];
  } else {
    // Arabic number will be generated
    return [
      ArabicNumberDisplay(),
      Expanded(
        child: MayanNumberInput(),
      ),
      Padding(
        padding: const EdgeInsets.all(8),
        child: AnswerButton2(),
      ),
    ];
  }
}

class AnswerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<BlocPlayRoom, EstadoPlayRoom>(
      listener: (context, estadoPlay) {
        if (estadoPlay.isAnswered) {
          showDialog<void>(
            context: context,
            builder: (context) => _buildPopupDialog(
                context, (estadoPlay.isCorrect) ? 'Correcto' : 'Incorrecto', [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (estadoPlay.isCorrect)
                    Icon(
                      Icons.check,
                      color: Color(Colors.green.value),
                    )
                  else
                    Icon(
                      Icons.error,
                      color: Color(Colors.red.value),
                    ),
                ],
              )
            ]),
          );
          if (estadoPlay.isCorrect) {
            BlocProvider.of<BlocPlayRoom>(context).resetear();
            BlocProvider.of<BlocArabicInput>(context).limpiar();
          }
        }
      },
      child: BlocBuilder<BlocArabicInput, EstadoArabicInput>(
        builder: (context, estado) {
          return Padding(
            padding: const EdgeInsets.all(3),
            child: OutlinedButton(
              onPressed: () {
                BlocProvider.of<BlocPlayRoom>(context)
                    .numeroCorrecto(int.tryParse(estado.respuesta));
              },
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Responder',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class AnswerButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<BlocMayanInput, EstadoMayanInput>(
      listener: (context, estadoMayan) {},
      child: BlocListener<BlocPlayRoom, EstadoPlayRoom>(
        listener: (context, estadoPlay) {
          if (estadoPlay.isAnswered) {
            showDialog<void>(
              context: context,
              builder: (context) => _buildPopupDialog(
                  context, (estadoPlay.isCorrect) ? 'Correcto' : 'Incorrecto', [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (estadoPlay.isCorrect)
                      Icon(
                        Icons.check,
                        color: Color(Colors.green.value),
                      )
                    else
                      Icon(
                        Icons.error,
                        color: Color(Colors.red.value),
                      ),
                  ],
                )
              ]),
            );
            if (estadoPlay.isCorrect) {
              BlocProvider.of<BlocPlayRoom>(context).resetear();
              BlocProvider.of<BlocArabicInput>(context).limpiar();
            }
          }
        },
        child: BlocBuilder<BlocMayanInput, EstadoMayanInput>(
          builder: (context, estado) {
            return Padding(
              padding: const EdgeInsets.all(3),
              child: OutlinedButton(
                onPressed: () {
                  BlocProvider.of<BlocPlayRoom>(context).notificar();
                  BlocProvider.of<BlocPlayRoom>(context)
                      .numeroCorrecto(levelsToInt(estado.niveles));
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Responder',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
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

int levelsToInt(List<Map<MayanNumbers, int>> niveles) {
  int answer = 0;
  int levels = niveles.length;

  for (var nivel in niveles) {
    int level_value =
        (nivel[MayanNumbers.one] + (nivel[MayanNumbers.five] * 5));
    answer += (level_value * math.pow(20, levels - 1).toInt());
    levels--;
  }
  return answer;
}
