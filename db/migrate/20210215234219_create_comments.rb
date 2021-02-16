class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
