import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'estadoplayroom.dart';

class BlocPlayRoom extends Cubit<EstadoPlayRoom> {
  BlocPlayRoom() : super(EstadoPlayRoom.inicial());

  void numeroCorrecto(int numero) {
    print(numero);
    print(state.generatedNumber);
    emit(state.copyWith(
        isAnswered: true,
        isCorrect: state.generatedNumber == numero,
        notifier: !state.notifier));
  }

  void marcarSinContestar() {
    emit(state.copyWith(isAnswered: false, isCorrect: false));
  }

  void resetear() {
    emit(state.copyWith(
        generatedNumber: Random().nextInt(400 + 1),
        numberType: Random().nextInt(2),
        isAnswered: false,
        isCorrect: false));
  }

  void notificar() {
    emit(state.copyWith(notifier: !state.notifier));
  }
}
