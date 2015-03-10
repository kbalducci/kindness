class CreateVolunteerships < ActiveRecord::Migration
  def change
    create_table :volunteerships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :service, index: true

      t.timestamps null: false
    end
    add_foreign_key :volunteerships, :users
    add_foreign_key :volunteerships, :services
  end
end
