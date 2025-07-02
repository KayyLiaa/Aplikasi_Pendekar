import { useRouter } from 'next/router';

export default function KelahiranForm() {
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
          <h1 className="text-xl font-bold">📝 Surat Keterangan Kelahiran</h1>
          <button className="bg-green-600 text-white px-6 py-2 rounded hover:bg-green-700">
            Kirim
          </button>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {/* Data Diri */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Data Anak</h2>
            <p className="text-xs text-gray-500 mb-4">Informasi data anak yang lahir</p>
            <div className="grid grid-cols-2 gap-4 mb-2">
              <input type="text" placeholder="NIK Anak" className="border px-3 py-2 rounded" defaultValue="3204360000000100" />
              <input type="text" placeholder="No. KK" className="border px-3 py-2 rounded" defaultValue="3204360000000002" />
              <input type="text" placeholder="Nama Anak" className="col-span-2 border px-3 py-2 rounded" defaultValue="Bayu Pratama" />
              <input type="text" placeholder="Jenis Kelamin" className="border px-3 py-2 rounded" defaultValue="Laki-laki" />
              <input type="text" placeholder="Tempat Lahir" className="border px-3 py-2 rounded" defaultValue="Bandung" />
              <input type="text" placeholder="Tanggal Lahir" className="border px-3 py-2 rounded" defaultValue="3 Januari 2024" />
              <input type="text" placeholder="Agama" className="border px-3 py-2 rounded" defaultValue="Islam" />
              <input type="text" placeholder="Anak ke-" className="border px-3 py-2 rounded" defaultValue="2" />
            </div>
          </div>

          {/* Alamat */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Alamat</h2>
            <p className="text-xs text-gray-500 mb-4">Alamat tempat tinggal orang tua</p>
            <div className="grid grid-cols-2 gap-4 mb-2">
              <input type="text" placeholder="Alamat" className="col-span-2 border px-3 py-2 rounded" defaultValue="Kp. ABCD" />
              <input type="text" placeholder="RT" className="border px-3 py-2 rounded" defaultValue="002" />
              <input type="text" placeholder="RW" className="border px-3 py-2 rounded" defaultValue="001" />
              <input type="text" placeholder="Desa" className="border px-3 py-2 rounded" defaultValue="Karyalaksana" />
              <input type="text" placeholder="Kecamatan" className="border px-3 py-2 rounded" defaultValue="Ibun" />
              <input type="text" placeholder="Kab/Kota" className="border px-3 py-2 rounded" defaultValue="Kab. Bandung" />
              <input type="text" placeholder="Provinsi" className="border px-3 py-2 rounded" defaultValue="Jawa Barat" />
              <input type="text" placeholder="Kewarganegaraan" className="border px-3 py-2 rounded" defaultValue="WNI" />
            </div>
          </div>

          {/* Orang Tua */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Data Orang Tua</h2>
            <p className="text-xs text-gray-500 mb-4">Informasi ayah dan ibu kandung</p>
            <div className="grid grid-cols-2 gap-4 mb-2">
              <input type="text" placeholder="Nama Ayah" className="col-span-2 border px-3 py-2 rounded" defaultValue="Dedi Pratama" />
              <input type="text" placeholder="Nama Ibu" className="col-span-2 border px-3 py-2 rounded" defaultValue="Risma Muchini" />
            </div>
          </div>

          {/* Keperluan */}
          <div className="bg-white p-4 rounded shadow">
            <h2 className="font-semibold text-sm mb-2">Keperluan</h2>
            <p className="text-xs text-gray-500 mb-4">Untuk keperluan apa?</p>
            <textarea className="w-full border px-3 py-2 rounded mb-2" rows={3} placeholder="Contoh: Pengajuan akta kelahiran" />
            <textarea className="w-full border px-3 py-2 rounded" rows={3} placeholder="Tulis tambahan keterangan jika ada" />
          </div>
        </div>
      </main>
    </div>
  );
}
