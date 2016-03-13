
class Prime
# big_number =600851475143
  def self.find_factors(big_number)
    factor_array = Array.new(0)
    x = big_number
    for factor in 2..(x/2)
      while x % factor == 0
        factor_array << factor
        x = x / factor
      end
      break if x == 1
    end

    if factor_array.length == 0
      puts "#{big_number.to_s} is a prime number"
    else
    puts "The largest prime factor of #{big_number} is #{factor_array[factor_array.length-1]}"
    end
  end
end

puts "Enter a number to evaluate primality"
big_number = gets.to_i
Prime.find_factors(big_number)

