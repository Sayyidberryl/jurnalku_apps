import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.home, color: Colors.grey),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Nadia Dwi Pratiwi',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'PPLG XII-4',
                  style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                ),
              ],
            ),
            SizedBox(width: 8),
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/header_dashboard.png",
                  ), // ganti sesuai nama filemu
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Selamat Datang di Jurnalku",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Solusi cerdas untuk memantau perkembangan kompetensi siswa secara efektif",
                    textAlign: TextAlign.center,

                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),

            // ===== CARD "Apa itu Jurnalku?" =====
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF116BE1), Color(0xFF0A49B5)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apa itu Jurnalku?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time. Dengan fitur lengkap, proses pemantauan menjadi lebih mudah dan transparan.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            // ================== CARD 1 ==================
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 3),
                  ),
                ],
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.school_outlined,
                    size: 44,
                    color: Color(0xFF003B99),
                  ),
                  SizedBox(height: 16),

                  Text(
                    "Dirancang Khusus",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            // ================== CARD 2 ==================
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 3),
                  ),
                ],
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.school, size: 44, color: Color(0xFF003B99)),
                  SizedBox(height: 16),

                  Text(
                    "Efektif",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Memudahkan siswa dan guru melihat perkembangan secara real-time.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 3),
                  ),
                ],
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.school, size: 44, color: Color(0xFF003B99)),
                  SizedBox(height: 16),

                  Text(
                    "Terintegrasi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Pengajuan kompetensi siswa, validasi dan laporan perkembangan yang transparan.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            // ================== MENU APLIKASI ==================
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MENU APLIKASI",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),

                  // ===== CARD 1 : PROFIL, PORTOFOLIO, SERTIFIKAT =====
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.grey, width: 0.5),
                    ),
                    child: Column(
                      children: [
                        _menuItem(
                          icon: Icons.person_outline,
                          title: "Profil",
                          subtitle: "Lihat dan kelola profilmu di sini.",
                        ),
                        _divider(),
                        _menuItem(
                          icon: Icons.work_outline,
                          title: "Portofolio",
                          subtitle:
                              "Lihat dan kelola portofolio kompetensimu di sini.",
                        ),
                        _divider(),
                        _menuItem(
                          icon: Icons.workspace_premium_outlined,
                          title: "Sertifikat",
                          subtitle:
                              "Lihat dan unduh sertifikat kompetensimu di sini.",
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  // ===== CARD 2 : JURNAL, SAKSI, PROGRESS =====
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.grey, width: 0.5),
                    ),
                    child: Column(
                      children: [
                        _menuItem(
                          icon: Icons.menu_book_outlined,
                          title: "Jurnal Pembiasaan",
                          subtitle:
                              "Catat dan pantau kegiatan pembiasaan harianmu.",
                        ),
                        _divider(),
                        _menuItem(
                          icon: Icons.verified_user_outlined,
                          title: "Permintaan Saksi",
                          subtitle:
                              "Lihat teman yang mengajukan permintaan saksi.",
                        ),
                        _divider(),
                        _menuItem(
                          icon: Icons.bar_chart_outlined,
                          title: "Progress",
                          subtitle: "Pantau perkembangan kompetensimu.",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // ================== STATISTIK KOMPETENSI ==================
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "STATISTIK KOMPETENSI",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 12),

                  _statCard(
                    title: "Materi Diselesaikan",
                    value: "4",
                    label: "Selesai",
                    color: Colors.green,
                    icon: Icons.check_circle,
                  ),
                  SizedBox(height: 12),

                  _statCard(
                    title: "Pengajuan Pending",
                    value: "0",
                    label: "Pending",
                    color: Colors.orange,
                    icon: Icons.access_time,
                  ),
                  SizedBox(height: 12),

                  _statCard(
                    title: "Materi Hari Ini",
                    value: "0",
                    label: "Hari Ini",
                    color: Colors.blue,
                    icon: Icons.calendar_today,
                  ),
                  SizedBox(height: 12),

                  _statCard(
                    title: "Materi Revisi",
                    value: "0",
                    label: "Revisi",
                    color: Colors.purple,
                    icon: Icons.refresh,
                  ),
                ],
              ),
            ),

            // ================== PROGRESS AKADEMIK ==================
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.04),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Progress Akademik",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),

                    _progressItem("Selesai", "0", Colors.indigo),
                    _progressItem("Pending", "0", Colors.blue),
                    _progressItem("Belum", "0", Colors.lightBlue),
                    _progressItem("Hari Ini", "0", Colors.teal),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.04),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Lihat Progress Kamu  →",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),

                    SizedBox(height: 16),

                    _kompetensiItem("Installasi Postman"),
                    _divider(),
                    _kompetensiItem("Implementasi Penggunaan Postman"),

                    SizedBox(height: 16),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Lihat semua Kompetensi",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ================== FOOTER ==================
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(vertical: 16),
              color: Color(0xFFEAF2FF),
              child: Center(
                child: Text(
                  "© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF003B99),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _menuItem({
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Color(0xFFEAF1FF),
      child: Icon(icon, color: Color(0xFF003B99)),
    ),
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    ),
    subtitle: Text(subtitle, style: TextStyle(fontSize: 12)),
    trailing: Icon(Icons.chevron_right),
    onTap: () {},
  );
}

Widget _divider() {
  return Divider(height: 1, thickness: 0.5);
}

Widget _statCard({
  required String title,
  required String value,
  required String label,
  required Color color,
  required IconData icon,
}) {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      border: Border.all(color: Colors.grey.shade300),
      boxShadow: [
        BoxShadow(
          color: Colors.black12.withOpacity(0.04),
          blurRadius: 8,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 14)),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 6),
                Text(label, style: TextStyle(color: color, fontSize: 12)),
              ],
            ),
          ],
        ),

        CircleAvatar(
          radius: 22,
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, color: color),
        ),
      ],
    ),
  );
}

Widget _progressItem(String label, String value, Color color) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            SizedBox(width: 10),
            Text(label),
          ],
        ),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

Widget _kompetensiItem(String title) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "Approved",
            style: TextStyle(color: Colors.green, fontSize: 12),
          ),
        ),
      ],
    ),
  );
}
