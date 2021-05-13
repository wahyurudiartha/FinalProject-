class Pelanggan {
  String id;
  String nama;
  String nohp;
  String alamat;

  Pelanggan({
    this.id,
    this.nama,
    this.nohp,
    this.alamat,
  });

  factory Pelanggan.fromMap(Map<String, dynamic> map) => Pelanggan(
        id: map['id'],
        nama: map['nama'],
        nohp: map['nohp'],
        alamat: map['alamat'],
      );

  Map<String, dynamic> toMap() => {
        'id': this.id,
        'nama': this.nama,
        'nohp': this.nohp,
        'alamat': this.alamat,
      };
}
