class CreatePoems < ActiveRecord::Migration[5.0]
  def change
    create_table :poems do |t|
      t.string :title
      t.text :poem
      t.string :author
      t.timestamps
    end
  end
end
