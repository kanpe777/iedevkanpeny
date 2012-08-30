class CreateStructures < ActiveRecord::Migration
  def change
    create_table :structures do |t|
      t.integer :pirty_id
      t.integer :poke_id
      t.string :characteristic
      t.string :belonging
      t.string :skill1
      t.string :skill2
      t.string :skill3
      t.string :skill4
      t.integer :efforth
      t.integer :efforta
      t.integer :effortb
      t.integer :effortc
      t.integer :effortd
      t.integer :efforts

      t.timestamps
    end
  end
end
