import 'package:cappybara_flutter/models/city_model.dart';
import 'package:flutter/material.dart';
import '../models/evento_card_model.dart';
import '../widgets/menu_navegacao_widget.dart';
import 'map_screen.dart';

class EventoScreen extends StatelessWidget {
  final EventoCardModel evento;

  EventoScreen({required this.evento, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          SizedBox(height: 34),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 159,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDDDDDD)),
                      margin: const EdgeInsets.only(right: 15, left: 40),
                      child: Icon(Icons.image, size: 60, color: Colors.grey),
                    ),
                    Container(
                      width: 80,
                      height: 129,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDDDDDD)),
                      margin: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.image, size: 60, color: Colors.grey),
                    ),
                    Container(
                      width: 80,
                      height: 129,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDDDDDD)),
                      margin: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.image, size: 60, color: Colors.grey),
                    ),
                    Container(
                      width: 80,
                      height: 129,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDDDDDD)),
                      margin: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.image, size: 60, color: Colors.grey),
                    ),
                  ],
                ),
              )),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  evento.titulo!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Atração de exemplo, com notas altas pelos visitantes.",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: MapScreen(City('FIAP - Lins', 'São Paulo', -23.595157, -46.687052)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15)),
              onPressed: () {},
              child: Center(
                child: Text(
                  "COMO CHEGAR",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Spacer(),
          MenuNavegacao(),
        ],
      ),
    );
  }
}
