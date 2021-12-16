import 'package:login_com_bd/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//MÉTODO PARA CRIAR O BD
Future<Database> createDataBase() {
  //Mètodo do package sqflite que 'pega' o caminho do DB:
  return getDatabasesPath().then((dbPath) {
    //Cria o arquivo do DB e devolve uma string com o caminho:
    //recebe (caminho do DB, nome do DB)
    final String pathDb = join(dbPath, 'bytebank.db');
    //Abre o DB (caminho, Fx anônima):
    return openDatabase(pathDb, onCreate: (db, version) {
      //Aqui vamos criar a tabela usando 'db', que é uma referência para DataBase:
      //Executando uma Query SQL:
      db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY,'
          'name TEXT,'
          'account_number INTEGER)');
      //Version, aqui, é a versão do seu projeto de BD, não tem a ver com packeges.
    }, version: 1);
  });
}

//MÉTODO PARA SALVAR UM CONTATO
void save(Contact contact) {
  //Preciso do DB para salvar, por isso ele deve ser retornado em createDatabase(). Note que
  //há 2 Returns nesse método, porque o último manda para o 'then()' e esse manda para o método principal.
  createDataBase().then((value) {});
}
