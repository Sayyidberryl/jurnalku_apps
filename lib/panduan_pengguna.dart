import 'package:flutter/material.dart';

class PanduanPenggunaan extends StatefulWidget {
  const PanduanPenggunaan({super.key});

  @override
  State<PanduanPenggunaan> createState() => _PanduanPenggunaanState();
}

class _PanduanPenggunaanState extends State<PanduanPenggunaan> {
  // Semua data panduan (judul, deskripsi singkat, dan isi detail)
  final List<Map<String, dynamic>> umum = [
    {
      'judul': 'Unggah Profile',
      'deskripsi': 'Panduan untuk mengunggah profil pengguna',
      'isi': [
        'Halaman ini memberikan panduan langkah demi langkah untuk mengunggah foto profil pengguna.',
        'Pengguna diinstruksikan untuk mengakses bagian Pengaturan Akun, mengisi field Unggah Photo Profile, dan menyimpan perubahan yang telah dilakukan.',
        [
          'Klik pada bagian Pengaturan Akun,',
          'lalu isi field Unggah Photo Profile',
          'Jika sudah, klik Simpan.'
        ]
      ]
    },
    {
      'judul': 'Ganti Password',
      'deskripsi': 'Panduan untuk mengganti password pengguna',
      'isi': [
        'Panduan ini membantu pengguna untuk mengganti kata sandi akun mereka demi keamanan.',
        'Pengguna dapat masuk ke menu Pengaturan Akun, lalu memilih opsi Ganti Password.',
        [
          'Klik menu Pengaturan Akun,',
          'Pilih opsi Ganti Password,',
          'Masukkan password lama dan password baru,',
          'Klik Simpan.'
        ]
      ]
    },
  ];

  final List<Map<String, dynamic>> siswa = [
    {
      'judul': 'Mengisi Jurnal',
      'deskripsi': 'Panduan untuk mengisi kegiatan sehari-hari',
      'isi': [
        'Panduan ini menjelaskan langkah-langkah mengisi jurnal kegiatan harian di aplikasi.',
        'Setiap siswa diharuskan menulis aktivitas harian dengan detail.',
        [
          'Masuk ke menu Jurnal,',
          'Klik tombol Tambah,',
          'Isi kegiatan yang dilakukan, lalu klik Simpan.'
        ]
      ]
    },
    {
      'judul': 'Kelengkapan Profile',
      'deskripsi': 'Panduan untuk melengkapi profile',
      'isi': [
        'Panduan ini membantu siswa melengkapi data profil pribadi secara lengkap.',
        'Melengkapi profil membantu guru memantau perkembangan siswa.',
        [
          'Buka menu Profil,',
          'Isi semua field yang kosong,',
          'Klik Simpan untuk menyimpan perubahan.'
        ]
      ]
    },
    {
      'judul': 'Mengelola Portfolio',
      'deskripsi': 'Panduan untuk menambah, edit, dan hapus portfolio',
      'isi': [
        'Panduan ini menjelaskan cara mengelola data portfolio siswa.',
        'Portfolio dapat berisi karya, proyek, atau dokumentasi kegiatan.',
        [
          'Masuk ke menu Portfolio,',
          'Klik Tambah untuk menambahkan data baru,',
          'Klik Edit untuk mengubah data, atau Hapus untuk menghapus.'
        ]
      ]
    },
    {
      'judul': 'Mengelola Sertifikat',
      'deskripsi': 'Panduan untuk menambah, edit, dan hapus sertifikat',
      'isi': [
        'Panduan ini menjelaskan langkah-langkah mengelola sertifikat yang dimiliki siswa.',
        'Data sertifikat digunakan untuk menampilkan pencapaian siswa.',
        [
          'Masuk ke menu Sertifikat,',
          'Klik Tambah untuk menambah sertifikat baru,',
          'Klik Edit untuk memperbarui data, atau Hapus untuk menghapus sertifikat.'
        ]
      ]
    },
    {
      'judul': 'Catatan Sikap Saya',
      'deskripsi': 'Panduan untuk melihat dan memahami catatan sikap',
      'isi': [
        'Panduan ini membantu siswa memahami catatan sikap dari guru.',
        'Catatan sikap ditampilkan berdasarkan evaluasi harian.',
        [
          'Masuk ke menu Catatan Sikap,',
          'Lihat daftar catatan yang telah diberikan oleh guru,',
          'Pahami poin-poin perbaikan yang tertera.'
        ]
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(Icons.home_outlined, color: Colors.grey),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
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
            const SizedBox(width: 8),
           const CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header
          Row(
            children: const [
              Icon(Icons.menu_book, size: 30, color: Colors.blue),
              SizedBox(width: 8),
              Text(
                'Panduan Penggunaan',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Selamat datang di panduan penggunaan aplikasi Jurnalku. '
            'Panduan ini akan membantu Anda memahami cara menggunakan fitur-fitur yang tersedia dengan optimal.',
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),
          const SizedBox(height: 25),

          // Bagian Umum
          const Text(
            'Umum',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Divider(),
          ...umum.map((item) => CardPanduan(item: item)).toList(),

          const SizedBox(height: 25),

          // Bagian Untuk Siswa
          const Text(
            'Untuk Siswa',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Divider(),
          ...siswa.map((item) => CardPanduan(item: item)).toList(),
        ],
      ),
    );
  }
}

class CardPanduan extends StatefulWidget {
  final Map<String, dynamic> item;
  const CardPanduan({super.key, required this.item});

  @override
  State<CardPanduan> createState() => _CardPanduanState();
}

class _CardPanduanState extends State<CardPanduan> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(vertical: 6),

        // ⬇️ shadow hanya muncul ketika cursor diarahkan
        decoration: BoxDecoration(
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ]
              : [],
        ),

        child: Card(
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

          child: SizedBox(
            height: 80,
            child: ListTile(
              hoverColor: Colors.transparent, 
              focusColor: Colors.transparent,
              tileColor: Colors.transparent,  
              minVerticalPadding: 20,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              leading: const Icon(Icons.menu_book, color: Colors.blue),
              title: Text(
                widget.item['judul'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(widget.item['deskripsi']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailPanduanPage(item: widget.item),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}


class DetailPanduanPage extends StatelessWidget {
  final Map<String, dynamic> item;
  const DetailPanduanPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    List isiLangkah = item['isi'][2];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Panduan Penggunaan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header dua kolom seperti contoh
          Row(
            children: [
              const Icon(Icons.menu_book, color: Colors.blue, size: 28),
              const SizedBox(width: 8),
              const Text(
                'Panduan Penggunaan',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(width: 16) ,
              Expanded(
                child: Text(
                  item['judul']!,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            item['isi'][0],
            style: const TextStyle(fontSize: 16, color: Colors.black87, height: 1.6),
          ),
          const SizedBox(height: 8),
          Text(
            item['isi'][1],
            style: const TextStyle(fontSize: 16, color: Colors.black87, height: 1.6),
          ),
          const SizedBox(height: 16),
          for (int i = 0; i < isiLangkah.length; i++)
            Text(
              '${i + 1}. ${isiLangkah[i]}',
              style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.8),
            ),
        ],
      ),
    );
  }
}
