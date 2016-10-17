class RemoveTopicStringFromTools < ActiveRecord::Migration[5.0]
  def change
    remove_column :tools, :topic
  end
end
