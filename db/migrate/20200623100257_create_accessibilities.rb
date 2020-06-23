class CreateAccessibilities < ActiveRecord::Migration[6.0]
  def change
    create_table :accessibilities do |t|
      t.string :type
      t.references :establishment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
