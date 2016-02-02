# tip_calc.rb
def percent(bill)
  puts "How much would you like to tip?"
  ten = bill * 0.10
  fifteen = bill * 0.15
  twenty = bill * 0.20
  puts "10% is $#{'%.2f' % ten}, 15% is $#{'%.2f' % fifteen}, 20% is $#{'%.2f' % twenty}"
  tipPercent = gets.to_f
  tipPercent = tipPercent * 0.01
end

def tipCalc (bill, tipAmount, people)
  tip = bill * tipAmount
  total = bill + tip
  my_share = total / people
    puts "The total is $#{'%.2f' % total}"
  puts "Your share of the bill is $#{'%.2f' % my_share}"
end

puts "What's the total bill?"
bill = gets.to_f
a = percent (bill)
puts "How many people are in your group?"
numPeople = gets.to_f
tipCalc(bill, a, numPeople)
