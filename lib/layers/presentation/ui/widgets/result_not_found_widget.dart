import 'package:flutter/material.dart';

class ResultNotFound extends StatefulWidget {
  String query;
  ResultNotFound({super.key, required this.query});

  @override
  State<ResultNotFound> createState() => _ResultNotFoundState();
}

class _ResultNotFoundState extends State<ResultNotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/img/rafiki.png"),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            "Resultado não encontrado",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            "Não encontramos nenhuma resultado parecido com \"${widget.query}\"",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ));
  }
}
