class Products {
    int id;
    String name;
    String price;
    String qty;

    Products({this.id, this.name, this.price, this.qty});

    toJsonEncodable(){
      Map<String,dynamic> m = Map();
      m['id'] = id;
      m['name'] = name;
      m['price'] = price;
      m['qty'] = qty;
      
      return m;
    }

}

class ProductList {
  List<Products> prodItems;
  ProductList(){
    prodItems = List(); 
    }

    toJsonEncodable(){
      return prodItems.map((item){
        return item.toJsonEncodable();
        }).toList();
    }

    toList(List data){
      prodItems = List<Products>.from(
        (data as List).map((item) => Products(
          id : item['id'],
          name : item['name'],
          price : item['price'],
          qty : item['qty']
        ))
      );
    } 

}