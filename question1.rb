# question1.rb
class Multiples
  def self.sum_multiples(a, b, c)
    a = 3
    b = 5
    c = 1000 - 1
    ab = 15
    max_a = c / a
    max_b = c / b
    max_ab = c / ab

    answer = self.sum_series(a, max_a) + self.sum_series(b, max_b) - self.sum_series(ab, max_ab)
    puts "Answer from solution 1 is #{answer.to_i}"
  end

  def self.sum_series(a , max_a)
    return a * (0.5 * max_a * (max_a + 1))
  end
end

Multiples.sum_multiples
