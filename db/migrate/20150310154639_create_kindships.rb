class CreateKindships < ActiveRecord::Migration
  def change
    create_table :kindships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :act, index: true

      t.timestamps null: false
    end
    add_foreign_key :kindships, :users
    add_foreign_key :kindships, :acts
  end
end
