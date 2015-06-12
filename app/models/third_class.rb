class ThirdClass < ActiveRecord::Base
	belongs_to :subclass
	has_many :account_books
	
end
