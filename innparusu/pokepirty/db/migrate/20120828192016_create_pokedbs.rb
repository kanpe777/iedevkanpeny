class CreatePokedbs < ActiveRecord::Migration
  def change
    create_table :pokedbs do |t|
      t.integer :number
      t.string :image_url
      t.string :name
      t.string :type1
      t.string :type2
      t.string :characteristic1
      t.string :characteristic2
      t.string :characteristic3
      t.integer :baseh
      t.integer :basea
      t.integer :baseb
      t.integer :basec
      t.integer :based
      t.integer :bases

      t.timestamps
    end
  end
end
