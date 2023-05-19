class Imc{

  static final Imc instance = Imc._(0.0, 0.0);
  
  Imc._(this._peso, this._altura);

  double _peso;
  double _altura;

  double getPeso(){
    return _peso;
  }

  void setPeso(double peso){
    _peso = peso;
  }

  double getAltura(){
    return _altura;
  }

  void setAltura(double altura){
    _altura = altura;
  }
}