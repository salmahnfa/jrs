<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_user',
        'id_retribusi',
        'id_kategori',
        'bulan',
        'tahun',
        'jenis_transaksi',
        'jumlah'
    ];

    public function retribusi()
    {
        return $this->belongsTo(Retribusi::class, 'id_retribusi');
    }

    public function kategori()
    {
        return $this->belongsTo(Kategori::class, 'id_kategori');
    }
}
