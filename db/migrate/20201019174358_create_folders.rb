class CreateFolders < ActiveRecord::Migration[6.0]
  def change
    create_table :folders do |t|
      t.string :icon_image
      t.string :name
      t.string :content_type

      t.timestamps
    end
  end
end
