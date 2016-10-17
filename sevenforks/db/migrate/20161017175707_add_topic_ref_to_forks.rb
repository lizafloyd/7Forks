class AddTopicRefToForks < ActiveRecord::Migration[5.0]
  def change
    add_reference :forks, :topic, foreign_key: true
  end
end
