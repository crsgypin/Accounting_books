class AccountingBook < ActiveRecord::Base
	validates_presence_of :consume_date
	validates_presence_of :description
	validates_presence_of :main_class_id
	validates_presence_of :subclass_id
	validates_presence_of :consume_way_id

end
