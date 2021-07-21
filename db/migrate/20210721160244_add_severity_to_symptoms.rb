class AddSeverityToSymptoms < ActiveRecord::Migration[6.1]
  def change
    add_column :symptoms, :severity, :integer
  end
end
