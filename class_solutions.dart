void main() {
  
  var deckObject = Deck();
  
  var deck = deckObject.createDeck();
  
  print(deck.length);
  
  for (var i=0;i<deck.length;i++){
    
    print(deck[i].cardIdentity());
  }
  
    
}

class Card{
  
  String? house;
  int? number;
  String? color;
  
  Card({this.house,this.color,this.number});
  
  String cardIdentity(){
    return "$house $number $color";
  }
  
  
}

class Deck{
  
  var houses = ["Diamond", "Hearts", "Spade", "Club"];
  
  var numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13];
  
  var finalDeck = [];
  
  List createDeck(){
    
    for (var i=0; i< houses.length; i++){
      
      for (var j=0; j<numbers.length; j++){
        
        if (houses[i] == "Diamond" || houses[i] == "Hearts"){
          var card = Card(house: houses[i], color: "Red", number: numbers[j]);
          finalDeck.add(card);
       
        }
        
        if (houses[i] == "Spade" || houses[i] == "Club"){
          var card = Card(house: houses[i], color: "Black", number: numbers[j]);
          finalDeck.add(card);

        }
        
      }
      
      
    }
    
    return finalDeck;
  }
  
}
