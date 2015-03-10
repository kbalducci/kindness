class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :title, null: false
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :acts, :users
  end
end
