class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :services, :date, :date, :null => true
  end
end
