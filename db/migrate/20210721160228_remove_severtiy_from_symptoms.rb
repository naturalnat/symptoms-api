class RemoveSevertiyFromSymptoms < ActiveRecord::Migration[6.1]
  def change
    remove_column :symptoms, :severtiy, :string
  end
end
