class AddBooleanFlagToSymptoms < ActiveRecord::Migration[6.1]
  def change
    add_column :symptoms, :flag, :boolean, default: false
  end
end
