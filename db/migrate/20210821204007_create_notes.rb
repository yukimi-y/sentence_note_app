class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title, null: false
      t.string :image
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
