class AddTopicToTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :topic, :string
  end
end
