class CreateGadgets < ActiveRecord::Migration[6.0]
  def change
    create_table :gadgets do |t|
      t.integer :user_id
      t.string :name
      t.string :icon_image
      t.string :content_type
      t.text :content

      t.timestamps
    end
  end
end
