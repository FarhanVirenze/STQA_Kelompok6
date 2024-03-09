import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/penyetorpage_controller.dart';

class PenyetorpageView extends GetView<PenyetorpageController> {
  const PenyetorpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
            text: TextSpan(
              text: "Data Penyetor Bank Sampah",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFFFFF)
              )
            )
          ),
        ),
        backgroundColor: Color(0xFF557153),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.toNamed(Routes.FORMPAGE);
        },
        child: Icon(Icons.add)
      ),
      body: FutureBuilder(
          future: controller.getReport(),
          // future: controller.getReport(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          title: Text('${snapshot.data![index].map['nama']}'),
                          subtitle: Text(
                              'Alamat : ${snapshot.data![index].map['alamat']} \nPatokan : ${snapshot.data![index].map['jenis']} \n${snapshot.data![index].map['berat']}'),
                        ),
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              } else {
                return const Center(
                  child: Text('No Data'),
                );
              }
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
      ),
    );
  }
}
