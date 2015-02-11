require "minitest/autorun"
require "MyPrimes"

describe "prime number generator" do
  it "generates the first prime number" do
    MyPrimes.each(1).to_a.must_equal [2]
  end
end
