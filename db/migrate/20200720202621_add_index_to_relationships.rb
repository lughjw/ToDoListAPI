class AddIndexToRelationships < ActiveRecord::Migration[6.0]
  def change
    add_index :relationships, [:child_id, :parent_id], unique: true
  end
end
