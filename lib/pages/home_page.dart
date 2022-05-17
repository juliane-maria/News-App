import 'package:flutter/material.dart';
import 'package:noticias/pages/widgets/button_widget.dart';
import 'package:noticias/pages/widgets/card_widget.dart';
import 'package:noticias/pages/widgets/card_outras_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: const [
                ButtonWidget(
                  texto: 'Noticias',
                ),
                ButtonWidget(
                  texto: 'Publicacoes',
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Ultimas Notícias',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {},
                physics: BouncingScrollPhysics(),
                children: [
                  CardWidget(
                      texto: 'CEST faz semana '
                          'de minicursos em '
                          'maio...',
                      data: 'Sábado,03 de abril de 2025'),
                  CardWidget(
                      texto: 'Aplicativo do CEST'
                          'lançado para IOS...',
                      data: 'Sábado,03 de abril de 2025'),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Outras Notícias',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    CardOutras(
                      title: 'IV Jornada de Sistemas de Informação ',
                      subtitle: 'Quinta 05 de maio de 2022',
                    ),
                    CardOutras(
                      title: 'IV Jornada de Sistemas de Informação ',
                      subtitle: 'Quinta 05 de maio de 2022',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
