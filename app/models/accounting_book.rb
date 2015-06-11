class AccountingBook < ActiveRecord::Base
	validates_presence_of :consume_date

end
