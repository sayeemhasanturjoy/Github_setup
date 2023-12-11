class fruitsDiscount{
  String? fruitsName;
  String? Color;
  double? Price;



  displayFruitDetails(fruitsName , Color,Price){
    fruitsName=fruitsName;
    Color=Color;
    Price=Price;
    var fruits ={'Name': fruitsName, 'Color':Color ,'Price':Price};

    print (fruits );

  }

  applyPriceDiscount(fruitsName , Color,Price, discountPercentage){
    var fruits ={'Name': fruitsName, 'Color':Color ,'Price':Price ,'after Discount price' :discountPercentage};

    double  AfterDiscount=0;
    DiscountCalculation(fruits['Name'], fruits['Color'], fruits['Price'],fruits['after Discount price']  )  ;




  }

}
DiscountCalculation(name,color ,price,discountPercentage)
{
  double? AfterDiscount;
  AfterDiscount=price -( price*discountPercentage/100);

  var fruitAfterDiscount ={'Name': name, 'Color':color ,'Price': AfterDiscount };
  print (fruitAfterDiscount  );

}


void main(){


  var fruitObj = new fruitsDiscount( );
  print ( 'Original Fruit Details before Discount:');
  print ('----------------------------------------------');
  fruitObj.displayFruitDetails('Apple','Red',2.5);
  fruitObj.displayFruitDetails('Banana','Yellow',1.0);
  fruitObj.displayFruitDetails('Grapes','Purple',3.0);





  print ('Fruit Details After Applying 10% Discount:');

  print ('----------------------------------------------');

  fruitObj.applyPriceDiscount('Apple','Red',2.5,10);
  fruitObj.applyPriceDiscount('Banana','Yellow',1.0,10);
  fruitObj.applyPriceDiscount('Grapes','Purple',3.0,10);






}