class AddCreatorIndex < ActiveRecord::Migration
  def change
    add_index :surveys, :creator_id, name: 'creator_id_index'
  end
end
