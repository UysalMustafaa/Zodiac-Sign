import 'package:com/burc_liste.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/burc.dart';

class BurcDetay extends StatelessWidget {

  int gelenIndex;
  Burc secilenBurc;

  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {

    secilenBurc = BurcListesi.tumBurclar[gelenIndex];

    return Scaffold(

      primary: true,

      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[

          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/" + secilenBurc.burcBuyukResim, fit: BoxFit.cover,),
              centerTitle: true,
            ),
            title: Text(secilenBurc.burcAdi + "Burcu ve Özellikleri"),
          ),

          SliverToBoxAdapter(

            child: Container(
              margin: EdgeInsets.all(6),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.pink.shade400,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SingleChildScrollView(

                child: Text(secilenBurc.burcDetay, style: TextStyle(fontSize: 24, color: Colors.black)
                ),
            ),

            ),

          )

        ],

      ),

    );
  }


}
