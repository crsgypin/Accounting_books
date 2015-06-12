class CreateSubclasses < ActiveRecord::Migration
  def change
    create_table :subclasses do |t|
      t.string :name
      t.integer :main_class_id

      t.timestamps null: false
    end
  end
end
