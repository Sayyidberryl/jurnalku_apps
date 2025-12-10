import 'package:flutter/material.dart';
import 'journal_page.dart';
import 'account_settings.dart';
import 'witness_request.dart';
import 'profile_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress Belajar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProgressBelajarPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProgressBelajarPage extends StatelessWidget {
  const ProgressBelajarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.home_outlined, color: Color(0xFF6B7280)),
          onPressed: () {},
        ),
        title: const Row(
          children: [
            Icon(Icons.chevron_right, color: Color(0xFF6B7280), size: 16),
            SizedBox(width: 4),
            Text(
              'Progress',
              style: TextStyle(
                color: Color(0xFF6B7280),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Fazrie Riesky Saputra',
                  style: TextStyle(
                    color: Color(0xFF111827),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'PPLG XII-4',
                  style: TextStyle(color: Color(0xFF6B7280), fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          PopupMenuButton<String>(
            padding: EdgeInsets.zero,
            onSelected: (value) {
              switch (value) {
                case 'profile':
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ProfileSettingsPage(),
                    ),
                  );
                  break;
                case 'settings':
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const AccountSettingsPage(),
                    ),
                  );
                  break;
                case 'witness':
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const PermintaanSaksiPage(),
                    ),
                  );
                  break;
                case 'logout':
                  // TODO: handle logout
                  break;
                case 'jurnal':
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const JournalPage()),
                  );
                  break;
                default:
                  break;
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'dashboard',
                child: ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Text('Dashboard'),
                ),
              ),
              PopupMenuItem(
                value: 'profile',
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profil'),
                ),
              ),
              PopupMenuItem(
                value: 'explore',
                child: ListTile(
                  leading: const Icon(Icons.explore),
                  title: const Text('Jelajahi'),
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 'jurnal',
                child: ListTile(
                  leading: const Icon(Icons.menu_book),
                  title: const Text('Jurnal Pembiasaan'),
                ),
              ),
              PopupMenuItem(
                value: 'witness',
                child: ListTile(
                  leading: const Icon(Icons.person_search),
                  title: const Text('Permintaan Saksi'),
                ),
              ),
              PopupMenuItem(
                value: 'progress',
                child: ListTile(
                  leading: const Icon(Icons.bar_chart),
                  title: const Text('Progress'),
                ),
              ),
              PopupMenuItem(
                value: 'catatan',
                child: ListTile(
                  leading: const Icon(Icons.report_gmailerrorred),
                  title: const Text('Catatan Sikap'),
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 'panduan',
                child: ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text('Panduan Penggunaan'),
                ),
              ),
              PopupMenuItem(
                value: 'settings',
                child: ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Pengaturan Akun'),
                ),
              ),
              PopupMenuItem(
                value: 'logout',
                child: ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Log Out'),
                ),
              ),
            ],
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                color: Color(0xFFE6E9EE),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: const Icon(Icons.person, color: Colors.white, size: 18),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Progress Belajar',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF111827),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Pantau perkembangan kompetensi dan materi pembelajaran Anda',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF6B7280),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDBEAFE),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'Tuesday, 11 November 2025',
                          style: TextStyle(
                            color: Color(0xFF1D4ED8),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Progress Belajar',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF111827),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Pantau perkembangan kompetensi dan materi pembelajaran Anda',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6B7280),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),

            const SizedBox(height: 24),

            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 800) {
                  return Row(
                    children: const [
                      Expanded(
                        child: _StatCard(
                          title: 'Total Pengajuan',
                          value: '1',
                          subtitle: 'Semua status',
                          color: Colors.blue,
                          icon: Icons.check_circle_outline,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _StatCard(
                          title: 'Halaman Ini',
                          value: '0',
                          subtitle: 'Data ditampilkan',
                          color: Colors.green,
                          icon: Icons.description_outlined,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _StatCard(
                          title: 'Status Pending',
                          value: '0',
                          subtitle: 'Perlu validasi',
                          color: Colors.orange,
                          icon: Icons.access_time,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _StatCard(
                          title: 'Total Halaman',
                          value: '1',
                          subtitle: 'Navigasi tersedia',
                          color: Colors.purple,
                          icon: Icons.public,
                        ),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: const [
                      _StatCard(
                        title: 'Total Pengajuan',
                        value: '1',
                        subtitle: 'Semua status',
                        color: Colors.blue,
                        icon: Icons.check_circle_outline,
                      ),
                      SizedBox(height: 12),
                      _StatCard(
                        title: 'Halaman Ini',
                        value: '0',
                        subtitle: 'Data ditampilkan',
                        color: Colors.green,
                        icon: Icons.description_outlined,
                      ),
                    ],
                  );
                }
              },
            ),

            const SizedBox(height: 24),

            // Sections: use ExpansionTile based card
            _SectionCard(
              title: 'Project Work',
              subtitle: 'Kompetensi dan materi pembelajaran',
              headers: const [
                'KOMPETENSI',
                'GURU',
                'TANGGAL',
                'STATUS',
                'CATATAN GURU',
                'CATATAN SISWA',
              ],
              data: const [],
            ),

            const SizedBox(height: 16),

            _SectionCard(
              title: 'Mobile Apps',
              subtitle: 'Kompetensi dan materi pembelajaran',
              headers: const [
                'KOMPETENSI',
                'GURU',
                'TANGGAL',
                'STATUS',
                'CATATAN GURU',
                'CATATAN SISWA',
              ],
              data: const [
                [
                  'Flutter : Slicing',
                  'M. Alfin Mulya Putra',
                  '28 Okt 2025',
                  'Approved',
                  'Tidak ada catatan',
                  'Tidak ada catatan',
                ],
              ],
            ),

            const SizedBox(height: 16),

            _SectionCard(
              title: 'UKK (Uji Kompetensi Keahlian)',
              subtitle: 'Kompetensi dan materi pembelajaran',
              headers: const [
                'KOMPETENSI',
                'GURU',
                'TANGGAL',
                'STATUS',
                'CATATAN GURU',
                'CATATAN SISWA',
              ],
              data: const [],
            ),

            const SizedBox(height: 16),

            _SectionCard(
              title: 'GIM',
              subtitle: 'Kompetensi dan materi pembelajaran',
              headers: const [
                'KOMPETENSI',
                'GURU',
                'TANGGAL',
                'STATUS',
                'CATATAN GURU',
                'CATATAN SISWA',
              ],
              data: const [],
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final Color color;
  final IconData icon;

  const _StatCard({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF0F1724),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color, size: 16),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  subtitle,
                  style: TextStyle(fontSize: 12, color: color.withOpacity(0.9)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Card with ExpansionTile that shows only first 4 columns in list and a "Detail" button
class _SectionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<String> headers;
  final List<List<String>> data;

  const _SectionCard({
    required this.title,
    required this.subtitle,
    required this.headers,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 1,
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        collapsedIconColor: const Color(0xFF6B7280),
        iconColor: const Color(0xFF6B7280),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF111827),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280)),
            ),
          ],
        ),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        children: [
          // Header row (responsive using Expanded)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Color(0xFFE5E7EB))),
            ),
            child: Row(
              children: List.generate(
                4,
                (i) => Expanded(
                  flex: i == 0 ? 3 : 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      headers.length > i ? headers[i].toUpperCase() : '',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF374151),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),

          // Data rows
          if (data.isEmpty)
            const Padding(
              padding: EdgeInsets.all(24),
              child: Center(
                child: Text(
                  'Tidak ada data',
                  style: TextStyle(color: Color(0xFF9CA3AF), fontSize: 12),
                ),
              ),
            )
          else
            ...data.map((row) {
              final kompetensi = row.length > 0 ? row[0] : '';
              final guru = row.length > 1 ? row[1] : '';
              final tanggal = row.length > 2 ? row[2] : '';
              final status = row.length > 3 ? row[3] : '';

              return Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 4,
                ),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Color(0xFFEFEFF0))),
                ),
                child: Row(
                  children: [
                    // Kompetensi (more space)
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Text(
                          kompetensi,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF111827),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    // Guru
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 220),
                          child: Text(
                            guru,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF1D4ED8),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),

                    // Tanggal
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.calendar_today,
                              size: 14,
                              color: Color(0xFF6B7280),
                            ),
                            const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                tanggal,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF1D4ED8),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Status + Detail stacked vertically (prevents overflow)
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // status chip
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: status.toLowerCase().contains('approved')
                                    ? const Color(0xFFDCFCE7)
                                    : const Color(0xFFFEEBC8),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                status,
                                style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      status.toLowerCase().contains('approved')
                                      ? const Color(0xFF16A34A)
                                      : const Color(0xFF92400E),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),

                            const SizedBox(height: 8),

                            // detail button placed under status
                            SizedBox(
                              height: 34,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  minimumSize: const Size(0, 0),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => DetailPage(data: row),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Detail',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
        ],
      ),
    );
  }
}

/// Simple detail page to show full row content
class DetailPage extends StatelessWidget {
  final List<String> data;
  const DetailPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final labels = [
      'Kompetensi',
      'Guru',
      'Tanggal',
      'Status',
      'Catatan Guru',
      'Catatan Siswa',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Data'),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF0F1724),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            data.length,
            (i) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      labels.length > i ? labels[i] : 'Field ${i + 1}',
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(child: Text(data[i])),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
