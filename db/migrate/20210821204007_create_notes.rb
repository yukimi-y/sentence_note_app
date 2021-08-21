class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :image
      t.integer :user_id, foreign_key: true, null: false

      t.timestamps
    end
  end
end
