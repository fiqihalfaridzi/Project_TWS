class Manusia {
  //deklarasi atribut/properti
  String nama = ''; //atribut nama bertipe string dan nilai awal null

  //pembuatan konstruktor, nama konsturktor adalah nama class
  Manusia(nm){
    //nm a/ sebuah parameter yg dipergunakan untuk menampung data
    this.nama =nm; //atribut nama memiliki data dari parameter nm
  }
  //deklarasi method/fungsi/behavior bernama makan
  void makan() {
    print('$nama makan nasi ');
  }
}


//awal inheritance
class ManusiaMilenial extends Manusia {
  String email ='';
  String password ='';


  ManusiaMilenial(String email) : super(email);
  void info() {
    print('namaku : $nama, Email:$email');

  }
}// akhir inheritance

class Programmer extends ManusiaMilenial {
  Programmer(String email) : super(email);

  @override
  void info(){
    print('$email pemiliknya adalah $nama');
  }
}
class Dosen extends ManusiaMilenial {
  Dosen(String nama) : super(nama);
  @override
  void info(){
    print('$nama, telah memiliki Email= $email');
  }
}

