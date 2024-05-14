import 'package:flutter/material.dart';
import 'package:green_energy/widgets/green_button.dart';
import 'package:green_energy/widgets/input_widget.dart';
import 'package:green_energy/views/auth/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                  "Olá, entre na",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "sua conta!",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 72,
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
                  hintText: "Digite sua senha",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Text(
                          "Esqueceu a senha?",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const GreenButton(
                  text: "ENTRAR",
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterView(),
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
                          "Não possui uma conta ainda?",
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
