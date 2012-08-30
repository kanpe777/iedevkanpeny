class CreateSkilldbs < ActiveRecord::Migration
  def change
    create_table :skilldbs do |t|
      t.integer :number
      t.string  :name
      t.integer :power
      t.integer :hit
      t.text    :effect
      t.timestamps
    end
  end
end
