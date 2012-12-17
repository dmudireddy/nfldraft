class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :round
      t.integer :pick
      t.string :team
      t.integer :team_id

      t.timestamps
    end
  end
end
