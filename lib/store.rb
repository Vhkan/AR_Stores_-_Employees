#Store class (model Store) defined for DB table 'stores' interaction (provided by AR)
class Store < ActiveRecord::Base
  has_many :employees
  validates :store, presence: true
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_carry_apparel

  #Stores must carry at least one of the men's or women's apparel
  def must_carry_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "The store must carry at least one apparel, men's or women's.")
      end
    end
  end

  #Ask the user for a store name (store it in a variable)
  puts "Enter the store name: "
  store_name = gets.chomp

  #Attempt to create a store
  store = Store.create(name: store_name)
  if store.valid?
    puts "Store #{store_name} created successfully."
  else
    puts "Error creating the store is: #{store.error.full.messages}!"
  end



