class CreateBaseGadgets < ActiveRecord::Migration[6.0]
  def change
    create_table :base_gadgets do |t|
      t.string :name
      t.string :icon_image
      t.string :content_type
      t.text :content

      t.timestamps
    end
  end
end
