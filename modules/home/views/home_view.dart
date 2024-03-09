import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/desa.dart';
import '../../../data/index.dart';
import '../../../widget/desacard.dart';
import '../../../widget/indexcard.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  List<IndexSampah> insa = [];
  List<Desa> d = [];

  @override
  Widget build(BuildContext context) {
    IndexSampah pl = IndexSampah(
      "Plastik", 
      "20", 
      " KG"
    );
    IndexSampah lg = IndexSampah(
      "Logam", 
      "20", 
      " KG"
    );
    IndexSampah kc = IndexSampah(
      "kaca", 
      "20", 
      " KG"
    );
    Desa br = Desa(
      "Bener", 
      "4", 
      "100 Kg"
    );
    Desa sh = Desa(
      "Salah", 
      "12", 
      "300 Kg"
    );
    Desa bt = Desa(
      "Buat", 
      "7", 
      "175 Kg"
    );
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
            text: TextSpan(
              text: 'Bank Sampah Kota ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFFFFF)
              )
            )
          ),
        ),
        backgroundColor: Color(0xFF557153),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathHome(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color(0xFF557153),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ClipPath(
                  clipper: ClipPathBio(),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF7D8F69),
                          Color(0xFFA9AF7E),
                        ]
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Indeks Data Bank Sampah",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Kapasitas Penampungan ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal:10 ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IndexCard(ij: pl,),
                                  IndexCard(ij: lg,),
                                  IndexCard(ij: kc,),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Berat Sampah pada saat ini",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal:10 ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IndexCard(ij: pl,),
                                  IndexCard(ij: lg,),
                                  IndexCard(ij: kc,),
                                ],
                              ),
                            ),
                          ],
                        ),
                        
                        SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Hasil Daur Ulang",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal:10 ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IndexCard(ij: pl,),
                                  IndexCard(ij: lg,),
                                  IndexCard(ij: kc,),                                 
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]
                    )
                  )
                ),
                Container(
                  height: 7,
                  color: Colors.grey[300],
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              Desacard(d: br),
                              Desacard(d: sh),
                              Desacard(d: bt),
                              Desacard(d: br),
                            ],
                          )
                        )
                      ],
                    ),
                  )
                )
              ]
            ),
          ),
        ]
      )
    );
  }
}

class ClipPathBio extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 10 );
    path.quadraticBezierTo(
      size.width / 2, 
      size.height, 
      size.width, 
      size.height - 10);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
class ClipPathHome extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}