import 'package:flutter/material.dart';
import 'package:palestra/screen/login_screen.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  String csenha = '', rsenha = '', mail = '', nome = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Registrar Usuario'),
          backgroundColor: Colors.purple,
          shadowColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Novo Registro",
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Nome Completo',
                  ),
                  onChanged: (text) {
                    nome = text;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'E-mail',
                  ),
                  onChanged: (text) {
                    mail = text;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Senha',
                    ),
                    enabled: true,
                    onChanged: (text) {
                      rsenha = text;
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Confirme a senha',
                  ),
                  onChanged: (text) {
                    csenha = text;
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: const Text("Cancelar")),
                    OutlinedButton(
                        onPressed: () {
                          if (rsenha == csenha) {}
                        },
                        child: const Text("Salvar")),
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
