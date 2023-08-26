import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DebtPage extends StatelessWidget {
  const DebtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 350,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4), // Warna bayangan
                                  spreadRadius: 2, // Radius sebaran bayangan
                                  blurRadius: 7, // Radius blur bayangan
                                  offset: Offset(0, 3), // Posisi offset bayangan (x, y)
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text("Pinjaman Kamu"),
                                          Row(
                                            children: const [
                                              Text(
                                                "Rp ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              Text(
                                                "500.000",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  color: Color(0xFF0C356A),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                              "Bunga"
                                          ),
                                          Text(
                                            '5%',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                              color: Color(0xFF0C356A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Jatuh Tempo",
                                          ),
                                          Text(
                                            "18 Agustus 2023",
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17,
                                                color: Color(0xFF279EFF)
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text("Total Tagihan"),
                                          Row(
                                            children: const [
                                              Text(
                                                "Rp ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              Text(
                                                "768.000",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  color: Color(0xFF0C356A),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Tipe Pinjaman",
                                          ),
                                          Text(
                                            "*tipe pinjaman",
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17,
                                                color: Color(0xFF0C356A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text("Jangka Waktu"),
                                          Text(
                                            "31 hari",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                              color: Color(0xFF0C356A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20,),
                                Text("Sisa Waktu"),
                                const SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                          child: LinearPercentIndicator(
                                            animation: true,
                                            animationDuration: 1000,
                                            lineHeight: 30.0,
                                            percent: 0.95,
                                            center: const Text(
                                              "2 hari",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFD5FFD0),
                                              ),
                                            ),
                                            progressColor: Color(0xFF279EFF),
                                            backgroundColor: Colors.grey[300],
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF0C356A),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text("Bayar sekarang", style: TextStyle(color: Color(0xFFD5FFD0), ),),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 105,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4), // Warna bayangan
                          spreadRadius: 2, // Radius sebaran bayangan
                          blurRadius: 7, // Radius blur bayangan
                          offset: Offset(0, 3), // Posisi offset bayangan (x, y)
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "DISCLAIMER RISIKO",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                "Harap dibaca untuk mengetahui risiko pinjaman dan keterlambatan"
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 145,
                    decoration: BoxDecoration(
                      color: Color(0xFFD5FFD0),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4), // Warna bayangan
                          spreadRadius: 2, // Radius sebaran bayangan
                          blurRadius: 7, // Radius blur bayangan
                          offset: Offset(0, 3), // Posisi offset bayangan (x, y)
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Anda tidak dapat mengajukan permohonan pinjam",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                  "Anda dapat mengajukan permohonan kembali ketika sudah menyelesaikan pembayaran sebelumnya."
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(
                            child: Icon(Icons.warning_amber),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
