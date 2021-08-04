class RemoveFlagFromSymptoms < ActiveRecord::Migration[6.1]
  def change
    remove_column :symptoms, :flag, :integer
  end
end
