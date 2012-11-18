class AddLocationToFart < ActiveRecord::Migration
  def change
    add_column :farts, :location, :string
  end
end
