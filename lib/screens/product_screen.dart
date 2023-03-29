import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key, required this.groupContext}) : super(key: key);

  final BuildContext groupContext;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Container(
          height: 650,
          width: 375,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 3)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Descrição Produto',
                      fillColor: Colors.white70,
                      filled: true),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Quantidade Produto',
                      fillColor: Colors.white70,
                      filled: true),
                ),
                ElevatedButton(onPressed: () {
                  const SnackBar(content: Text('Produtor Criado'));
                  Navigator.pop(context);
                }, child: Text('Adicionar'))
              ],
            ),
          ),
        ),
      )),
    ));
  }
}
