class CreateSkilldbs < ActiveRecord::Migration
  def change
    create_table :skilldbs do |t|
      t.integer :id
      t.string :skillname
      t.string :skilltype
      t.integer :skillpower
      t.integer :skillhit
      t.integer :skillpp
      t.string :skillkind
      t.string :skillscope
      t.text :skilleffect

      t.timestamps
    end
  end
end
