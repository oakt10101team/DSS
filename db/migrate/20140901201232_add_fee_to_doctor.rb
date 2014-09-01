class AddFeeToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :fee, :float, default: 0.0
  end
end
