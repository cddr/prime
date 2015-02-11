require "minitest/autorun"
require "MyPrimes"

describe "prime number generator" do
  it "generates the first prime number" do
    MyPrimes.first(1).must_equal [2]
  end
end
