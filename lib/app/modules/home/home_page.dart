import 'package:deliciousloveapp/app/shared/widgets/custom_background/build_back.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
        children: <Widget>[
          BuildBodyBack(),
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                snap: true,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text(
                      "Próximos Pedidos",
                      style: TextStyle(fontWeight: FontWeight.bold,)
                  ),
                  centerTitle: true,
                ),
                actions: <Widget>[

                ],
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[

                  ],
                ),
              ),
            ],
          ),
        ],
      );

  }
}


