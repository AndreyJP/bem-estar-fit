import 'package:bem_estar_fit/components/app_bar.dart';
import 'package:bem_estar_fit/components/menu_card.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          menuCard(
            funcao: (){
              Navigator.of(context).pushNamed('/imc');
            },
            iconeModel: Icons.calculate,
            textMenu: 'Calcular IMC',
          ),
          menuCard(
            funcao: (){
              Navigator.of(context).pushNamed('/tips');
            },
            iconeModel: Icons.tips_and_updates,
            textMenu: 'Dicas Saudáveis',
          ),
          menuCard(
            funcao: (){
              Navigator.of(context).pushNamed('/about');
            },
            iconeModel: Icons.info,
            textMenu: 'Sobre o App',
          ),
        ],
      ),
    );
  }
}
