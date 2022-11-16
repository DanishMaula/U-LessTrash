class MyStockModel {
  String image;
  String title;
  String price;
  String date;
  String pengguna;
  String alamat;
  String timeAdded;

  MyStockModel({
    required this.image,
    required this.title,
    required this.price,
    required this.date,
    required this.pengguna,
    required this.alamat,
    required this.timeAdded,
  });
}

var myStockList = [
  MyStockModel(
      image:
          'https://images.unsplash.com/photo-1660866838858-3fa5195ae176?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGdyZWVuJTIwamFja2V0fGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      title: 'Sweater OMG Green',
      price: 'Rp. 300.000',
      date: 'Added 11.27.21',
      pengguna: 'Raeihan Alvaro',
      alamat: 'Tangerang, Indonesia',
      timeAdded: '4 Menit Yang Lalu'),
  MyStockModel(
      image:
          'https://4.bp.blogspot.com/-KkrEXV4ZyQI/XHioOaMI_UI/AAAAAAAAEik/4F7lHwyE6H88iTnqpZk7pU-GsFYR4U9AgCK4BGAYYCw/s1600/kerajinan%2Bdari%2Bbotol%2Bbekas.jpg',
      title: 'Used Bottles',
      price: 'Rp. 8.00/Kg',
      date: 'Added 11.18.21',
      pengguna: 'Raeihan Alvaro',
      alamat: 'Tangerang, Indonesia',
      timeAdded: '5 Menit Yang Lalu'),
  MyStockModel(
      image:
          'https://images.unsplash.com/photo-1551107696-a4b0c5a0d9a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGluayUyMHNob2VzfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      title: 'Nikah Shoes Pink',
      price: 'Rp. 175.000',
      date: 'Added 11.07.21',
      pengguna: 'Raeihan Alvaro',
      alamat: 'Tangerang, Indonesia',
      timeAdded: '4 Menit Yang Lalu'),
];
