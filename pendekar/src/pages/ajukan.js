import Link from 'next/link';

const suratList = [
  { nama: 'Surat Keterangan Tidak Mampu', slug: 'tidak-mampu' },
  { nama: 'Surat Keterangan Kelahiran', slug: 'kelahiran' },
  { nama: 'Surat Keterangan Usaha', slug: 'usaha' },
  { nama: 'Surat Keterangan Beda Nama', slug: 'beda-nama' },
  { nama: 'Surat Keterangan Kematian', slug: 'kematian' },
  { nama: 'Surat Izin Keramaian', slug: 'keramaian' },
];

export default function AjukanPermohonan() {
  return (
    <div className="flex h-screen bg-gray-50">
      {/* Sidebar */}
      <aside className="w-60 bg-white border-r p-4">
        <div className="text-green-700 font-bold text-xl mb-8">🛡️ Pendekar</div>
        <nav className="space-y-2">
          <Link href="/dashboard">
            <span className="block px-4 py-2 text-gray-700 hover:bg-gray-100 rounded">Dashboard</span>
          </Link>
          <Link href="/permohonan">
            <span className="block px-4 py-2 text-gray-700 hover:bg-gray-100 rounded">Permohonan Saya</span>
          </Link>
          <Link href="/ajukan">
            <span className="block px-4 py-2 bg-green-100 text-green-700 rounded font-semibold">
              Ajukan Permohonan
            </span>
          </Link>
        </nav>
      </aside>

      {/* Main Content */}
      <main className="flex-1 p-6 overflow-auto">
        <h1 className="text-xl font-semibold mb-6">Ajukan Permohonan Surat Baru</h1>

        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
          {suratList.map((surat) => (
            <Link key={surat.slug} href={`/ajukan/${surat.slug}`}>
              <div className="bg-white border rounded-lg p-6 text-center hover:shadow cursor-pointer transition">
                <div className="text-4xl mb-2">📩</div>
                <h2 className="font-semibold text-sm mb-1">{surat.nama}</h2>
                <p className="text-green-600 text-sm font-medium">Ajukan Surat</p>
              </div>
            </Link>
          ))}
        </div>
      </main>
    </div>
  );
}
