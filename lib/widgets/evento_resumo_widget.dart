import 'package:cappybara_flutter/models/evento_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../routes/app_routes.dart';
import '../screens/evento_screen.dart';

class EventosResumoWidget extends StatelessWidget {
  final EventoCardModel evento;

  EventosResumoWidget(this.evento, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventoScreen(evento: evento),
            settings: RouteSettings(name: AppRoutes.eventoScreen),
          ),
        );
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0XFF000000),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: Image.asset(
                    evento.imagem!,
                    height: 146,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(height: 22),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    evento.titulo!,
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
                          evento.nota!,
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
                          evento.imagemEstrela!,
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
      ),
    );
  }
}
