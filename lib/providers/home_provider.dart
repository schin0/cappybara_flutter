import 'package:cappybara_flutter/models/evento_card_model.dart';
import 'package:cappybara_flutter/models/sugestao_card_model.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  final indicacoesIniciais = IndicacoesIniciais();

  @override
  void dispose() {
    super.dispose();
  }
}

class IndicacoesIniciais {
  List<SugestaoCardModel> eventosSugestao = [];
  List<EventoCardModel> eventos = [];

  IndicacoesIniciais() {
    eventosSugestao = [
      SugestaoCardModel(titulo: "Atrações do seu interesse"),
      SugestaoCardModel(titulo: "Eventos mais próximos de você")
    ];

    eventos = [
      EventoCardModel(
        imagem: "assets/images/placeholder.png",
        titulo: "NEXT 2024",
        nota: "4.9",
        imagemEstrela: "assets/images/estrela.svg",
      ),
      EventoCardModel(
        imagem: "assets/images/placeholder.png",
        titulo: "Exposição Vila do Chaves",
        nota: "4.8",
        imagemEstrela: "assets/images/estrela.svg",
      )
    ];
  }
}
