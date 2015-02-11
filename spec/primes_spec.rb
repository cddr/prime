require "minitest/autorun"
require "MyPrimes"

describe "prime number generator" do
  it "generates the first prime number" do
    MyPrimes.first(1).must_equal [2]
  end

  it "generates the first 10 prime numbers" do
    MyPrimes.first(10).must_equal [2,3,5,7,11,13,17,19,23,29]
  end

  it "computes a multiplication table" do
    MyPrimes.multiply_table(MyPrimes.first(3)).must_equal \
                                                 [[4, 6, 10],
                                                  [6, 9, 15],
                                                  [10, 15, 25]]
  end
end
