class ChangeDateTime < ActiveRecord::Migration
  def change
    change_column :services, :date, :date
  end
end
