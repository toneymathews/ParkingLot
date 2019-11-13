require 'minitest/autorun'
require 'yaml'
require_relative 'ParkingLot'

class ParkingLotTest < MiniTest::Test
  def setup
    @testdata = Psych.load(File.read("testdata_ParkingLot.yml"))
    @parkinglot = ParkingLot.new(@testdata[0])
  end

  def test_parkinglevels
    assert @parkinglot.parkinglevels != nil
  end

  def test_parkingspaces
    assert @parkinglot.parkingspaces != nil
  end

  def test_names_parkinglevels
    assert @parkinglot.names_parkinglevels !=nil
  end

  def test_names_parkingspaces
    assert @parkinglot.names_parkingspaces != nil
  end

end

class ParkingLevelTest < MiniTest::Test
  def setup
    @testdata = Psych.load(File.read("testdata_ParkingLot.yml"))
    @parkinglot = ParkingLot.new(@testdata[1])
    @parkinglevel = ParkingLevel.new(@testdata[3], @parkinglot)
  end

  def test_parkingspaces
    assert @parkinglevel.parkingspaces != nil
  end

  def test_names_parkingspaces
    assert @parkinglevel.names_parkingspaces != nil
  end

end

class ParkingSpaceTest < MiniTest::Test
  def setup
    @testdata = Psych.load(File.read("testdata_ParkingLot.yml"))
    @parkinglot = ParkingLot.new(@testdata[1])
    @parkinglevel = ParkingLevel.new(@testdata[5], @parkinglot)
    @parkingspace = ParkingSpace.new(@testdata[11], @parkinglevel)
  end

  def test_parkinglot
    assert @parkingspace.parkinglot != nil
  end

end



