class AddNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false, default: ""
    #add_column :notes, :user_id, :integer
  end
end
