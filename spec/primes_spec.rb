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
                                                 [ [nil, 2, 3, 5],
                                                   [2, 4, 6, 10],
                                                   [3, 6, 9, 15],
                                                   [5, 10, 15, 25] ]
  end

  it "prints a multiplication table" do
    out = StringIO.new
    table = [[nil, 2, 3],
             [2, 4, 6],
             [3, 6, 9]]
    MyPrimes.print_table(table, out)
    out.rewind
    out.read.must_equal <<-eos
 , 2, 3
2, 4, 6
3, 6, 9
eos
  end
end
