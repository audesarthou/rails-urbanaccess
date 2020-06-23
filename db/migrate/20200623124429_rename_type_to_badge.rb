class RenameTypeToBadge < ActiveRecord::Migration[6.0]
  def change
    rename_column :accessibilities, :type, :badge
  end
end
