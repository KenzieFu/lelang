import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Detail Barang",
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 21),
      ),
      Text(
        "Dekripsi Barang",
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 21),
      ),
      const Text("""
Dengan menggunakan bahan-bahan natural dan alami, produk DEF bisa membantu mengatasi masalah kulit kusam dan berjerawat dalam tiga hari.

Gunakan secara rutin setiap kali selesai mencuci muka. Ratakan ke seluruh wajah dan diamkan 15 menit sampai kandungannya meresap semua. Rasakan sendiri kulit bersih dan bersinar dalam waktu tiga hari.


""")
    ]);
  }
}
