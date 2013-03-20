class CreateEmags < ActiveRecord::Migration
  def change
    create_table :emags do |t|
      t.string :author
      t.string :title
      t.string :content
      t.string :description

      t.timestamps
    end
  end
end
