class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,             null: false
      t.bigint :jan_code
      t.string :maker,            null: false
      t.string :shop,             null: false
      t.string :shop_name,        null: false
      t.string :shop_address
      t.text :Impression
      t.integer :category_id,        null: false
      t.references :user_id, type: :bigint, null: false

      t.timestamps
    end
  end
end
