import 'package:bem_estar_fit/model/imc.dart';

class ImcController{
  static final ImcController instance = ImcController();

  double calcularImc(){
    double imc = 0.0;
    imc = Imc.instance.getPeso() / (Imc.instance.getAltura() * Imc.instance.getAltura());
    return imc;
  }

  String verificarErros(String peso, String altura){
    String message = '';
    if(peso.isEmpty || altura.isEmpty){
      message = 'Preencha todos os campos!';
    }else if(double.parse(peso).isNegative || double.parse(altura).isNegative){
      message = 'Existem campos preenchidos com valores negativos';
    }else if(double.parse(peso) == 0 || double.parse(altura) == 0){
      message = 'Os valores devem ser maiores que Zero';
    }
    return message;
  }
}