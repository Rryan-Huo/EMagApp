class FixColumnName < ActiveRecord::Migration
  def up
  	rename_column :emags, :comment, :description
  end

  def down
  end
end
