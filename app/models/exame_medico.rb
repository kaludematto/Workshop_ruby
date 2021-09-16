class ExameMedico < ApplicationRecord
  belongs_to :laboratorio
  
  validates :nome, :presence => true
  validates :tipo, :presence => true
  validates :status,:presence => true

end
