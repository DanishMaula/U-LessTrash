class SellerModelHistory {
  String image;
  String title;
  String price;
  String date;

  SellerModelHistory(
      {required this.image,
      required this.title,
      required this.price,
      required this.date});
}

var sellerHistoryList = [
  SellerModelHistory(
    image: 'https://images.unsplash.com/photo-1552767057-7574a2aa6dc7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlZCUyMGJvb2tzfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
     title: 'Used Books',
      price: 'Rp. 8000/Kg',
       date: '11.27.21'
       ),
      SellerModelHistory(
    image: 'https://images.unsplash.com/photo-1568124925946-0054739daaba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHVzZWQlMjBkb2N1bWVudHN8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
     title: 'Used Documents',
      price: 'Rp. 8000/Kg',
       date: '11.27.21'
       ),
       SellerModelHistory(
    image: 'https://images.unsplash.com/photo-1568124925946-0054739daaba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHVzZWQlMjBkb2N1bWVudHN8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
     title: 'Leather Jacket',
      price: 'Rp. 8000.000',
       date: '11.27.21'
       ),
];
