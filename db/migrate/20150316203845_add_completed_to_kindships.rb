class AddCompletedToKindships < ActiveRecord::Migration
  def change
    add_column :kindships, :completed, :boolean, default: false
  end
end
