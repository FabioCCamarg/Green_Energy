import 'package:flutter/material.dart';
import 'package:green_energy/widgets/article_widget.dart';
import 'package:green_energy/widgets/search_button_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Olá, User,",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "seja bem vindo!",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                SearchButtonWidget(),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Artigos",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                ArticleWidget(
                  title: "Florestas Russas e sua influência ecológica",
                  description:
                      "Neste artigo você conhecerá mais sobre as florestas russas...",
                  views: "3 milhões de leituras",
                  user: "by Edward",
                ),
                SizedBox(
                  height: 32,
                ),
                ArticleWidget(
                  title: "Os maiores rios do mundo",
                  description:
                      "Neste artigo você conhecerá mais sobre a influência dos maiores rios do mundo.",
                  views: "2 milhões de leituras",
                  user: "by user142",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
