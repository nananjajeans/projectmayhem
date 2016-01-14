class CreateOrion < ActiveRecord::Migration
  def change
    create_table :orion do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
