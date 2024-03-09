import 'package:final_project_2023/app/data/desa.dart';
import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Desacard extends StatelessWidget {
const Desacard({ Key? key, required this.d}) : super(key: key);
  final Desa d;

  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 8,
      child: Padding(
        padding: EdgeInsets.all(10), 
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Text("Kelurahan ${d.nama}",),
                    Text("Bank Sampah yang tersedia ${d.bs}"),
                    Text("Sampah yang dapat di tampung ${d.jumlah}"),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () async {
                            Get.toNamed(Routes.PENYETORPAGE);
                          },
                          child: Icon(Icons.add_link_sharp),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
          
        ),
      ),
    );
  }
}