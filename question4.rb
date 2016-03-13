class Prime
  def self.get_factors(big_number)
  factor_hash = Hash.new(0)
  x = big_number
    for factor in 2..(x/2)
      while x % factor == 0
        factor_hash["#{factor}"] += 1
        x = x / factor
      end
      break if x == 1
    end

    if factor_hash.length == 0
      factor_hash["#{big_number}"] = 1
    end
    return factor_hash
  end

  def self.find_smallest_multiple(number)
    master_hash = Hash.new(0)
    for i in 1..number
      num_hash = Prime.get_factors(i)
      num_hash.each do |k,v|
        if v > master_hash[k]
          master_hash[k] = v
        end
      end
    end

    answer = 1
    master_hash.each do |k,v|
      answer *= k.to_i ** v
    end
    puts "The smallest positive number that is evenly divisible by all of the numbers from 1 to #{number} is #{answer}"
  end
end

puts "Enter a number of numbers to evaluate"
input = gets.to_i
Prime.find_smallest_multiple(input)