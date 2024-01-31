abstract class DisplayObserver{
  void update(double temp, double humid);
}

class TemperatureDisplay implements DisplayObserver{
  @override
  void update(double temp, double humid){
    print("Temperature Display: $temp °C.");
  }
}

class HumidityDisplay implements DisplayObserver{
  @override 
  void update(double temp, double humid){
    print('Humidity Display: $humid %');
  }
}

class WeatherNews {
  List<DisplayObserver> list = [];
  double temp = 0.0;
  double humid = 0.0;

  void subscribe(DisplayObserver item){
    list.add(item);
  }


  void updateWeather(double temp, double humid){
    this.temp = temp;
    this.humid = humid;
    print("***Currently: ***");
    notify();
  }

  void notify(){
    for(var i in list){
      i.update(temp, humid);
    }
  }
}

/*
  var temperatureDisplay = TemperatureDisplay();
  var humidityDisplay = HumidityDisplay();
 

  var station = WeatherNews();

  station.subscribe(temperatureDisplay);
  station.subscribe(humidityDisplay);


  station.updateWeather(37.5, 80);
 */