class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :entry

      t.timestamps
    end
    add_index :tags, :entry_id
  end
end
