import 'package:flutter/material.dart';

class FormKullanimi extends StatefulWidget {
  FormKullanimi({Key? key}) : super(key: key);

  @override
  State<FormKullanimi> createState() => _FormKullanimiState();
}

class _FormKullanimiState extends State<FormKullanimi> {
  var formKey = GlobalKey<FormState>();
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Kullanimi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: tfKullaniciAdi,
                      decoration: const InputDecoration(
                        hintText: "Kullanici Adi",
                        labelText: "Kullanici Adi",
                        prefixIcon: Icon(Icons.supervised_user_circle_sharp),
                        suffixIcon: Icon(Icons.abc),
                        border: OutlineInputBorder(),
                      ),
                      validator: (tfGirdisi) {
                        if (tfGirdisi!.isEmpty) {
                          return "Kullanici Adi Giriniz";
                        }
                        return null; //*sorun yok demek anlaminda
                      },
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      controller: tfSifre,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Sifrenizi Griniz",
                        labelText: "Sifre",
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: Icon(Icons.data_saver_off_sharp),
                        border: OutlineInputBorder(),
                      ),
                      validator: (tfGirdisi) {
                        if (tfGirdisi!.isEmpty) {
                          return "Sifrenizi Giriniz";
                        }
                        if (tfGirdisi.length < 6) {
                          return "Sifreniz en az 6 haneli olmalidir";
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        bool kontolSonucu = formKey.currentState!.validate();
                        if (kontolSonucu) {
                          String ka = tfKullaniciAdi.text;
                          String s = tfSifre.text;
                          debugPrint("Kullanici adi: $ka ---- Sifre: $s");
                        }
                      },
                      child: const Text(
                        "Giris",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
