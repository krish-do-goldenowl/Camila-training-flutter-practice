abstract class Transport{
  void planDeliver();
}

class Truck implements Transport{
  @override
  void planDeliver(){
    print("Truck delivering...");
  }
}

class Boat implements Transport{
  @override 
  void planDeliver(){
    print("Boat delivering...");
  }
}

abstract class TransportCreator {
  Transport createTransport();
}

class TruckCreator implements TransportCreator{
  @override
  Transport createTransport(){
    return Truck();
  }
}

class BoatCreator implements TransportCreator{
  @override
  Transport createTransport(){
    return Boat();
  }
}

/*
  TransportCreator boatCreator = BoatCreator();
  Transport boat = boatCreator.createTransport();
  boat.planDeliver();
 */