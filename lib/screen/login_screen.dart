import 'package:flutter/material.dart';
import 'package:palestra/screen/registro_screen.dart';
import 'entrou.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = '', senha = '';
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/prin.png',
              height: 200,
              matchTextDirection: true,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Monitora H2O",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 40,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: ('Email'),
                      hintText: 'Email',
                      labelStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.5,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    onChanged: (text) {
                      email = text;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: ('Senha'),
                      hintText: 'Senha',
                      labelStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.5,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    onChanged: (text) {
                      senha = text;
                    },
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      if (email == 'carol@gmail.com' && senha == 'carol123') {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const EntrouScreen()),
                        );
                      } else {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Text(
                              'email ou senha incorreto',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                decoration: TextDecoration.none,
                                height: 25,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text('Entrar'),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Registro()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text('Registrar-se'),
                  ),
                ),
              ],
            )
          ]),
        )),
      ),
    );
  }
}
