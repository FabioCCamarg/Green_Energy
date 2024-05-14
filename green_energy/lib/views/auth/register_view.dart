import 'package:flutter/material.dart';
import 'package:green_energy/widgets/green_button.dart';
import 'package:green_energy/widgets/input_widget.dart';
import 'package:green_energy/views/auth/login_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Crie sua",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "conta!",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 72,
                ),
                const InputWidget(
                  label: "Nome",
                  hintText: "Seu nome",
                ),
                const SizedBox(
                  height: 32,
                ),
                const InputWidget(
                  label: "Email",
                  hintText: "seuemail@email.com",
                ),
                const SizedBox(
                  height: 32,
                ),
                const InputWidget(
                  label: "Senha",
                  hintText: "Crie uma senha",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 32,
                ),
                const GreenButton(
                  text: "CRIAR CONTA",
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Já possui uma conta?",
                          style: TextStyle(
                            color: Color.fromRGBO(206, 206, 206, 1),
                          ),
                        ),
                        Text(
                          " Clique aqui",
                          style: TextStyle(
                            color: Color.fromRGBO(29, 125, 33, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
