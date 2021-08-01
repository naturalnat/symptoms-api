class Symptom < ApplicationRecord
    validates :title, presence: true
    validates :severity, presence: true
    validates :notes, presence: true
    
end
