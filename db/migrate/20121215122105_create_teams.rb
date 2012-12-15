class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams {:id => false }do |t|
      t.string :teamname
      t.string :division

      t.timestamps
    end
   add_index :events, :id, :unique => true
  end
end
