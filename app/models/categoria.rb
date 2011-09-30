class Categoria < ActiveRecord::Base
  has_many :titulos
  
  validates_presence_of :nombre
  validates_uniqueness_of :nombre

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
