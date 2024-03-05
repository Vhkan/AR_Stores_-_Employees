#Store class (model Store) defined for DB table 'stores' interaction (provided by AR)
class Store < ActiveRecord::Base
  has_many :employees
end
