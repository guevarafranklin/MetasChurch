class Unidad < ApplicationRecord
  has_many :bautismos_converso
  validates :nombre_unidad, presence: true
end
