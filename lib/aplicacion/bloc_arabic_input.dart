import 'package:flutter_bloc/flutter_bloc.dart';
import 'estadoarabicinput.dart';

class BlocArabicInput extends Cubit<EstadoArabicInput> {
  BlocArabicInput() : super(EstadoArabicInput.inicial());

  void agregar(String numero) {
    if (numero.contains(RegExp('[0-9]')) && state.respuesta.length < 10) {
      emit(state.copyWith(respuesta: state.respuesta + numero));
    }
  }

  void borrar() {
    var respuesta = state.respuesta;
    if (respuesta.isNotEmpty) {
      respuesta = respuesta.substring(0, respuesta.length - 1);
      emit(state.copyWith(respuesta: respuesta));
    }
  }

  void limpiar() {
    emit(state.copyWith(respuesta: ''));
  }
}
