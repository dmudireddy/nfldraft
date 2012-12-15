class Addpickedtoplayer < ActiveRecord::Migration
  def up
    add_column :players,:picked,:boolean,:default => false
  end

  # def down
    # remove_column :players,:picked
  # end
end
