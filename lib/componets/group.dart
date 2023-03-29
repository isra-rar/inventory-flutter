import 'package:flutter/material.dart';
import 'package:inventory/screens/product_screen.dart';

class Group extends StatefulWidget {
  const Group({Key? key, required this.name, required this.photo})
      : super(key: key);

  final String name;
  final String photo;

  @override
  State<Group> createState() => _GrupoState();
}

class _GrupoState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black26),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black26),
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          widget.photo,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      widget.name,
                      style: const TextStyle(
                          fontSize: 24, overflow: TextOverflow.ellipsis),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              maximumSize: const Size.fromWidth(84)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (contextNew) =>
                                        ProductScreen(groupContext: context)));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.add, color: Colors.black),
                              Text(
                                'Produto',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
