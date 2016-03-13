max_number=999*777
min_number=100*100

catch :endloop do
  for palindrome in max_number.downto(min_number)
    if palindrome.to_s.reverse.to_i == palindrome
      for factor in 999.downto(100)
        if (palindrome % factor == 0) and (palindrome/factor).to_s.length == 3
          puts "The largest palindrome is #{palindrome}, and its 3-digit factors are #{factor} and #{palindrome/factor}"
          throw :endloop
        end
      end
    end
  end
end

