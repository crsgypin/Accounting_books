class AccountingBook < ActiveRecord::Base
	validates_presence_of :consume_date
	validates_presence_of :description
	validates_presence_of :main_class_id
	validates_presence_of :subclass_id
	validates_presence_of :consume_way_id

	belongs_to :main_class
	belongs_to :subclass
	belongs_to :third_class
	belongs_to :consume_way

	delegate :name, :to=>:main_class, :prefix=>true, :allow_nil=>true
	delegate :name, :to=>:subclass, :prefix=>true, :allow_nil=>true
	delegate :name, :to=>:third_class, :prefix=>true, :allow_nil=>true
	delegate :name, :to=>:consume_way, :prefix=>true, :allow_nil=>true

end
