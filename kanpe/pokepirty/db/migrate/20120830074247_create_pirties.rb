class CreatePirties < ActiveRecord::Migration
  def change
    create_table :pirties do |t|
      t.string :name
      t.integer :battlecount
      t.integer :victorycount
      t.string :battleform
      t.string :rule
      t.string :miracleshooter

      t.timestamps
    end
  end
end
