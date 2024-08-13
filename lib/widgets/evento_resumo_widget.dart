import 'package:cappybara_flutter/models/evento_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class EventosResumoWidget extends StatelessWidget {
  final EventoCardModel eventos;

  EventosResumoWidget(this.eventos, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg("assets/images/card.svg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Image.asset(
              eventos.imagem!,
              height: 146,
              width: double.maxFinite,
            ),
          ),
          SizedBox(height: 22),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  eventos.titulo!,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 17,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24, right: 3),
                      child: Text(
                        eventos.nota!,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(
                        eventos.imagemEstrela!,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
