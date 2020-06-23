class CreateEstablishments < ActiveRecord::Migration[6.0]
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.text :description
      t.string :category
      t.float :access_average
      t.float :service_average
      t.float :living_space
      t.integer :price

      t.timestamps
    end
  end
end
