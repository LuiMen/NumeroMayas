import 'package:flutter/material.dart';

import '../dominio/mayan_number.dart';

class MayanNumberContainer extends StatelessWidget {
  const MayanNumberContainer({@required this.map});
  final Map<MayanNumbers, int> map;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[100],
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * (1 / 5),
        height: MediaQuery.of(context).size.height * (1 / 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: getMayanSimbols(map)),
      ),
    );
  }
}

class MayanNumberContainerForEdit extends StatelessWidget {
  MayanNumberContainerForEdit({@required this.map, @required this.isFirst});
  final Map<MayanNumbers, int> map;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[100],
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * (1 / 6),
        height: MediaQuery.of(context).size.height * (1 / 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: getMayanSimbols(map)),
          ],
        ),
      ),
    );
  }
}

List<Widget> getMayanSimbols(Map<MayanNumbers, int> map) {
  var mayanSimbols = <Widget>[];
  if (map[MayanNumbers.five] > 0 || map[MayanNumbers.one] > 0) {
    mayanSimbols.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var i = 0; i < map[MayanNumbers.one]; i++)
            Image.asset(
              'assets/uno_maya.png',
              height: 10,
            ),
        ],
      ),
    );
    for (var i = 0; i < map[MayanNumbers.five]; i++) {
      mayanSimbols.add(
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/cinco_maya.png',
              height: 15,
            )
          ],
        ),
      );
    }
  } else {
    mayanSimbols.add(Image.asset(
      'assets/cero_maya.png',
      height: 50,
    ));
  }
  return mayanSimbols;
}
