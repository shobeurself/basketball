class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :state, limit: 2
      t.string :city, limit: 30

      t.timestamps
    end
  end
end
