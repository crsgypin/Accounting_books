# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MainClass.delete_all
MainClass.create(:id=>1, :name=>"伙食")
MainClass.create(:id=>2, :name=>"居住")
MainClass.create(:id=>3, :name=>"交通")
MainClass.create(:id=>4, :name=>"生活")

Subclass.delete_all
Subclass.create(:id=>1, :name=>"正餐",:main_class_id=>1)
Subclass.create(:id=>2, :name=>"零食",:main_class_id=>1)
Subclass.create(:id=>3, :name=>"飲料",:main_class_id=>1)
Subclass.create(:id=>4, :name=>"水果",:main_class_id=>1)
Subclass.create(:id=>5, :name=>"房租",:main_class_id=>2)
Subclass.create(:id=>6, :name=>"管理費",:main_class_id=>2)
Subclass.create(:id=>7, :name=>"油錢",:main_class_id=>3)
Subclass.create(:id=>8, :name=>"公車",:main_class_id=>3)
Subclass.create(:id=>9, :name=>"悠遊卡",:main_class_id=>3)
Subclass.create(:id=>10, :name=>"衣服",:main_class_id=>4)
Subclass.create(:id=>11, :name=>"娛樂",:main_class_id=>4)

ThirdClass.delete_all
ThirdClass.create(:name=>"早餐",:subclass_id=>1)
ThirdClass.create(:name=>"中餐",:subclass_id=>1)
ThirdClass.create(:name=>"晚餐",:subclass_id=>1)

ConsumeWay.delete_all
ConsumeWay.create(:name=>"現金")
ConsumeWay.create(:name=>"信用卡")

