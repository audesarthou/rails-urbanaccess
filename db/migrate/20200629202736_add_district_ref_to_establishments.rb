class AddDistrictRefToEstablishments < ActiveRecord::Migration[6.0]
  def change
    add_reference :establishments, :district, null: true, foreign_key: true
  end
end
