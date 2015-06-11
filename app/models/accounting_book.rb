class AccountingBook < ActiveRecord::Base
	validates_presence_of :consume_date
	validates_presence_of :description
	validates_presence_of :main_type_id
	validates_presence_of :sub_type_id
	validates_presence_of :consume_way_id

end
