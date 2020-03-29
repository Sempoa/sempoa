cart = {}
sum = 0
loop do
  print "Название товара (напишите stop по окончанию покупок): "
  item = gets.chomp
  break if item == "stop"
  print "Цена за единицу товара в рублях: "
  cost = gets.to_f
  print "Количество: "
  amount = gets.to_f
  cart[item] = { cost: cost, amount: amount, item_sum: cost * amount }
end
puts "Ваши покупки: "
cart.each  do |item_name, prop|
  puts "#{item_name}, price: #{prop[:cost]}, total: #{prop[:item_sum]}"
  sum += prop[:item_sum]
end

puts "Итог: ₽#{sum} "
