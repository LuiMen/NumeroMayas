import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../aplicacion/bloc_play_room.dart';
import '../aplicacion/estadoplayroom.dart';
import '../dominio/mayan_number.dart';
import 'mayan_numbers_widgets.dart';

class MayanNumberDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocPlayRoom, EstadoPlayRoom>(
        builder: (context, estado) {
      var mayanNumber = MayanNumber(number: estado.generatedNumber);
      return Container(
        height: MediaQuery.of(context).size.height * (3 / 5),
        child: Expanded(
          child: CustomScrollView(
            slivers: <Widget>[
              for (int i in mayanNumber.getLevels())
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return MayanNumberContainer(
                          map: mayanNumber.getMayanRepresentation(i));
                    },
                    childCount: 1,
                  ),
                ),
            ],
          ),
        ),
      );
    });
  }
}
