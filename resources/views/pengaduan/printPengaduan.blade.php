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
                <th>TANGGAL</th>
                <th>PELAPOR</th>
                <th>ISI LAPORAN</th>
                <th>IDENTITAS</th>
                <th>STATUS</th>
            </tr>
                @foreach ($pengaduan as $aduan)
            <tr>
                <td>{{ date('d F Y', strtotime($aduan->created_at)) }}</td>
                @canany(['petugas', 'admin'])
                    <td>@if ($aduan->masyarakat)
                            {{ $aduan->masyarakat->nama }}
                        @else
                            <p>-</p>
                        @endif
                    </td>
                @endcanany
            <td>{{ $aduan->isi_laporan}}</td>
                        <td>
                            @if ($aduan->identitas)
                            @else
                                Tidak ada identitas
                            @endif
                        </td>
                        <td class="px-4 py-4 text-center">
                        {{ $aduan->status == '0' ? 'menunggu' : $aduan->status }}</span>
                        </td>
                        </tr>
                        @endforeach
        </table>
<script>
    window.print();
</script>