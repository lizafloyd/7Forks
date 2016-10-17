class AddTopicRefToTools < ActiveRecord::Migration[5.0]
  def change
    add_reference :tools, :topic, foreign_key: true
  end
end
