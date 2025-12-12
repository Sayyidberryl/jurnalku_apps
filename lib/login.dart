import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  child: Image.asset(
                    'assets/images/header_jurnal.jpg',
                    height: 260, // Sesuaikan
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
          
                SafeArea(
                  top: false,
                  child: Container(
                    width: double.infinity,
                    transform: Matrix4.translationValues(0, -20, 0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 40,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Masuk untuk memulai ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Jurnalku",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0A4DB3),
                              ),
                            ),
                          ],
                        ),
          
                        SizedBox(height: 30),
          
                        // Username
                        const Text(
                          "Username atau NIS",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
          
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF5F7FA),
          
                            hintText: "Masukkan username atau NIS",
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 13,
                            ),
          
                            // Border tipis abu (default)
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: Color(0xFFCDD2D8), // abu tipis
                                width: 1,
                              ),
                            ),
          
                            // Border tebal biru saat fokus
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: Color(0xFF0A4DB3), // biru
                                width: 2,
                              ),
                            ),
          
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
          
                        const SizedBox(height: 20),
          
                        // Password
                        const Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
          
                        TextField(
                          obscureText: isHidden,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF5F7FA),
          
                            hintText: "Masukkan password",
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 13,
                            ),
          
                            suffixIcon: IconButton(
                              icon: Icon(
                                isHidden ? Icons.visibility_off : Icons.visibility,
                                color: Colors.black54,
                              ),
                              onPressed: () => setState(() => isHidden = !isHidden),
                            ),
          
                            // Border abu tipis
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: Color(0xFFCDD2D8), // abu tipis
                                width: 1,
                              ),
                            ),
          
                            // Border biru tebal ketika fokus
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: Color(0xFF0A4DB3), // biru
                                width: 2,
                              ),
                            ),
                          ),
                        ),
          
                        const SizedBox(height: 30),
          
                        // Tombol Masuk
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0A4DB3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Masuk",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
          
                        const SizedBox(height: 35),
          
                        const Center(
                          child: Text(
                            "Lupa password? Hubungi guru laboran.",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          
                const SizedBox(height: 60),
          
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Menyatukan Upaya untuk Kemajuan Siswa",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 1.4,
                    ),
                  ),
                ),
          
                const SizedBox(height: 10),
          
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa "
                    "dalam memantau dan mengelola kompetensi keahlian siswa secara efektif.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),
                ),
          
                const SizedBox(height: 45),
          
                fiturCard(
                  color: Colors.yellow[100]!,
                  icon: Icons.school,
                  title: "Dirancang untuk Sekolah Kami",
                  desc:
                      "Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.",
                ),
          
                fiturCard(
                  color: Colors.purple[100]!,
                  icon: Icons.account_tree,
                  title: "Pemantauan yang Terstruktur",
                  desc:
                      "Memudahkan guru dalam menyusun dan memantau kompetensi keahlian yang harus dikuasai siswa.",
                ),
          
                fiturCard(
                  color: Colors.blue[100]!,
                  icon: Icons.auto_graph,
                  title: "Fitur Praktis dan Bermanfaat",
                  desc:
                      "Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.",
                ),
          
                fiturCard(
                  color: Colors.orange[100]!,
                  icon: Icons.school_rounded,
                  title: "Pengajuan Kompetensi oleh Siswa",
                  desc:
                      "Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.",
                ),
          
                fiturCard(
                  color: Colors.green[100]!,
                  icon: Icons.assignment_turned_in,
                  title: "Validasi dan Tanda Tangan Guru",
                  desc:
                      "Setiap kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai bukti.",
                ),
          
                fiturCard(
                  color: Colors.pink[100]!,
                  icon: Icons.tv,
                  title: "Pantauan Real-Time dan Transparan",
                  desc:
                      "Monitoring langsung, menciptakan lingkungan belajar yang efisien.",
                ),
          
                const SizedBox(height: 20),
          
                buildFooter(),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFF0A4DB3),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  )
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.explore, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    "Jelajahi siswa",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ======================= CARD FITUR WIDGET =======================
  Widget fiturCard({
    required Color color,
    required IconData icon,
    required String title,
    required String desc,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 28, color: Colors.black87),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 4),
                Text(desc, style: const TextStyle(fontSize: 14, height: 1.4)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildFooter() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
    decoration: const BoxDecoration(
      color: Color(0xFF0A4DB3),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat_bubble, color: Colors.white),
            SizedBox(width: 12),
            Icon(Icons.camera, color: Colors.white),
            SizedBox(width: 12),
            Icon(Icons.language, color: Colors.white),
            SizedBox(width: 12),
            Icon(Icons.play_circle_fill, color: Colors.white),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "© GEN–28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
