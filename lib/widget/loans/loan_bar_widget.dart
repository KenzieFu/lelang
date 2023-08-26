import 'package:flutter/material.dart';

class LoanBarWidget extends StatelessWidget {
  const LoanBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 220,
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
                const Text(
                  'Pinjaman',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: Color(0xFF0C356A),
                ),
                const SizedBox(
                  height: 10,
                ),
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
                          Text("Bunga"),
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
                const SizedBox(
                  height: 10,
                ),
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
                                color: Color(0xFF279EFF)),
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
                const SizedBox(
                  height: 20,
                ),
                // NGENTOTOTOT
                Expanded(
                  child: GestureDetector(
                    child: SizedBox(
                      height: 20,
                      child: Row(
                        children: const [
                          Text(
                            "Lihat detail Peminjaman",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0C356A),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 15,
                            weight: 500,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
