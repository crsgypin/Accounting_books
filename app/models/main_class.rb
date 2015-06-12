class MainClass < ActiveRecord::Base
	has_many :subclasses
	has_many :accounting_books
end
