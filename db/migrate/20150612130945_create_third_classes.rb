class CreateThirdClasses < ActiveRecord::Migration
  def change
    create_table :third_classes do |t|
      t.string :name
      t.integer :subclass_id

      t.timestamps null: false
    end
  end
end
