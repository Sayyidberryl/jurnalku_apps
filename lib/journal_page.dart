import 'package:flutter/material.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({Key? key}) : super(key: key);

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  final List<List<String>> pekerjaanRows = [];
  final List<List<String>> materiRows = [];
  final List<List<String>> projectRows = [
    ['Flutter : Slicing', 'M. Alfin Mulya Putra', '28 Okt 2025', 'Approved']
  ];

  // sample calendar states: 0=empty,1=done,2=missing
  final Map<int, int> dayStatus = {
    1: 2,
    2: 2,
    3: 2,
    4: 2,
    5: 2,
    8: 2,
    9: 2,
    10: 0,
    11: 1,
    12: 0,
    15: 0,
    16: 0,
    17: 0,
    18: 0,
    19: 0,
    22: 0,
    23: 0,
    24: 0,
    25: 0,
    26: 0,
    29: 0,
    30: 0,
    31: 0
  };

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.home_outlined, color: Color(0xFF6B7280)),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
        title: const Text('Jurnal Pembiasaan',
            style: TextStyle(color: Color(0xFF0F1724), fontWeight: FontWeight.w700)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: PopupMenuButton<String>(
              itemBuilder: (_) => [
                const PopupMenuItem(value: 'profile', child: Text('Profil')),
                const PopupMenuItem(value: 'settings', child: Text('Pengaturan Akun')),
              ],
              child: const CircleAvatar(
                radius: 16,
                backgroundColor: Color(0xFFE6E9EE),
                child: Icon(Icons.person_outline, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DESEMBER - 2025',
                style: textTheme.labelLarge?.copyWith(color: const Color(0xFF6B7280))),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
              label: const Text('Bulan Sebelumnya'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 112, 129, 183)),
            ),
            const SizedBox(height: 22),

            // A. Pembiasaan harian
            _sectionCard(
              title: 'A. Pembiasaan harian',
              child: _buildCalendarGrid(context),
            ),

            const SizedBox(height: 20),

            // B. Pekerjaan yang dilakukan
            _sectionCard(
              title: 'B. Pekerjaan yang dilakukan',
              child: Column(
                children: [
                  _buildTable(
                    context,
                    headers: const ['Pekerjaan', 'Tgl', 'Saksi'],
                    rows: pekerjaanRows,
                    emptyText: 'Belum ada pekerjaan yang diinput.',
                    onDetail: (row) => _openDetail(row),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('+ Tambah Pekerjaan', style: TextStyle(color: Color(0xFF1D4ED8))),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // C. Materi yang dipelajari
            _sectionCard(
              title: 'C. Materi yang dipelajari',
              child: Column(
                children: [
                  _buildTable(
                    context,
                    headers: const ['Materi', 'Sts', 'Tgl'],
                    rows: materiRows,
                    emptyText: 'Belum ada materi yang diinput.',
                    onDetail: (row) => _openDetail(row),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('+ Tambah Materi', style: TextStyle(color: Color(0xFF1D4ED8))),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: const [
                      _LegendDot(color: Colors.green, text: 'A : Approved'),
                      SizedBox(width: 12),
                      _LegendDot(color: Colors.amber, text: 'P : Pending'),
                      SizedBox(width: 12),
                      _LegendDot(color: Colors.red, text: 'R : Revisi'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // D. Poin
            _sectionCard(
              title: 'D. Poin',
              child: _buildPointsTable(context),
            ),

            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }

  Widget _sectionCard({required String title, required Widget child}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.zero,
      elevation: 1,
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        collapsedIconColor: const Color(0xFF6B7280),
        iconColor: const Color(0xFF6B7280),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
        childrenPadding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        children: [child],
      ),
    );
  }

  Widget _buildCalendarGrid(BuildContext context) {
    // responsive tiles with subtle styling
    return LayoutBuilder(builder: (context, constraints) {
      final tileWidth = (constraints.maxWidth - 12 * 6) / 7; // 7 cols
      return Wrap(
        spacing: 12,
        runSpacing: 12,
        children: List.generate(31, (i) {
          final day = i + 1;
          final status = dayStatus[day] ?? 0;
          Color bg;
          Widget? mark;
          switch (status) {
            case 1:
              bg = const Color(0xFFE6F5EA);
              mark = const Icon(Icons.check_circle, color: Color(0xFF16A34A), size: 14);
              break;
            case 2:
              bg = const Color(0xFFFDF2F2);
              mark = const Icon(Icons.close, color: Color(0xFFEF4444), size: 14);
              break;
            default:
              bg = const Color(0xFFF3F4F6);
              mark = null;
          }

          return SizedBox(
            width: tileWidth.clamp(56, 80),
            child: Stack(
              children: [
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                    color: bg,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: const Color(0xFFE6E9EE)),
                  ),
                  alignment: Alignment.center,
                  child: Text(day.toString().padLeft(2, '0'),
                      style: const TextStyle(color: Color(0xFF0F1724), fontWeight: FontWeight.w600)),
                ),
                if (mark != null) Positioned(top: 6, right: 6, child: mark),
              ],
            ),
          );
        }),
      );
    });
  }

  Widget _buildTable(BuildContext context,
      {required List<String> headers,
      required List<List<String>> rows,
      required String emptyText,
      required void Function(List<String>) onDetail}) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: const Color(0xFFE5E7EB))),
      child: Column(
        children: [
          // header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFE5E7EB))), color: Color(0xFFF3F6F9)),
            child: Row(
              children: headers.map((h) => Expanded(child: Text(h, style: const TextStyle(fontWeight: FontWeight.w600)))).toList(),
            ),
          ),
          // body
          if (rows.isEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(child: Text(emptyText, style: const TextStyle(color: Color(0xFF6B7280)))),
                ],
              ),
            )
          else
            Column(
              children: rows.map((r) {
                final status = r.length > 2 ? r[2] : '';
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFEFEFF0)))),
                  child: Row(
                    children: [
                      Expanded(flex: 3, child: Text(r.length > 0 ? r[0] : '')),
                      Expanded(child: Text(r.length > 1 ? r[1] : '')),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // status chip
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                              decoration: BoxDecoration(
                                color: (r.length > 3 && r[3].toLowerCase().contains('approved')) ? const Color(0xFFDCFCE7) : const Color(0xFFFEEBC8),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                r.length > 3 ? r[3] : '',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: (r.length > 3 && r[3].toLowerCase().contains('approved')) ? const Color(0xFF16A34A) : const Color(0xFF92400E),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            // detail button under status
                            SizedBox(
                              height: 34,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  minimumSize: const Size(0, 0),
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () => onDetail(r),
                                child: const Text('Detail', style: TextStyle(fontSize: 12)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }

  Widget _buildPointsTable(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: const Color(0xFFE5E7EB))),
      child: Column(
        children: [
          // header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFE5E7EB))), color: Color(0xFFF3F6F9)),
            child: Row(
              children: const [
                Expanded(flex: 3, child: Text('Kategori Poin', style: TextStyle(fontWeight: FontWeight.w600))),
                Expanded(child: Text('M1', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600))),
                Expanded(child: Text('M2', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600))),
                Expanded(child: Text('M3', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600))),
                Expanded(child: Text('M4', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600))),
              ],
            ),
          ),
          // rows
          _pointsRow('(5) mengerjakan project/adanya update progress belajar', ['0', '0', '0', '0']),
          _pointsRow('(1 - 5) poin dari pertanyaan atau laporan pengetahuan materi', ['0', '0', '0', '0']),
          _pointsRow('Jumlah poin minggu ini', ['0', '0', '0', '0']),
          Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: const [
                Expanded(flex: 3, child: Text('Jumlah poin ceklist pembiasaan')),
                Expanded(child: Text('0', textAlign: TextAlign.center)),
                Expanded(child: SizedBox()),
                Expanded(child: SizedBox()),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0xFFE5E7EB)))),
            child: Row(
              children: const [
                Expanded(flex: 3, child: Text('Jumlah keseluruhan poin')),
                Expanded(child: Text('0', textAlign: TextAlign.center)),
                Expanded(child: SizedBox()),
                Expanded(child: SizedBox()),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _pointsRow(String label, List<String> values) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFEFEFF0)))),
      child: Row(
        children: [
          Expanded(flex: 3, child: Text(label)),
          ...values.map((v) => Expanded(child: Text(v, textAlign: TextAlign.center))).toList(),
        ],
      ),
    );
  }

  void _openDetail(List<String> row) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => JournalDetailPage(data: row)));
  }
}

/// Simple detail page used by table Detail buttons
class JournalDetailPage extends StatelessWidget {
  final List<String> data;
  const JournalDetailPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final labels = ['Judul', 'Pengajar', 'Tanggal', 'Status', 'Catatan'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF0F1724),
        elevation: 0,
        title: const Text('Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: List.generate(data.length, (i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 140, child: Text(labels.length > i ? labels[i] : 'Field ${i + 1}', style: const TextStyle(fontWeight: FontWeight.w700))),
                  const SizedBox(width: 12),
                  Expanded(child: Text(data[i])),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class _LegendDot extends StatelessWidget {
  final Color color;
  final String text;
  const _LegendDot({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle, size: 10, color: color),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}