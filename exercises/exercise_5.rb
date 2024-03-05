require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
total_stores_revenue = Store.sum(:annual_revenue) 
puts total_stores_revenue  

# On the next line, also output the average annual revenue for all stores.
avg_stores_revenue = Store.average(:annual_revenue)
puts avg_stores_revenue

# Output the number of stores that are generating $1M or more in annual sales. 
#Hint: Chain together where and size (or count) Active Record methods.
one_mill_sales_stores = Store.where('annual_revenue > ?', 1000000).count
puts one_mill_sales_stores