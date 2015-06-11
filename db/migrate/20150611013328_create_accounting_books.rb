class CreateAccountingBooks < ActiveRecord::Migration
  def change
    create_table :accounting_books do |t|
      t.date :consume_date
      t.text :description
      t.integer :type1
      t.integer :type2

      t.timestamps null: false
    end
  end
end


