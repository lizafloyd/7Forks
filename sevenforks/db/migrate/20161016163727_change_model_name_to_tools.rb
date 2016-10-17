class ChangeModelNameToTools < ActiveRecord::Migration[5.0]
  def change
    rename_table :resources, :tools
  end
end
