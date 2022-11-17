class PaperPriceModel {
  String image;
  String title;
  String price;
  String date;

  PaperPriceModel(
      {required this.image,
      required this.title,
      required this.price,
      required this.date});
}

var paperPriceModelList = [
  PaperPriceModel(
      image:
          'https://images.unsplash.com/photo-1573812195421-50a396d17893?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmV3c3BhcGVyfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      title: 'Old News Paper',
      price: 'Rp. Rp. 8000/Kg',
      date: '11.27.2021'),
  PaperPriceModel(
      image:
          'https://images.unsplash.com/photo-1552767057-7574a2aa6dc7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlZCUyMGJvb2tzfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      title: 'Used Books',
      price: 'Rp. 8000/Kg',
      date: '11.27.2021'),
];
