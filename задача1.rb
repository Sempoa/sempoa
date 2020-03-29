print "a = "
A = gets.to_f
print "b = "
B = gets.to_f
print "с = "
C = gets.to_f

if (A != 0)
  D = B*B - 4*A*C
  puts "D = #{D}"
  if (D == 0)
   puts "x = "+(-B/(2*A)).to_s
  else
   if (D > 0)
      puts "x1 = "+((-B-Math.sqrt(D))/(2*A)).to_s
      puts "x2 = "+((-B+Math.sqrt(D))/(2*A)).to_s
   else
      puts "Корней нет"
   end
  end
else
  puts "Уравнение не является квадратным. Введите ненулевое значение a"
end
