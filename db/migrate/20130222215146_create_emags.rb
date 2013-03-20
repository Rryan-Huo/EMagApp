class CreateEmags < ActiveRecord::Migration
  def change
    create_table :emags do |t|
      t.string :author
      t.string :title
      t.string :content
      t.string :comment

      t.timestamps
    end
  end
end
