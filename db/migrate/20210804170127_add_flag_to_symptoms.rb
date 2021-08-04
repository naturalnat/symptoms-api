class AddFlagToSymptoms < ActiveRecord::Migration[6.1]
  def change
    add_column :symptoms, :flag, :integer
  end
end
