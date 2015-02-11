class MyPrimes
  def self.first(size)
    [2,3,5,7,11,13,17,19,23,29].first(size)
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
