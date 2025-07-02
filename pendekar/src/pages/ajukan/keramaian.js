import { useRouter } from 'next/router';

export default function IzinKeramaianForm() {
  const router = useRouter();

  return (
    <div className="flex min-h-screen bg-gray-50">
      {/* Sidebar */}
      <aside className="w-64 bg-white border-r p-6">
        <div className="text-green-600 font-bold text-lg mb-8 flex items-center gap-2">
          🛡️ Pendekar
        </div>
        <nav className="space-y-2">
          <button onClick={() => router.back()} className="block px-4 py-2 text-gray-700 hover:bg-gray-100 rounded">
            ← Kembali
          </button>
        </nav>
      </aside>

      {/* Form Content */}
      <main className="flex-1 p-6 overflow-auto">
        <div className="flex justify-between items-center mb-6">
          <h1 className="text-xl font-bold">📝 Surat Izin Keramaian</h1>
          <button className="bg-green-600 text-white px-6 py-2 rounded hover:bg-green-700">
            Kirim
          </button>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {/* Data Penyelenggara */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Data Penyelenggara</h2>
            <p className="text-xs text-gray-500 mb-4">Informasi pribadi penyelenggara kegiatan</p>
            <div className="grid grid-cols-2 gap-4 mb-2">
              <input type="text" placeholder="NIK Penyelenggara" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="No. KK" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Nama Penyelenggara" className="col-span-2 border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Tempat Lahir" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Tanggal Lahir" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Pekerjaan" className="col-span-2 border px-3 py-2 rounded" defaultValue="" />
            </div>
          </div>

          {/* Lokasi & Waktu */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Lokasi & Waktu Acara</h2>
            <p className="text-xs text-gray-500 mb-4">Informasi tempat dan waktu kegiatan</p>
            <div className="grid grid-cols-2 gap-4 mb-2">
              <input type="text" placeholder="Alamat Acara" className="col-span-2 border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Tanggal Kegiatan" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Waktu Mulai" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Waktu Selesai" className="border px-3 py-2 rounded" defaultValue="" />
            </div>
          </div>

          {/* Jenis Kegiatan */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Jenis Acara</h2>
            <p className="text-xs text-gray-500 mb-4">Informasi mengenai jenis kegiatan</p>
            <div className="grid grid-cols-1 gap-4 mb-2">
              <input type="text" placeholder="Jenis Acara" className="border px-3 py-2 rounded" defaultValue="" />
              <textarea className="w-full border px-3 py-2 rounded" rows={3} placeholder="Deskripsi Acara"></textarea>
            </div>
          </div>

          {/* Keperluan */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Keperluan</h2>
            <p className="text-xs text-gray-500 mb-4">Untuk keperluan pengajuan izin</p>
            <textarea className="w-full border px-3 py-2 rounded mb-2" rows={3} placeholder="Contoh: Permohonan izin dari desa dan kepolisian" />
            <textarea className="w-full border px-3 py-2 rounded" rows={3} placeholder="Tulis tambahan keterangan jika ada" />
          </div>
        </div>
      </main>
    </div>
  );
}
