import Link from 'next/link';
import { useRouter } from 'next/router';

const suratList = [
  { nama: 'Surat Keterangan Tidak Mampu', slug: 'tidak-mampu' },
  { nama: 'Surat Keterangan Kelahiran', slug: 'kelahiran' },
  { nama: 'Surat Keterangan Usaha', slug: 'usaha' },
  { nama: 'Surat Keterangan Beda Nama', slug: 'beda-nama' },
  { nama: 'Surat Keterangan Kematian', slug: 'kematian' },
  { nama: 'Surat Izin Keramaian', slug: 'keramaian' },
];

export default function AjukanPermohonan() {
  const router = useRouter();
  const currentPath = router.pathname;

  const isActive = (path) => currentPath === path;

  return (
    <div className="flex h-screen bg-gray-50">
      {/* Sidebar */}
      <aside className="w-64 bg-white border-r p-6">
        <div className="text-green-600 font-bold text-lg mb-8 flex items-center gap-2">
          🛡️ Pendekar
        </div>
        <nav className="space-y-2">
          <Link href="/dashboard">
            <span className={`block px-4 py-2 rounded ${isActive('/dashboard') ? 'bg-green-600 text-white' : 'hover:bg-gray-100 text-gray-800'}`}>
              Dashboard
            </span>
          </Link>
          <Link href="/permohonan">
            <span className={`block px-4 py-2 rounded ${isActive('/permohonan') ? 'bg-green-600 text-white' : 'hover:bg-gray-100 text-gray-800'}`}>
              Permohonan Saya
            </span>
          </Link>
          <Link href="/ajukan">
            <span className={`block px-4 py-2 rounded ${isActive('/ajukan') ? 'bg-green-600 text-white' : 'hover:bg-gray-100 text-gray-800'}`}>
              Ajukan Permohonan
            </span>
          </Link>
        </nav>
      </aside>

      {/* Main Content */}
      <main className="flex-1 p-6 overflow-auto">
        <h1 className="text-xl font-bold mb-6">Ajukan Permohonan Surat Baru</h1>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {suratList.map((surat) => (
            <Link key={surat.slug} href={`/ajukan/${surat.slug}`}>
              <div className="bg-white border rounded-lg p-6 text-center hover:shadow-md transition cursor-pointer">
                <div className="text-4xl mb-3 text-gray-500">✉️</div>
                <h2 className="font-semibold text-sm mb-1">{surat.nama}</h2>
                <p className="text-gray-600 text-sm">Ajukan Surat</p>
              </div>
            </Link>
          ))}
        </div>
      </main>
    </div>
  );
}
