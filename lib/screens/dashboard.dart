import 'package:flutter/material.dart';
import 'package:login_com_bd/screens/list_contacts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        //Espaço máximo entre os widgets dentro da Column, no eixo 'Y':
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //Coloca os filhos da Column no início da posição:
        crossAxisAlignment: CrossAxisAlignment.start,
        //LOGO DA EMPRESA:
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          //container serve quando queremos colocar os widgets dentro de um "caixa" e também para agrupá-los. Container sempre se ajusta conforme os widgets dentro dele.
          //CONTAINER DE CONTATOS:
          Padding(
            padding: const EdgeInsets.all(8.0),
            //'GestureDetector' - Atribui ao widget capacidade de responder a todo tipo de eventos.
            //'InkWell' - Atribui ao widget capacidade de responder a todo tipo de eventos, mas é próprio do MaterialDesign, por isso é mais adequado. Permite efeitos.
            //Para o efeito funcionar, necessário envolver InkWell com 'Material' e responsabilizar ele pela cor do seu filho.
            child: Material(
              //Cor do container envolvido pelo Material:
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ListContacts(),
                    ),
                  );
                },
                child: Container(
                  //Padding atribuído aos filhos do container:
                  padding: const EdgeInsets.all(8.0),
                  height: 80,
                  width: 130,
                  //Pegando a primary color definida no Theme do app:
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //IMAGEM:
                      const Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      //TEXTO DO CONTATO:
                      const Text(
                        'Contacts',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
