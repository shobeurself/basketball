class PlayerForeignKey2 < ActiveRecord::Migration[5.0]
  def change
  	remove_column :players, :team_id
  	add_reference :players, :team, index: true, foreign_key: true
  end
end
