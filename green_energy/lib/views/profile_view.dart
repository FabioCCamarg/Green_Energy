import 'package:flutter/material.dart';
import 'package:green_energy/widgets/article_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
                Column(
                  children: [
                    CircleAvatar(
                      minRadius: 64,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        size: 64,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "user123",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Artigos Publicados",
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
