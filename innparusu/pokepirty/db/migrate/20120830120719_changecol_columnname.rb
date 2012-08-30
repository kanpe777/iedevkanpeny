class ChangecolColumnname < ActiveRecord::Migration
  def up
    rename_column(:pokeparties,:skill6_6,:skill6_2)
  end

  def down
    rename_column(:pokeparty,:skill6_2,:skill6_6)
  end
end
