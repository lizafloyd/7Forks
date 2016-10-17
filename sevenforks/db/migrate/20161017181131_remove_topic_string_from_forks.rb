class RemoveTopicStringFromForks < ActiveRecord::Migration[5.0]
  def change
    remove_column :forks, :topic
  end
end
