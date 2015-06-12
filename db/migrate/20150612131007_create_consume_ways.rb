class CreateConsumeWays < ActiveRecord::Migration
  def change
    create_table :consume_ways do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
