class CreateFarts < ActiveRecord::Migration
  def change
    create_table :farts do |t|

      t.timestamps
    end
  end
end
