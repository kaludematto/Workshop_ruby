class Laboratorio < ApplicationRecord
    has_many :exame_medico, dependent: :destroy
    
    validates :nome, :presence => true
    validates :endereco, :presence => true
    validates :status,:presence => true


end
