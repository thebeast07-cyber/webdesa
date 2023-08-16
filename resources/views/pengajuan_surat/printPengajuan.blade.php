<style>
        body{
            padding:0;
            margin:0;
            width:100%;
            align-items:flex;
        }
        h3{
            text-align:center;
        }
        table{
            width:100%;
        }
        table tr{
            text-align:center;
        }
        table th{
            font-size:11px;
        }
        table ,tr ,td ,th {
            border:1px solid black;
            border-collapse:collapse;
            padding:5px;
        }
    </style>
    <br>
        <h3>LAPORAN PENGADUAN  MASYARAKAT</h3><h3>DESA SEMERAK</h3><h3>TAHUN <?=date("Y")?></h3>
        <br>
        <table>
            <tr>
                <th>NO</th>
                <th>TANGGAL</th>
                <th>PENGAJU</th>
                <th>NOMOR TELEPON</th>
                <th>JENIS SURAT</th>
                <th>IDENTITAS</th>
                <th>STATUS</th>
            </tr>
                @foreach ($pengajuan_saya as $ajuan)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ date('d F Y', strtotime($ajuan->created_at)) }}</td>
                <td>{{ $ajuan->masyarakat->nama }}</td>
                <td>
                @canany(['petugas', 'admin'])
                    {{ $ajuan->masyarakat->telepon }}
                @endcanany
                </td>
                <td>{{ $ajuan->jenis_surat }}</td>
                <td> @if ($ajuan->identitas)
                            {{$ajuan->identitas}}
                        @else
                            Tidak ada identitas
                        @endif
                </td>
                <td>
                @if ($ajuan->status == 'Pending')
                    Pending
                @elseif ($ajuan->status == 'Diproses')
                    Sedang Diproses
                @elseif ($ajuan->status == 'Ditolak')
                    Ditolak
                @elseif($ajuan->status == 'Selesai')
                    Selesai
                @endif
                </td>
            </tr>
            @endforeach
        </table>
<script>
    window.print();
</script>