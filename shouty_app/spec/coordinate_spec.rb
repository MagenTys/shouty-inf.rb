require 'coordinate'

describe Coordinate do
  it "calculates the distance from itself" do
    a = Coordinate.new(0, 0)
    expect(a.distance_from(a)).to eq(0)
  end

  it "calculates the distance from another coordinate along x axis" do
    a = Coordinate.new(0, 0)
    b = Coordinate.new(1000, 0)
    expect(a.distance_from(b)).to eq(1000)
  end

  it "calculates the distance from another coordinate along y axis" do
    a = Coordinate.new(0, 0)
    b = Coordinate.new(0, 1000)
    expect(a.distance_from(b)).to eq(1000)
  end

  it "calculates the distance from along both axes" do
    a = Coordinate.new(0, 0)
    b = Coordinate.new(3, 4)
    expect(a.distance_from(b)).to eq(5)
  end
end
