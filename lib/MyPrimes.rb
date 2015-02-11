require 'rubygems'
require 'bundler/setup'

class Numeric
  # This makes the definition of prime? below a little more
  # user-friendly. I don't make a habit of adding definitions
  # to core classes but in this case it seems to make sense
  def positive?
    self > 0
  end
end

class Fixnum
  # I didn't use a proper sieve of eratosthenes because the
  # problem stated that I should consider cases where we want
  # "N" primes and a sieve only finds primes upto "N". I did
  # find a paper describing an algorithm that produces a lazy
  # sieve but implementing that seemed like overkill. Happy to
  # spend a little more time and implement that if that's what
  # you were expecting to see.
  #
  # http://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf
  def prime?
    (2..Math.sqrt(self + 1)).all? do |maybe|
      (self % maybe).positive?
    end
  end
end

class MyPrimes

  def self.first(size)
    (2..Float::INFINITY).lazy.select {|n| n.prime?}.first(size)
  end

  def self.multiply_table(number_list)
    table = number_list.collect do |as_row|
      row = number_list.collect do |as_column|
        as_row * as_column
      end
      [as_row] + row
    end

    [ [nil] + number_list ] + table
  end

  def self.print_table(table, out=STDOUT)
    table.each do |row|
      out.puts row.map {|v| v.nil? ? ' ': v}.join(", ")
    end
  end
end

primes = MyPrimes.first(10)
table = MyPrimes.multiply_table(primes)
MyPrimes.print_table(table)
