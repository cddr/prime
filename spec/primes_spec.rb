require "minitest/autorun"
require "MyPrimes"

describe "prime number generator" do
  it "generates the first prime number" do
    MyPrimes.first(1).must_equal [2]
  end

  it "generates the first 10 prime numbers" do
    MyPrimes.first(10).must_equal [2,3,5,7,11,13,17,19,23,29]
  end
end
