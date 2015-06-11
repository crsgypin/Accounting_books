class CreateAccountingBooks < ActiveRecord::Migration
  def change
    create_table :accounting_books do |t|
      t.date :consume_date
      t.text :description
      t.integer :main_type_id
      t.integer :sub_type_id
      t.integer :consume_way_id
      t.text :other_note

      t.timestamps null: false
    end
  end
end


