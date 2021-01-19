import 'package:flutter_bloc/flutter_bloc.dart';

import '../dominio/mayan_number.dart';
import 'estadomayaninput.dart';

class BlocMayanInput extends Cubit<EstadoMayanInput> {
  BlocMayanInput() : super(EstadoMayanInput.inicial());

  void agregarNivel() {
    state.niveles.add({MayanNumbers.one: 0, MayanNumbers.five: 0});
    emit(state.copyWith(
      niveles: state.niveles,
    ));
  }

  void eliminarNivel() {
    if (state.niveles.length > 1) {
      state.niveles.removeAt(state.niveles.length - 1);
    } else {
      state.niveles[0][MayanNumbers.one] = 0;
      state.niveles[0][MayanNumbers.five] = 0;
    }
    emit(state.copyWith(niveles: state.niveles));
  }

  void editarNivel(int indice, Map<MayanNumbers, int> nivel) {
    state.niveles[indice] = nivel;
    emit(state.copyWith(niveles: state.niveles));
  }

  void agregarCinco() {
    if (state.niveles[state.niveles.length - 1][MayanNumbers.five] < 3) {
      state.niveles[state.niveles.length - 1][MayanNumbers.five]++;
    }
    emit(state.copyWith(niveles: state.niveles));
  }

  void agregarUno() {
    if (state.niveles[state.niveles.length - 1][MayanNumbers.one] < 4) {
      state.niveles[state.niveles.length - 1][MayanNumbers.one]++;
      emit(state.copyWith(niveles: state.niveles));
    }
  }

  void seleccionar(int indice) {
    emit(state.copyWith(seleccionado: indice));
  }
}
