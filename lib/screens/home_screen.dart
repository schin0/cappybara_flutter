import 'package:cappybara_flutter/providers/home_provider.dart';
import 'package:cappybara_flutter/widgets/evento_resumo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../widgets/evento_interesse_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomeScreen(),
    );
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFECF0F3),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    _buildCabecalho(context),
                    SizedBox(height: 24),
                    _buildEventosSugestao(context),
                    SizedBox(height: 24),
                    Text(
                      "Melhores avaliações",
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 24),
                    _buildMelhoresAvaliacoes(context)
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildMenuNavegacao(context),
      ),
    );
  }

  Widget _buildCabecalho(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: Image.asset(
              "assets/images/capivara.png",
              height: 30,
              width: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 28, top: 2),
            child: SizedBox(
              height: 24,
              width: 18,
              child: SvgPicture.asset("assets/images/localizacao.svg"),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                "Jundiaí",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 26.54,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14, top: 2),
            child: SizedBox(
              height: 28,
              width: 28,
              child: SvgPicture.asset("assets/images/seta.svg"),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: Image.asset(
              "assets/images/configuracao.png",
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventosSugestao(BuildContext context) {
    return SizedBox(
      height: 134,
      width: 294,
      child: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 24),
            itemCount: provider.indicacoesIniciais.eventosSugestao.length,
            itemBuilder: (context, index) {
              var model = provider.indicacoesIniciais.eventosSugestao[index];
              return EventosSugestaoWidget(model);
            },
          );
        },
      ),
    );
  }

  Widget _buildMelhoresAvaliacoes(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: 20),
            itemCount: provider.indicacoesIniciais.eventos.length,
            itemBuilder: (context, index) {
              var model = provider.indicacoesIniciais.eventos[index];
              return EventosResumoWidget(model);
            },
          );
        },
      ),
    );
  }

  Widget _buildMenuNavegacao(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.maxFinite,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: Color(0XFF000000),
            width: 2,
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              // TODO: Criar botão HOME
              icon: SizedBox(
                height: 44,
                width: 44,
                child: SvgPicture.asset("assets/images/lupa.svg"),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 44,
                width: 44,
                child: SvgPicture.asset("assets/images/lupa.svg"),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 44,
                width: 44,
                child: SvgPicture.asset("assets/images/calendario.svg"),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
