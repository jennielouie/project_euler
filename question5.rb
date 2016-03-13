# require /palindrome_checker.rb
class PalindromeChecker

  def self.factor_largest_palindrome_in_range(min_number=100*100, max_number=999*999)
    catch :endloop do
      for palindrome in max_number.downto(min_number)
        if self.is_palindrome?(palindrome)
        # if palindrome.to_s.reverse.to_i == palindrome
        self.get_factors(palindrome)
        end
      end
    end
  end

  def self.is_palindrome?(number)
    arr = self.num_to_chars(number)
    max_index = (arr.length) - 1
    (0..max_index/2).each { |i| arr[i], arr[max_index-i] = arr[max_index-i], arr[i] }
    reverse = arr.join.to_i
    number == reverse
  end

  def self.get_factors(palindrome, minnum=100, maxnum=999)
    for factor in maxnum.downto(minnum)
      if (palindrome % factor == 0) and (palindrome/factor).to_s.length == 3
         puts "The largest palindrome is #{palindrome}, and its 3-digit factors are #{factor} and #{palindrome/factor}"
        throw :endloop
      end
    end
  end

  def self.num_to_chars(num)
    num.to_s.chars
  end

end

describe PalindromeChecker do
  describe '.num_to_chars' do

    it 'returns ["1", "2"] for 12' do
      expect(described_class.num_to_chars(12)).to eq(["1", "2"])
    end
    it 'returns ["1", "2", "3"] for 123' do
      expect(described_class.num_to_chars(123)).to eq(["1", "2", "3"])
    end
  end
end
