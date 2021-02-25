import 'dart:async';
import 'dart:io';

List<Map<String, dynamic>> cadastros = [];
main() {
  bool condicao = true;
  print("\x1B[2j\x1B[0;0H");

  while(condicao){
    print("== DIGITE UM COMANDO");
    String comando = stdin.readLineSync();
    if(comando == "sair"){
      print("== PROGRAMA FINALIZADO");
      condicao = false;
      
    }else if(comando == "cadastro"){
      print("\x1B[2j\x1B[0;0H");
      cadastrar();

    }else if(comando == "imprimir"){
      print(cadastros);
    }else{
      print("== ESSE COMANDO NAO EXISTE");
    }
  }
  
}

cadastrar(){
  Map<String, dynamic> cadastro = {};
  print("== DIGITE SEU NOME");
  cadastro["nome"] = stdin.readLineSync();
  print("== DIGITE SUA IDADE");
  cadastro["idade"] = stdin.readLineSync();
  print("== DIGITE SUA CIDADE");
  cadastro["cidade"] = stdin.readLineSync();
  print("== DIGITE SEU ESTADO");
  cadastro["estado"] = stdin.readLineSync();
  cadastros.add(cadastro);
}