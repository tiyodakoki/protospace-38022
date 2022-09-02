class AddAccupationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :accupation, :text
  end
end
