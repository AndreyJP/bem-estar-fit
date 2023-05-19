import 'package:bem_estar_fit/components/alert_dialog.dart';
import 'package:bem_estar_fit/components/app_bar.dart';
import 'package:bem_estar_fit/components/fom_text_field.dart';
import 'package:bem_estar_fit/controllers/imc_controller.dart';
import 'package:bem_estar_fit/model/imc.dart';
import 'package:flutter/material.dart';

class ImcPage extends StatefulWidget {
  const ImcPage({super.key});

  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  double _imc = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Informe os dados',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FormTextField(
            labelText: 'Peso(kg)',
            hintText: 'Peso(Kg)',
            textController: pesoController,
          ),
          FormTextField(
            labelText: 'Altura(m)',
            hintText: 'Altura(m)',
            textController: alturaController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  String error = ImcController.instance.verificarErros(
                      pesoController.text, alturaController.text);

                  if (error == '') {
                    setState(() {
                      Imc.instance
                          .setAltura(double.parse(alturaController.text));
                      Imc.instance.setPeso(double.parse(pesoController.text));
                      _imc = ImcController.instance.calcularImc();

                      //pesoController.text = '';
                      //alturaController.text = '';
                    });
                  }else{
                    showDialog(context: context, builder: (BuildContext context){
                      return alert(context, 'Erro ao calcular IMC', error);
                    });
                  }
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 27, 157, 31)),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(15))),
                child: const Text(
                  'Calcular',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 71, 187, 237)),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(15))),
                child: const Text(
                  'Voltar',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(_imc > 0.0 ? 'IMC: ${_imc.toStringAsFixed(2)}' : '',
              style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
