class AddProcedureIdToDoctor < ActiveRecord::Migration
  def change
  	add_column :doctors, :procedure_id, :integer
  end
end
