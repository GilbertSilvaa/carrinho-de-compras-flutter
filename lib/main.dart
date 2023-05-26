import 'package:flutter/material.dart';
import 'package:projetoexemplo/aula12/model/carrinho_model.dart';
import 'package:projetoexemplo/aula12/view/cardapio_view.dart';
import 'package:projetoexemplo/aula12/view/pedido_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CarrinhoModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CardapioView(),
      routes: {
        '/pedidos': (context) => const PedidoView(),
      },
    );
  }
}
