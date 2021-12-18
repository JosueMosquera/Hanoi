void main() {
  const numeroDiscos = 64;
  var torreA = 'A';
  var torreB = 'B';
  var torreC = 'C';
  var contador = 0;

  void move(int numeroDiscos, i, j) {
    contador++;
    print(" " +
        '$contador' +
        " Movimiento:" +
        '$numeroDiscos' +
        " Disco de número:" +
        i +
        " -> " +
        j);
  }

  void hanoi(int numeroDiscos, torreA, torreB, torreC) {
    if (numeroDiscos == 1) {
      move(1, torreA, torreC);
    } else {
      //Mueve recursivamente la capa n-1 sobre la torre A de A a travez de C a B
      hanoi(numeroDiscos - 1, torreA, torreC, torreB);
      move(numeroDiscos, torreA, torreC);
      // coloca recursivamente la capa n-1 en el pilar B desde B a travez de A hasta C
      hanoi(numeroDiscos - 1, torreB, torreA, torreC);
    }
  }

  hanoi(numeroDiscos, torreA, torreB, torreC);
}
