class Titulo < ActiveRecord::Base
  belongs_to :editorial
  belongs_to :categoria

  validates_presence_of :codigo, :nombre, :abreviado
  validates_uniqueness_of :codigo, :nombre, :abreviado

  scope :disponible, where( :disponible => true )
  scope :nodisponible, where( :disponible => false )

  def self.buscar(buscar)
    if buscar
      where('nombre LIKE ?', "%#{buscar.upcase}%")
    else
      scoped
    end
  end

  def to_s
    nombre
  end

end
