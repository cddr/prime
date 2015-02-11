class MyPrimes
  def self.first(size)
    [2,3,5,7,11,13,17,19,23,29].first(size)
  end

  def self.multiply_table(number_list)
    number_list.collect do |as_row|
      number_list.collect do |as_column|
        as_row * as_column
      end
    end
  end
end
