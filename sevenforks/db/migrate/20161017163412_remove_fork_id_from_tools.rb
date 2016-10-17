class RemoveForkIdFromTools < ActiveRecord::Migration[5.0]
  def change
    remove_column :tools, :fork_id
  end
end
