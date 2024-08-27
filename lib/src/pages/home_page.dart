import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activePage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  List<Widget> informations = [
    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "18",
          style: TextStyle(fontSize: 50),
        ),
        SizedBox(width: 20),
        Text(
          "Pacientes \n na fila de emergência",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "18",
          style: TextStyle(fontSize: 50),
        ),
        SizedBox(width: 20),
        Text(
          "Pacientes \n na fila de emergência",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "18",
          style: TextStyle(fontSize: 50),
        ),
        SizedBox(width: 20),
        Text(
          "Pacientes \n na fila de emergência",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "18",
          style: TextStyle(fontSize: 50),
        ),
        SizedBox(width: 20),
        Text(
          "Pacientes \n na fila de emergência",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "18",
          style: TextStyle(fontSize: 50),
        ),
        SizedBox(width: 20),
        Text(
          "Pacientes \n na fila de emergência",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Text(
              "SISTEMA DE GERENCIAMENTO DE PACIENTES",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Card(
            elevation: 10,
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemBuilder: (context, index) => informations[index],
                    itemCount: informations.length,
                    onPageChanged: (value) {
                      setState(() {
                        _activePage = value;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                      informations.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              _pageController.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: _activePage == index
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            elevation: 10,
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Próximo paciente",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Marco Aurélio Garcia Silva",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Senha: R1"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text(
                        "Emergência",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.red,
                      side: BorderSide(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            elevation: 10,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Pacientes por faixa etária",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Table(
                    border: TableBorder.all(color: Colors.grey, width: 0.1),
                    children: const [
                      TableRow(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 239, 255)),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Crianças",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "1",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Adolescentes",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "11",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 239, 255)),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Adultos",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "3",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Idosos",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "22",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]),
                    ],
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet<void>(
                backgroundColor: Theme.of(context).colorScheme.primary,
                context: context,
                builder: (BuildContext context) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 219, 219, 219),
                                ),
                              ),
                              child: const Icon(Icons.account_box_rounded),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Cadastrar\nPaciente",
                                style: TextStyle(color: Colors.white, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 219, 219, 219),
                                ),
                              ),
                              child: const Icon(Icons.wysiwyg_outlined),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Verificar \n CPF",
                                style: TextStyle(color: Colors.white, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 219, 219, 219),
                                ),
                              ),
                              child: const Icon(Icons.list),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Consultar \n Filas",
                                style: TextStyle(color: Colors.white, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: const SizedBox(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.info_outline_rounded),
                  Text("Ações"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
