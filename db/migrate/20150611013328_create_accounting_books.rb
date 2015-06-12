class CreateAccountingBooks < ActiveRecord::Migration
  def change
    create_table :accounting_books do |t|
      t.date :consume_date
      t.text :description
      t.float :cost
      t.integer :main_class_id
      t.integer :subclass_id
      t.integer :third_class_id
      t.integer :consume_way_id
      t.text :note

      t.timestamps null: false
    end
  end
end


