require_relative 'ParkingLot'

#Creating instances of ParkingLot
lot1 = ParkingLot.new("ParkingLot_1")
lot2 = ParkingLot.new("ParkingLot_2")
lot3 = ParkingLot.new("ParkingLot_3")

#Creating instances of ParkingLevel
level11 = ParkingLevel.new("ParkingLevel_11", lot1)
level12 = ParkingLevel.new("ParkingLevel_12", lot1)
level13 = ParkingLevel.new("ParkingLevel_13", lot1)
level21 = ParkingLevel.new("ParkingLevel_21", lot2)
level31 = ParkingLevel.new("ParkingLevel_31", lot3)

#creating instances of ParkingSpace
space111 = ParkingSpace.new("ParkingSpace_111", level11)
space112 = ParkingSpace.new("ParkingSpace_112", level11)
space123 = ParkingSpace.new("ParkingSpace_123", level11)
space121 = ParkingSpace.new("ParkingSpace_121", level12)
space211 = ParkingSpace.new("ParkingSpace_211", level21)
space212 = ParkingSpace.new("ParkingSpace_212", level21)


puts lot1.parkinglevels
puts lot1.parkingspaces
puts level11.names_parkingspaces
puts lot1.names_parkinglevels
puts space212.parkinglot.name