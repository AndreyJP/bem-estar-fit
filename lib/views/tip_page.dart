import 'package:bem_estar_fit/components/app_bar.dart';
import 'package:bem_estar_fit/components/tip_card.dart';
import 'package:flutter/material.dart';

class TipPage extends StatefulWidget {
  const TipPage({super.key});

  @override
  State<TipPage> createState() => _TipPageState();
}

class _TipPageState extends State<TipPage> {
  List tips = [
    'Mantenha uma alimentação saudável e equilibrada.',
    'Pratique exercícios físicos regularmente.',
    'Consulte um médico regularmente',
    'Não esqueça do protetor solar',
    'Faça do sono uma de suas prioridades',
    'Beba água frequentemente',
    'Elimine de vez o cigarro'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Dicas de Saúde em bem-estar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: tips.length,
              itemBuilder: (context, int index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Text(
                    (index+1).toString() + '. ' + tips[index],
                    style: const TextStyle(fontSize: 17),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
