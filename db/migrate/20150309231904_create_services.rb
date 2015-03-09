class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.datetime :date
      t.string :zipcode
      t.string :title
      t.text :description
      t.text :requirement
      t.references :organization, index: true

      t.timestamps null: false
    end
    add_foreign_key :services, :organizations
  end
end
