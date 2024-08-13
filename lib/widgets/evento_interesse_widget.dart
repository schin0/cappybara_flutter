import 'package:flutter/material.dart';

import '../models/sugestao_card_model.dart';

class EventosSugestaoWidget extends StatelessWidget {
  final SugestaoCardModel eventosSugestao;

  EventosSugestaoWidget(this.eventosSugestao, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 134,
      width: 134,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        border: Border.all(
          color: Color(0XFF000000),
          width: 2,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            eventosSugestao.titulo!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 17,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
