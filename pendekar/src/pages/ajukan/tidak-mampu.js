import { useRouter } from 'next/router';

export default function TidakMampuForm() {
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
          <h1 className="text-xl font-bold">📝 Surat Keterangan tidak Mampu</h1>
          <button className="bg-green-600 text-white px-6 py-2 rounded hover:bg-green-700">
            Kirim
          </button>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {/* Data Diri */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Data Diri</h2>
            <p className="text-xs text-gray-500 mb-4">Informasi data diri penduduk yang bersangkutan</p>
            <div className="grid grid-cols-2 gap-4 mb-2">
              <input type="text" placeholder="NIK" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="No. KK" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Nama" className="col-span-2 border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Agama" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Jenis Kelamin" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Tempat Lahir" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Tanggal Lahir" className="border px-3 py-2 rounded" defaultValue="" />
            </div>
          </div>

          {/* Alamat */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Alamat</h2>
            <p className="text-xs text-gray-500 mb-4">Informasi alamat penduduk yang bersangkutan</p>
            <div className="grid grid-cols-2 gap-4 mb-2">
              <input type="text" placeholder="Alamat" className="col-span-2 border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="RT" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="RW" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Desa" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Kecamatan" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Kab/Kota" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Provinsi" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Kewarganegaraan" className="border px-3 py-2 rounded" defaultValue="" />
            </div>
          </div>

          {/* Pendidikan dan Pekerjaan */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Pendidikan dan Pekerjaan</h2>
            <p className="text-xs text-gray-500 mb-4">Informasi pendidikan dan pekerjaan</p>
            <div className="grid grid-cols-2 gap-4 mb-2">
              <input type="text" placeholder="Pendidikan Terakhir" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Pendidikan Ditempuh" className="border px-3 py-2 rounded" defaultValue="" />
              <input type="text" placeholder="Pekerjaan" className="col-span-2 border px-3 py-2 rounded" defaultValue="" />
            </div>
          </div>

          {/* Keperluan */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Keperluan</h2>
            <p className="text-xs text-gray-500 mb-4">Untuk keperluan apa?</p>
            <textarea className="w-full border px-3 py-2 rounded mb-2" rows={3} placeholder="Silahkan tulis keperluan" />
            <textarea className="w-full border px-3 py-2 rounded" rows={3} placeholder="Silahkan tulis keperluan" />
          </div>
        </div>
      </main>
    </div>
  );
}
