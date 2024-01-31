// Product
class Computer {
  final String cpu;
  final String memory;
  final String storage;

  Computer({required this.cpu, required this.memory, required this.storage});

  void display() {
    print('Computer: CPU=$cpu, Memory=$memory, Storage=$storage');
  }
}

// Builder Interface
abstract class ComputerBuilder {
  void buildCPU();
  void buildMemory();
  void buildStorage();
  Computer getResult();
}

// Concrete Builder
class StandardComputerBuilder implements ComputerBuilder {
  late String cpu;
  late String memory;
  late String storage;

  @override
  void buildCPU() {
    cpu = 'Standard CPU';
  }

  @override
  void buildMemory() {
    memory = '8 GB RAM';
  }

  @override
  void buildStorage() {
    storage = '256 GB SSD';
  }

  @override
  Computer getResult() {
    return Computer(cpu: cpu, memory: memory, storage: storage);
  }
}

// Director
class ComputerDirector {
  final ComputerBuilder builder;

  ComputerDirector(this.builder);

  void construct() {
    builder.buildCPU();
    builder.buildMemory();
    builder.buildStorage();
  }
}

/*
 // Using the Builder Pattern
  ComputerBuilder builder = StandardComputerBuilder();
  ComputerDirector director = ComputerDirector(builder);

  director.construct();
  Computer computer = builder.getResult();
  computer.display();
  
*/