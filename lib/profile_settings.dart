import 'package:flutter/material.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({Key? key}) : super(key: key);

  Widget _buildCover(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        image: const DecorationImage(
          image: NetworkImage('https://picsum.photos/1200/400'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Avatar (overlap with cover using negative translate)
          Transform.translate(
            offset: const Offset(0, -44),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xFFE6E9EE),
                child: Icon(Icons.person_outline, color: Colors.white, size: 36),
              ),
            ),
          ),

          const SizedBox(width: 16),

          // Name & meta
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 6), // to push text slightly up due to avatar translate
                Text(
                  "Fazrie Riesky Saputra",
                  style: textTheme.headlineSmall?.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF0F1724),
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  '12309652  |  PPLG XII-4  |  Cis 5',
                  style: TextStyle(fontSize: 12, color: Color(0xFF6B7280)),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),

          // Share button (aligned and translated so it stays on screen)
          Transform.translate(
            offset: const Offset(0, -20),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.share, size: 16),
              label: const Text('Bagikan'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 112, 129, 183),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                elevation: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabs(BuildContext context) {
    return const TabBar(
      labelColor: Color(0xFF1D4ED8),
      unselectedLabelColor: Color(0xFF6B7280),
      indicatorColor: Color(0xFF1D4ED8),
      tabs: [
        Tab(text: 'Overview'),
        Tab(text: 'Portfolio'),
        Tab(text: 'Sertifikat'),
      ],
    );
  }

  Widget _portfolioCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Expanded(child: Text('Portfolio Terbaru', style: TextStyle(fontWeight: FontWeight.w700))),
            SizedBox(width: 8),
            Text('Lihat Semua', style: TextStyle(color: Color(0xFF1D4ED8), fontSize: 12)),
          ],
        ),
        const SizedBox(height: 8),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 1,
          child: Container(
            padding: const EdgeInsets.all(12),
            height: 180,
            child: Row(
              children: [
                Container(
                  width: 28,
                  height: double.infinity,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(6)),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color(0xFFD8C6AA),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('startup Cafe,in', style: TextStyle(fontWeight: FontWeight.w600)),
                      SizedBox(height: 4),
                      Text('menjual cofee', style: TextStyle(color: Color(0xFF6B7280), fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _certificatesColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Expanded(child: Text('Sertifikat Terbaru', style: TextStyle(fontWeight: FontWeight.w700))),
            SizedBox(width: 8),
            Text('Lihat Semua', style: TextStyle(color: Color(0xFF1D4ED8), fontSize: 12)),
          ],
        ),
        const SizedBox(height: 8),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 1,
          child: Container(
            padding: const EdgeInsets.all(12),
            height: 120,
            child: Row(
              children: [
                Container(width: 8, margin: const EdgeInsets.only(right: 12), color: Colors.transparent),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black12)),
                        child: const Center(child: Text('Certificate')),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Dicoding Belajar Dasar AI', style: TextStyle(fontWeight: FontWeight.w600)),
                            SizedBox(height: 6),
                            Text('Lihat Detail', style: TextStyle(color: Color(0xFF1D4ED8), fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOverview(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: LayoutBuilder(builder: (context, constraints) {
        final isWide = constraints.maxWidth > 900;
        return isWide
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 3, child: _portfolioCard()),
                  const SizedBox(width: 16),
                  Expanded(flex: 1, child: _certificatesColumn()),
                ],
              )
            : Column(
                children: [
                  _portfolioCard(),
                  const SizedBox(height: 12),
                  _certificatesColumn(),
                ],
              );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F8FB),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xFF6B7280)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Explore', style: textTheme.bodySmall?.copyWith(color: const Color(0xFF6B7280))),
              Text('12309652', style: textTheme.titleMedium?.copyWith(color: const Color(0xFF0F1724), fontWeight: FontWeight.w700)),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Fazrie Riesky Saputra', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                  Text('PPLG XII-4', style: TextStyle(fontSize: 10, color: Color(0xFF9CA3AF))),
                ],
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () {
                // navigator already exists in main.dart to ProfileSettingsPage
              },
              child: const CircleAvatar(radius: 16, backgroundColor: Color(0xFFE6E9EE), child: Icon(Icons.person_outline, color: Colors.white)),
            ),
            const SizedBox(width: 12),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // cover
              _buildCover(context),

              // header row (avatar, name, share) — placed after cover so overlap looks neat
              const SizedBox(height: 0),
              _buildHeaderRow(context),
              const SizedBox(height: 12),

              // tabs + content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    _buildTabs(context),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 520,
                      child: TabBarView(
                        children: [
                          _buildOverview(context),
                          Center(child: Text('Portfolio tab content', style: textTheme.bodyLarge)),
                          Center(child: Text('Sertifikat tab content', style: textTheme.bodyLarge)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}