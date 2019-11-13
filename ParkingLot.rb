class ParkingLot
  attr_accessor :name 
  @@all = []

  def initialize(name) #initialize instance of parking lot with a name
    @name = name
    @@all << self
  end

  def self.all  #Parking lot instance know about all other instances
    @@all
  end

  def parkinglevels  #returns an array of parking levels for an instance of parking lot
    ParkingLevel.all.select{ |parkinglevel| parkinglevel.parkinglot == self }
  end

  def parkingspaces  #returns an array of parking spaces in a parking lot
    self.parkinglevels.map{ |parkinglevel| parkinglevel.parkingspaces }
  end

  def names_parkinglevels #returns an array names of parking levels in a parking lot
    self.parkinglevels.map{ |parkinglevel| parkinglevel.name }
  end
  
  def names_parkingspaces  #returns an array names of parking spaces in a parking lot
    self.parkingspaces.flatten.map{ |parkingspace| parkingspace.name }
  end
end

class ParkingLevel
  attr_accessor :name, :parkinglot
  @@all = []

  def initialize(name, parkinglot)   #initialize an instance of parking level with name and parking lot
    @name = name
    @parkinglot = parkinglot
    @@all << self
  end

  def self.all  #parking level instance knows about all other instances
    @@all
  end
    
  def parkingspaces   #retuns an array of parking spaces associated with a parking level
    ParkingSpace.all.select{ |parkingspace| parkingspace.parkinglevel == self}
  end

  def names_parkingspaces #retuns an array of parking space names in a parking level
    self.parkingspaces.map{ |parkingspace| parkingspace.name}
  end
end

class ParkingSpace
  attr_accessor :name, :parkinglevel
  @@all = []

  def initialize(name, parkinglevel) #initialize an instance of parking space with its name and the parking level it's located in
    @name = name
    @parkinglevel = parkinglevel
    @@all << self
  end
    
  def self.all #parkingspace instance knows about all other instances
    @@all
  end

  def parkinglot #returns the name of the parking lot to which the parking space is located in
    self.parkinglevel.parkinglot
  end
end






