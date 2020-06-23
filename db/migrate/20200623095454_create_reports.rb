class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :content
      t.string :location
      t.string :progress
      t.integer :count
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
