class AddCompletedToVolunteerships < ActiveRecord::Migration
  def change
    add_column :volunteerships, :completed, :boolean, default: false
  end
end
