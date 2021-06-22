class Stok {
  String id;
  String namabarang;
  String stok;

  Stok({
    this.id,
    this.namabarang,
    this.stok,
  });

  factory Stok.fromMap(Map<String, dynamic> map) => Stok(
        id: map['id'],
        namabarang: map['namabarang'],
        stok: map['stok'],
      );

  Map<String, dynamic> toMap() => {
        'id': this.id,
        'namabarang': this.namabarang,
        'stok': this.stok,
      };
}
