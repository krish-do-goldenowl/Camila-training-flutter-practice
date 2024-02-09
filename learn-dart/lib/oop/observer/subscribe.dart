abstract class Observer{
  void update(String message);
}

/* 
  various scenerios 
  => Subject maintains list of subscribers + notify any of state changes
*/
class EmailObserver implements Observer{
  String email;

  EmailObserver(this.email);

  @override
  void update(String message){
    print("Sending email to $email: \n=> $message");
  }
}

class SMSObserver implements Observer{
  String phoneNumber;

  SMSObserver(this.phoneNumber);

  @override
  void update(String message){
    print("Sending SMS to $phoneNumber: \n $message");
  }
}

/* SUBJECT: 
    - maintain list of observer
    - changes in state
 */
class NewsAgency{
  List<Observer> list = [];

  void subscribe(Observer item){
    list.add(item);
  }

  void remove(Observer item){
    list.remove(item);
  }

  void notifySubscribers(String news){
    for (var observer in list) {
      observer.update(news);
      print("-------------------");
    }
  }
}
/**
  var emailSubscribers = EmailObserver("ngocchautrantp@gmail.com");
  var smsSubscribers = SMSObserver("0376325944");

  var news = NewsAgency();

  news.subscribe(emailSubscribers);
  news.subscribe(smsSubscribers);

  news.notifySubscribers("Today is 28Jan2024");
 */