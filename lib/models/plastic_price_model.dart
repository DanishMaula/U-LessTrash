class PlasticPriceModel {
  String image;
  String title;
  String price;
  String date;

  PlasticPriceModel(
      {required this.image,
      required this.title,
      required this.price,
      required this.date});
}

var plasticPriceModelList = [
   PlasticPriceModel(
      image:
          'https://images.unsplash.com/photo-1570339012089-0e2dcfbb4439?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJvdHRsZXN8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      title: 'Used Bottles',
      price: 'Rp. Rp. 8000/Kg',
      date: '11.18.2021'
      ),
  PlasticPriceModel(
      image:
          'https://images.unsplash.com/photo-1637251393438-30eca8828253?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGxhc3RpYyUyMGJhZ3N8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      title: 'Used Plastic Bags',
      price: 'Rp. 8000/Kg',
      date: '11.18.2021'),
       PlasticPriceModel(
      image:
          'https://images.unsplash.com/photo-1550399105-c4db5fb85c18?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Ym9va3N8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      title: 'Used Books',
      price: 'Rp. 8000/Kg',
      date: '11.18.2021'),
 

];
