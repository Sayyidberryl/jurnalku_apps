import 'package:flutter/material.dart';

class PermintaanSaksiPage extends StatefulWidget {
  const PermintaanSaksiPage({Key? key}) : super(key: key);

  @override
  State<PermintaanSaksiPage> createState() => _PermintaanSaksiPageState();
}

class _PermintaanSaksiPageState extends State<PermintaanSaksiPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF6B7280)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Permintaan Saksi',
          style: TextStyle(
            color: Color(0xFF0F1724),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Fazrie Riesky Saputra',
                style: TextStyle(
                  color: Color(0xFF0F1724),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'PPLG XII-4',
                style: TextStyle(
                  color: Color(0xFF9CA3AF),
                  fontSize: 10,
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Color(0xFFE6E9EE),
            child: Icon(Icons.person_outline, color: Colors.white, size: 18),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Permintaan Saksi',
              style: textTheme.displaySmall?.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF0F1724),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Kelola permintaan menjadi saksi dari siswa lain',
              style: textTheme.bodyLarge?.copyWith(
                color: const Color(0xFF6B7280),
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFEFF4FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Wednesday, 26 November 2025',
                style: TextStyle(color: Color(0xFF2F6BFF), fontSize: 13),
              ),
            ),
            const SizedBox(height: 28),
            _buildPermintaanTable(context),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildPermintaanTable(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Color(0x0A000000), blurRadius: 8, offset: Offset(0, 4))
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 18, 12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Daftar Permintaan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0F1724),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Permintaan saksi dari siswa lain',
                        style: TextStyle(
                          color: Color(0xFF6B7280),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          // Header Table
          Container(
            color: const Color(0xFFF3F5F7),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'PENGIRIM',
                    style: const TextStyle(
                      color: Color(0xFF9CA3AF),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'TANGGAL',
                    style: const TextStyle(
                      color: Color(0xFF9CA3AF),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'KONFIRMASI',
                    style: const TextStyle(
                      color: Color(0xFF9CA3AF),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Empty State
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              children: [
                Icon(
                  Icons.people_outline,
                  size: 64,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Belum ada permintaan',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF0F1724),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Belum ada yang mengirim permintaan saksi kepada Anda',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}