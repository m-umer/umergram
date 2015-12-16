class CreateUserAttachments < ActiveRecord::Migration
  def change
    create_table :user_attachments do |t|
      t.integer :user_id
      t.string :image

      t.timestamps null: false
    end
  end
end
