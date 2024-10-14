import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NubankHomePage(),
    );
  }
}

class NubankHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8A05BE), // Cor primária roxa
        leading: Center(
          child: Ink(
            decoration: const ShapeDecoration(
              color: Color(0xFFBA4DE3),
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.person_outlined),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ),
        actions: [
          IconButton(
            icon:
                const Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.question_mark_rounded,
                color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.mark_email_read_outlined,
                color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Margem de 16px em todo o corpo
        child: ListView(
          children: [
            // Saldo da Conta
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Conta',
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                              height:
                                  10), // Espaço de 10px entre o texto e o saldo
                          const Text(
                            'R\$ 1.000,00',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0x20df40fb)),
                            ),
                            icon: const Icon(Icons.pix),
                            padding: const EdgeInsets.all(20),
                          ),
                          const Text("Área Pix"),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0x20df40fb)),
                            ),
                            icon: const Icon(Icons.money),
                            padding: const EdgeInsets.all(20),
                          ),
                          const Text("Pagamentos"),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0x20df40fb)),
                            ),
                            icon: const Icon(Icons.qr_code),
                            padding: const EdgeInsets.all(20),
                          ),
                          const Text("QR Code"),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0x20df40fb)),
                            ),
                            icon: const Icon(Icons.attach_money),
                            padding: const EdgeInsets.all(20),
                          ),
                          const Text("Transferir"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: const Card(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Icon(Icons.credit_card),
                            SizedBox(width: 20),
                            Text(
                              "Meus Cartões",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: const Card(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Guarde seu dinheiro em caixinhas",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF8A05BE)),
                            ),
                            Text("Acessando a área de planejamento"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Divider(height: 1),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Cartão de Crédito',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10), // Espaço de 10px
                        const Text(
                          'Fatura fechada',
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ),
                        const SizedBox(height: 10), // Espaço de 10px
                        const Text(
                          'R\$ 500,00',
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(height: 15), // Espaço de 15px
                        const Text(
                          'Vencimento: 20/10',
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ),
                        const SizedBox(height: 15), // Espaço de 15px
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Renegociar',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Divider(height: 1),
            ),
            Container(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Empréstimo',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Tudo certo com seu empréstimo atual.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Divider(height: 1),
            ),
            // Descubra Mais
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Descubra agora",
                    style: TextStyle(fontSize: 24),
                  ),
                  Container(
                    width: double.infinity,
                    child: Card(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                            ),
                            child: Image.network(
                              'https://www.septe.com.br/wp-content/uploads/2024/01/planilha-matriz-9-box-jpg.webp',
                              fit: BoxFit.cover,
                              width: double
                                  .infinity, // Defina a altura conforme necessário
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Seguro de Vida',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5), // Padding simétrico de 5px
                                Text(
                                  'Cuide bem do que importa.',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black54),
                                ),
                                SizedBox(
                                    height: 10), // Padding entre texto e botão
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Conhecer'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF8A05BE),
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
