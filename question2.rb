# question2.rb
class Fibonacci

  def self.even_sum(number)
    x1 = 1
    x2 = 2
    sum = x2
    while x2 < number
      new_x2 = x1 + x2
      break if new_x2 > number
      x1 = x2
      x2 = new_x2
      if x2 % 2 == 0
          sum += x2
      end
    end
    puts "The sum of even Fibonacci numbers up to #{number} is #{sum}."
  end
end

puts "Enter max value"
number = gets.to_i
Fibonacci.even_sum(number)