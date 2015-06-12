class Subclass < ActiveRecord::Base
	belongs_to :main_class
	has_many :third_classes
	has_many :account_books

end
