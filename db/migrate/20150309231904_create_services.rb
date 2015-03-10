class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.datetime :date, null: false
      t.string :zipcode, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.text :requirement
      t.references :organization, index: true

      t.timestamps null: false
    end
    add_foreign_key :services, :organizations
  end
end
