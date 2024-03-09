import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/formpage_controller.dart';

class FormpageView extends GetView<FormpageController> {
  FormpageView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
            text: TextSpan(
              text: "Form Penyetor Bank Sampah ",
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
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: const Text('Name Penyetor'),
                    hintText: 'Isi nama lengkap',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (newValue) {
                    if (newValue != null) {
                      controller.nama.text = newValue;
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'harus di isi';
                    }
                    return null;
                  },
                )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: const Text('Alamat Penyetor'),
                    hintText: 'Isi alamat anda saat ini',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (newValue) {
                    if (newValue != null) {
                      controller.alamat.text = newValue;
                    }
                  },
                )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: const Text('Jenis sampah yang disetorkan '),
                    hintText: 'Isi jenis sampah',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (newValue) {
                    if (newValue != null) {
                      controller.jenis.text = newValue;
                    }
                  },
                )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: const Text('Berat sampah yang disetorkan'),
                    hintText: 'Isi berat sampah',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (newValue) {
                    if (newValue != null) {
                      controller.berat.text = newValue;
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'harus di isi';
                    }
                    return null;
                  },
                )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel')
                    ),
                    ElevatedButton(
                      onPressed: () async {
                    await controller.savedata(controller.nama.text,
                        controller.alamat.text, controller.jenis.text, controller.berat.text);
                  },
                      child: Text('Save')
                    ),
                  ],
                ),
              ),
            ]
          )
        )
      )
    );
  }
}
