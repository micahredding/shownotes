class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :list
      t.text :description
      t.text :links

      t.timestamps
    end
    add_index :items, :list_id
  end
end
